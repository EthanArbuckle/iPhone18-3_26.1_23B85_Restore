BOOL _NTKImageWriteToFile(CGImage *a1, NSString *a2)
{
  v3 = [NSURL fileURLWithPath:a2];
  v4 = [UTTypePNG identifier];
  v5 = CGImageDestinationCreateWithURL(v3, v4, 1uLL, 0);

  if (!v5)
  {
    return 0;
  }

  CGImageDestinationAddImage(v5, a1, 0);
  v6 = CGImageDestinationFinalize(v5);
  CFRelease(v5);
  return v6;
}

uint64_t _NTKRawWriteToFile(const void **a1, int a2, int a3, void *a4)
{
  v7 = a4;
  v8 = CGDataProviderCreateWithData(0, *a1, 4 * a2 * a3, 0);
  v9 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
  v10 = CGImageCreate(a2, a3, 8uLL, 0x20uLL, 4 * a2, v9, 0, v8, 0, 0, kCGRenderingIntentDefault);
  _NTKImageWriteToFile(v10, v7);
  CGImageRelease(v10);
  CGDataProviderRelease(v8);
  CGColorSpaceRelease(v9);

  return 1;
}

float sub_1E84(int a1, float32x4_t a2)
{
  a2.f32[0] = a1;
  a2.f32[1] = BYTE1(a1);
  a2.f32[2] = BYTE2(a1);
  v2 = vdivq_f32(a2, vdupq_n_s32(0x437F0000u));
  if (v2.f32[0] >= v2.f32[1])
  {
    v3 = v2.f32[0];
  }

  else
  {
    v3 = v2.f32[1];
  }

  if (v2.f32[0] >= v2.f32[1])
  {
    v4 = v2.f32[1];
  }

  else
  {
    v4 = v2.f32[0];
  }

  if (v3 >= v2.f32[2])
  {
    v5 = v3;
  }

  else
  {
    v5 = v2.f32[2];
  }

  if (v4 >= v2.f32[2])
  {
    v6 = v2.f32[2];
  }

  else
  {
    v6 = v4;
  }

  result = 0.0;
  if (v5 > v6)
  {
    v8 = v5 - v6;
    v9 = ((v2.f32[0] - v2.f32[1]) / (v5 - v6)) + 4.0;
    if (v2.f32[1] == v5)
    {
      v9 = ((v2.f32[2] - v2.f32[0]) / v8) + 2.0;
    }

    v10 = (v2.f32[1] - v2.f32[2]) / v8;
    v11 = 0.0;
    if (v2.f32[1] < v2.f32[2])
    {
      v11 = 6.0;
    }

    v12 = v11 + v10;
    if (v2.f32[0] != v5)
    {
      v12 = v9;
    }

    return v12 / 6.0;
  }

  return result;
}

float sub_1F5C(float a1, float a2, float a3)
{
  v3 = a3;
  v4 = a3;
  if (a2 >= 0.00001)
  {
    v6 = (a3 + a2) - (a3 * a2);
    v7 = a3 * (a2 + 1.0);
    if (a3 < 0.5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    v9 = -(v8 - (a3 * 2.0));
    v4 = sub_6338(v9, v8, a1 + 0.33333);
    v3 = sub_6338(v9, v8, a1);
    a3 = sub_6338(v9, v8, a1 + -0.33333);
  }

  v10 = 0.0;
  if (v3 >= a3)
  {
    v11 = a3;
  }

  else
  {
    v10 = -1.0;
    v11 = v3;
  }

  if (v3 >= a3)
  {
    a3 = v3;
  }

  if (v4 >= a3)
  {
    v12 = a3;
  }

  else
  {
    v10 = -0.33333 - v10;
    v12 = v4;
  }

  if (v4 >= a3)
  {
    a3 = v4;
  }

  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  return fabsf(v10 + ((v12 - v11) / (((a3 - v13) * 6.0) + 0.00001)));
}

void NTKKaleidoscopeAnalyzeInterestingness(void *a1, float *a2, int a3, int a4, int a5)
{
  v8 = a1;
  v60 = a2;
  bzero(a2, 4 * a4 * a3);
  v9 = [v8 width];
  v10 = [v8 height];
  v11 = v9 / a3;
  if (v9 / a3 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9 / a3;
  }

  if (v12 >= 16)
  {
    v13 = 16;
  }

  else
  {
    v13 = v12;
  }

  v74 = v13;
  v14 = v10 / a4;
  v67 = v10 / a4;
  if (v10 / a4 <= 1)
  {
    v14 = 1;
  }

  if (v14 >= 16)
  {
    v15 = 16;
  }

  else
  {
    v15 = v14;
  }

  v73 = v15;
  v58 = v8;
  v16 = (v73 * a4);
  v72 = v74 * a3;
  if ([v58 width] != v74 * a3 || (v17 = v58, objc_msgSend(v58, "height") != v16))
  {
    v17 = [v58 scaleToWidth:v72 height:v16];
  }

  v18 = [v17 contents];
  v57 = v17;
  v68 = v11;
  v19 = malloc_type_malloc(16 * v74 * v73, 0x1000040451B5BE8uLL);
  if (a4 - a5 > a5)
  {
    v69 = a3 - a5;
    v20 = vsub_s32(0x100000000, vdup_n_s32(v74));
    v21 = ((v73 - 2) * (v74 - 2));
    if (v12 >= 0x10)
    {
      v22 = 16;
    }

    else
    {
      v22 = v12;
    }

    v59 = a3;
    v64 = a5 * v74 + a5 * v74 * a3 * v73;
    v61 = a3 * v73 * v74;
    __asm { FMOV            V0.4S, #1.0 }

    v75 = HIDWORD(_Q0);
    v63 = a5;
    v66 = v22;
    v65 = vdupq_n_s32(0x3C23D70Au);
    do
    {
      if (v69 > a5)
      {
        v28 = a5;
        v29 = v64;
        do
        {
          v70 = v28;
          v30 = 0;
          v31 = 0;
          v71 = v29;
          do
          {
            v32 = v31;
            v33 = v73;
            v34 = v29;
            do
            {
              v35 = v18[v34];
              _CLKUIRGB2LAB();
              *&v37 = v36;
              *(&v37 + 1) = __PAIR64__(v75, v38);
              v31 = v32 + 1;
              v19[v32] = v37;
              ++v34;
              ++v32;
              --v33;
            }

            while (v33);
            ++v30;
            v29 += v72;
          }

          while (v30 != v74);
          v76 = ~v74;
          v77 = v20;
          v78 = 0x1FFFFFFFFLL;
          v39 = 0.0;
          v40 = 0.0;
          v79 = v74 - 1;
          v80 = v74;
          v41 = 0.0;
          v42 = 0.0;
          v81 = v74 + 1;
          if (v67 >= 3)
          {
            v43 = 1;
            v44 = v66;
            do
            {
              if (v68 >= 3)
              {
                v45 = 1;
                v46 = v44;
                do
                {
                  v47 = 0;
                  v48 = &v19[++v46];
                  v49 = 0;
                  v50 = 0;
                  v51 = 0;
                  do
                  {
                    v52 = qword_1B420[v47];
                    v53 = vmulq_f32(v48[*(&v76 + v47)], v65);
                    v51 = vmla_n_f32(v51, v52, v53.f32[0]);
                    v50 = vmla_lane_f32(v50, v52, *v53.f32, 1);
                    v49 = vmla_laneq_f32(v49, v52, v53, 2);
                    ++v47;
                  }

                  while (v47 != 8);
                  v42 = v42 + sqrtf(vaddv_f32(vmul_f32(v51, v51)));
                  v41 = v41 + sqrtf(vaddv_f32(vmul_f32(v50, v50)));
                  v40 = v40 + sqrtf(vaddv_f32(vmul_f32(v49, v49)));
                  v39 = v39 + (0.01 * COERCE_FLOAT(*v48));
                  ++v45;
                }

                while (v45 != v74 - 1);
              }

              v44 += v66;
            }

            while (v43++ != v73 - 2);
          }

          v54 = v39 / v21;
          v55 = (v39 / v21) <= 0.9;
          v56 = 1.0;
          if (v55)
          {
            if (v54 < 0.25)
            {
              v56 = v54 * 4.0;
            }
          }

          else
          {
            v56 = (1.0 - v54) * 10.0;
          }

          v60[v63 * v59 + v70] = (((v56 * 0.2) + (sqrtf(v42 / v21) * 0.2)) + (sqrtf(v41 / v21) * 0.3)) + (sqrtf(v40 / v21) * 0.3);
          v28 = v70 + 1;
          v29 = v71 + v74;
        }

        while (v69 != v70 + 1);
      }

      v64 += v61;
      ++v63;
    }

    while (a4 - a5 != v63);
  }

  free(v19);
}

id NTKGeneratePathFromInterestingness()
{
  v0 = __chkstk_darwin();
  v5 = v4;
  v6 = v0;
  v7 = v2 * v1;
  v400 = v1;
  v370 = v2;
  if (v7 < 1)
  {
    v410 = 0;
    v8 = 0;
  }

  else
  {
    v410 = malloc_type_malloc(v7, 0x100004077774924uLL);
    v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
    v1 = v400;
    v2 = v370;
  }

  v9 = v2 - v5;
  if (v2 - v5 > v5)
  {
    v15 = v1 - v5;
    v16 = v5;
    v17 = 4 * v1;
    v18 = (v6 + (v17 + 4) * v5);
    v12 = 0;
    v13 = 1.0;
    v19 = v5;
    v14 = 0.0;
    do
    {
      v20 = v18;
      v21 = v1 - 2 * v5;
      if (v15 > v5)
      {
        do
        {
          v22 = *v20++;
          v23 = v22;
          if (v13 >= v22)
          {
            v13 = v23;
          }

          if (v12.f32[0] < v23)
          {
            v12.f32[0] = v23;
          }

          v14 = v14 + v23;
          --v21;
        }

        while (v21);
      }

      ++v19;
      v18 = (v18 + v17);
    }

    while (v19 != v9);
    v419 = 0;
    v418 = 0;
    v420 = 0;
    v11 = v12.f32[0] - v13;
    v24 = 4 * v1;
    v25 = (v6 + (v24 + 4) * v5);
    do
    {
      v26 = v25;
      v27 = v1 - 2 * v5;
      if (v15 > v5)
      {
        do
        {
          v28 = *v26++;
          v29 = ((((v28 - v13) / v11) * 9.0) + 0.5);
          ++*(&v418 + v29);
          --v27;
        }

        while (v27);
      }

      ++v16;
      v25 = (v25 + v24);
    }

    while (v16 != v9);
    v10 = HIWORD(v420);
    v2 = v370;
  }

  else
  {
    v10 = 0;
    v419 = 0;
    v418 = 0;
    v11 = -1.0;
    v12 = 0;
    v13 = 1.0;
    v14 = 0.0;
    v420 = 0;
  }

  v30 = (v2 - 2 * v5) * (v1 - 2 * v5);
  v31 = v14 / v30;
  LODWORD(v32) = (((v31 - v13) / v11) * 9.0);
  if (v32 <= 7)
  {
    if (v32 <= 4)
    {
      v32 = 4;
    }

    else
    {
      v32 = v32;
    }

    for (i = 8; i > v32; --i)
    {
      v10 += *(&v418 + i);
    }
  }

  v34 = (v13 + v12.f32[0]) * 0.5;
  if (v31 >= v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = v31;
  }

  v36 = v1 - v5;
  if (v9 > v5)
  {
    v37 = 0;
    v38 = v5;
    v39 = 4 * v1;
    v40 = (v6 + (v39 + 4) * v5);
    do
    {
      v41 = v40;
      v42 = v1 - 2 * v5;
      if (v36 > v5)
      {
        do
        {
          v43 = *v41++;
          if (v43 > v35)
          {
            ++v37;
          }

          --v42;
        }

        while (v42);
      }

      ++v38;
      v40 = (v40 + v39);
    }

    while (v38 != v9);
  }

  else
  {
    v37 = 0;
  }

  LODWORD(v44) = v30 - 3;
  if (v10 >= v44)
  {
    v10 = v44;
  }

  if (v37 < v44)
  {
    LODWORD(v44) = v37;
  }

  if (v10 <= 3)
  {
    v10 = 3;
  }

  if (v44 <= 3)
  {
    v44 = 3;
  }

  else
  {
    v44 = v44;
  }

  v394 = (v44 + (v10 - 1) + 1) >> 1;
  if (v9 > v5)
  {
    v46 = v5;
    v47 = 4 * v1;
    v48 = (v6 + (v47 + 4) * v5);
    v45 = -1;
    v12.i32[0] = -1.0;
    do
    {
      if (v36 > v5)
      {
        v49 = v48;
        v50 = v5;
        v51 = v1 - 2 * v5;
        do
        {
          v52 = *v49++;
          v3.f32[0] = v52;
          v45 = vbsl_s8(vdup_lane_s32(vcgt_f32(v3, v12), 0), __PAIR64__(v46, v50), v45);
          if (v52 > v12.f32[0])
          {
            v12.f32[0] = v3.f32[0];
          }

          ++v50;
          --v51;
        }

        while (v51);
      }

      ++v46;
      v48 = (v48 + v47);
    }

    while (v46 != v9);
  }

  else
  {
    v45 = -1;
  }

  v406 = v45;
  v379 = v1;
  v53 = v45.i32[0] + v45.i32[1] * v1;
  v398 = v1 - v5;
  v399 = v9;
  bzero(v410, v7);
  v55 = v398;
  v54 = v399;
  v56 = 0;
  v410[v53] = 1;
  LODWORD(v57) = -1.0;
  v58 = -1;
  v59 = -1;
  do
  {
    v60 = vadd_s32(qword_1B460[v56], v406);
    v61 = v60.i32[0] >= v5 && v60.i32[1] < v399;
    if (v61 && v60.i32[1] >= v5 && v60.i32[0] < v398)
    {
      v64 = v60.i32[0] + v60.i32[1] * v400;
      if (*(v6 + 4 * v64) > *&v57)
      {
        LODWORD(v57) = *(v6 + 4 * v64);
        v59 = v56;
        v58 = v60.i32[0] + v60.i32[1] * v400;
      }
    }

    ++v56;
  }

  while (v56 != 8);
  v372 = v8;
  v65 = 0;
  v66 = v59 + 7;
  v67 = 1;
  v68 = -1.0;
  v69 = -1;
  v70 = v400;
  do
  {
    v71 = vadd_s32(qword_1B460[(v66 + v65) & 7], v406);
    v72 = v67;
    if (v71.i32[0] >= v5 && v71.i32[1] < v399 && v71.i32[1] >= v5 && v71.i32[0] < v398)
    {
      v76 = v71.i32[0] + v71.i32[1] * v400;
      if (*(v6 + 4 * v76) > v68)
      {
        v68 = *(v6 + 4 * v76);
        v69 = v71.i32[0] + v71.i32[1] * v400;
      }
    }

    v67 = 0;
    v65 = 2;
  }

  while ((v72 & 1) != 0);
  v391 = v7;
  v382 = v7;
  size = v6;
  v77 = 0;
  v78 = 0;
  ptr = 0;
  v79 = 0;
  v410[v58] = 1;
  v410[v69] = 1;
  v418 = __PAIR64__(v58, v53);
  LODWORD(v419) = v69;
  do
  {
    v80 = 0;
    v81 = *(&v418 + v79);
    v82 = v81 / v70;
    v83 = v81 % v70;
    do
    {
      v84 = *&qword_1B460[v80] + v83;
      v85 = HIDWORD(*&qword_1B460[v80]) + v82;
      if (v84 >= v5 && v85 >= v5 && v84 < v55 && v85 < v54)
      {
        v89 = v84 + v85 * v70;
        if (!v410[v89])
        {
          v90 = v89;
          if (*(size + 4 * v89) <= v35)
          {
            v92 = 3;
          }

          else
          {
            if (v78 >= v77)
            {
              v77 = 2 * v77 + 2;
              v91 = malloc_type_realloc(ptr, 2 * v77, 0x1000040BDFB0063uLL);
              v54 = v399;
              v70 = v400;
              v55 = v398;
            }

            else
            {
              v91 = ptr;
            }

            ptr = v91;
            v91[v78++] = v90;
            v92 = 2;
          }

          v410[v90] = v92;
        }
      }

      ++v80;
    }

    while (v80 != 8);
    ++v79;
  }

  while (v79 != 3);
  v93 = v5;
  v94 = v54;
  v95 = v55;
  v96 = v379;
  v97 = 3;
  v98 = v372;
  v407 = v5;
  v396 = v54;
  while (1)
  {
    __src = v394 - v97;
    if (v394 - v97 < 1)
    {
      v100 = size;
    }

    else
    {
      v99 = 0;
      v100 = size;
      do
      {
        if (v78 < 1)
        {
          break;
        }

        v101 = *ptr;
        v102 = 0;
        if (v78 != 1)
        {
          v103 = *(size + 4 * *ptr);
          for (j = 1; j != v78; ++j)
          {
            v105 = ptr[j];
            if (*(size + 4 * v105) > v103)
            {
              v103 = *(size + 4 * v105);
              v101 = ptr[j];
              v102 = j;
            }
          }
        }

        if (v78 - 1 != v102)
        {
          memmove(&ptr[v102], &ptr[v102 + 1], 2 * (v78 + ~v102));
          v55 = v398;
          v54 = v399;
          v70 = v400;
          v102 = v78 - 1;
        }

        v106 = 0;
        v410[v101] = 1;
        v107 = v101 / v70;
        v108 = v101 % v70;
        v78 = v102;
        do
        {
          v109 = *&qword_1B460[v106] + v108;
          v110 = HIDWORD(*&qword_1B460[v106]) + v107;
          if (v109 >= v5 && v110 >= v5 && v109 < v55 && v110 < v54)
          {
            v114 = v109 + v110 * v70;
            if (!v410[v114])
            {
              v115 = v114;
              if (*(size + 4 * v114) <= v35)
              {
                v117 = 3;
              }

              else
              {
                if (v78 >= v77)
                {
                  v77 = 2 * v77 + 2;
                  v116 = malloc_type_realloc(ptr, 2 * v77, 0x1000040BDFB0063uLL);
                  v54 = v399;
                  v70 = v400;
                  v55 = v398;
                }

                else
                {
                  v116 = ptr;
                }

                ptr = v116;
                v116[v78++] = v115;
                v117 = 2;
              }

              v410[v115] = v117;
            }
          }

          ++v106;
        }

        while (v106 != 8);
        ++v99;
        v98 = v372;
        v100 = size;
        v96 = v379;
        v93 = v5;
        v94 = v396;
      }

      while (v99 != __src);
    }

    v97 = 0;
    if (v54 > v5)
    {
      v118 = &v410[v5 + v379 * v5];
      v119 = v93;
      do
      {
        v120 = v118;
        v121 = v379 - 2 * v5;
        if (v55 > v5)
        {
          do
          {
            v122 = *v120++;
            if (v122 == 1)
            {
              ++v97;
            }

            --v121;
          }

          while (v121);
        }

        ++v119;
        v118 += v96;
      }

      while (v119 != v94);
    }

    if (v54 <= v5 || v97 >= v394)
    {
      break;
    }

    v123 = -1.0;
    v124 = -1;
    v125 = v93;
    v126 = 0xFFFFFFFFLL;
    do
    {
      if (v55 > v5)
      {
        v127 = v125 * v96;
        v128 = v93;
        v129 = v126;
        v130 = v123;
        do
        {
          v126 = v128 + v127;
          if (v410[v128 + v127] == 3 && (v123 = *(v100 + 4 * v126), v123 > v130))
          {
            v131 = 0;
            while (1)
            {
              v132 = *&qword_1B460[v131] + v128;
              v133 = HIDWORD(*&qword_1B460[v131]) + v125;
              v134 = v132 >= v55 || v132 < v5;
              v135 = v134 || v133 < v5;
              if (!v135 && v133 < v54)
              {
                v137 = v132 + v133 * v70;
                if (!v410[v137] && *(v100 + 4 * v137) > v35)
                {
                  break;
                }
              }

              if (++v131 == 8)
              {
                goto LABEL_171;
              }
            }

            v124 = v137;
          }

          else
          {
LABEL_171:
            v123 = v130;
            v126 = v129;
          }

          ++v128;
          v129 = v126;
          v130 = v123;
        }

        while (v128 != v95);
      }

      ++v125;
    }

    while (v125 != v94);
    if (v123 <= 0.0)
    {
      break;
    }

    v410[v126] = 1;
    if (v78 >= v77)
    {
      v77 = 2 * v77 + 2;
      v138 = malloc_type_realloc(ptr, 2 * v77, 0x1000040BDFB0063uLL);
      v54 = v399;
      v70 = v400;
      v55 = v398;
    }

    else
    {
      v138 = ptr;
    }

    ptr = v138;
    v138[v78++] = v124;
    v410[v124] = 2;
  }

  v139 = v391;
  if (v382 >= 1)
  {
    v140 = v410;
    v141 = v98;
    do
    {
      v142 = *v140++;
      *v141++ = v142 == 1;
      --v139;
    }

    while (v139);
  }

  if (v54 > v5)
  {
    v143 = v93;
    do
    {
      if (v55 > v5)
      {
        v144 = v93;
        do
        {
          if (v98[v143 * v96 + v144])
          {
            v145 = 0;
            v146 = 0;
            v147 = -1;
            do
            {
              v148 = *&qword_1B460[v145] + v144;
              v149 = HIDWORD(*&qword_1B460[v145]) + v143;
              if (v148 < v55 && v148 >= v5 && v149 >= v5 && v149 < v54)
              {
                v153 = v98[v148 + v149 * v70];
                if (v153)
                {
                  v147 = v145;
                }

                v146 += v153;
              }

              ++v145;
            }

            while (v145 != 8);
            if (v146 == 1)
            {
              v154 = 0;
              v155 = v147 + 7;
              v156 = 1;
              v157 = -1;
              v158 = -1.0;
              do
              {
                v159 = v156;
                v160 = HIDWORD(*&qword_1B460[(v155 + v154) & 7]);
                v161 = *&qword_1B460[(v155 + v154) & 7] + v144;
                v162 = v160 + v143;
                if (v161 < v55 && v161 >= v5 && v162 >= v5 && v162 < v54)
                {
                  v166 = v161 + v162 * v70;
                  if (*(v100 + 4 * v166) > v158)
                  {
                    v157 = v166;
                    v158 = *(v100 + 4 * v166);
                  }
                }

                v156 = 0;
                v154 = 2;
              }

              while ((v159 & 1) != 0);
              v98[v157] = 1;
            }
          }

          ++v144;
        }

        while (v144 != v95);
      }

      ++v143;
    }

    while (v143 != v94);
  }

  if (v70 <= v370)
  {
    v167 = v370;
  }

  else
  {
    v167 = v70;
  }

  if (v167 < 1)
  {
LABEL_237:
    *&v57 = -1;
    *(&v57 + 1) = -1;
  }

  else
  {
    v168 = 0;
    v169 = v5;
    while (1)
    {
      v170 = v168 + v5;
      if (v94 - v168 > v168 + v5)
      {
        break;
      }

LABEL_236:
      ++v168;
      ++v169;
      if (v168 == v167)
      {
        goto LABEL_237;
      }
    }

    v171 = &v98[(v96 + 1) * v169];
    v172 = v70 - v170;
    v173 = v169;
    while (v170 >= v172)
    {
LABEL_235:
      ++v173;
      v171 += v96;
      if (v173 >= v94 - v168)
      {
        goto LABEL_236;
      }
    }

    v174 = v171;
    v175 = v169;
    while (1)
    {
      v176 = *v174++;
      if (v176)
      {
        break;
      }

      if (++v175 >= v172)
      {
        goto LABEL_235;
      }
    }

    *&v57 = __PAIR64__(v173, v175);
  }

  v177 = 0;
  v178 = v57;
  if ((v57 & 0x80000000) != 0)
  {
    v180 = 0;
  }

  else
  {
    v179 = DWORD1(v57);
    v180 = 0;
    if ((DWORD1(v57) & 0x80000000) == 0)
    {
      *__srca = v57;
      bzero(v410, v382);
      for (k = 0; k != 8; ++k)
      {
        v182 = vadd_s32(qword_1B460[k], __srca[0]);
        if (v182.i32[0] < v5 || v182.i32[1] < v5 || v182.i32[0] >= v398 || v182.i32[1] >= v399)
        {
          v187 = v372;
          goto LABEL_259;
        }
      }

      k = 0;
      v187 = v372;
      while (1)
      {
        v186 = vadd_s32(qword_1B460[k], __srca[0]);
        if (!v372[v186.i32[0] + v186.i32[1] * v400])
        {
          break;
        }

        if (++k == 8)
        {
          LODWORD(k) = -1;
          break;
        }
      }

LABEL_259:
      v188 = 0;
      v189.i64[1] = -1;
      v189.i64[0] = __PAIR64__(v370, v400);
      while (1)
      {
        v190 = vadd_s32(qword_1B460[(k + v188) & 7], __srca[0]);
        *v191.i8 = v190;
        v191.u64[1] = v190;
        v192.i32[0] = vmovn_s32(vcgtq_s32(v189, v191)).u32[0];
        v192.i32[1] = vmovn_s32(vcgtq_s32(v191, v189)).i32[1];
        if ((vminv_u16(v192) & 1) != 0 && v187[v190.i32[0] + v190.i32[1] * v400])
        {
          break;
        }

        if (++v188 == 8)
        {
          goto LABEL_265;
        }
      }

      LODWORD(k) = (k + v188) & 7;
LABEL_265:
      v193 = v178 + v179 * v400;
      v410[v193] |= 1 << k;
      v194 = malloc_type_realloc(0, 4uLL, 0x1000040BDFB0063uLL);
      *v194 = v193;
      *(&v195 + 1) = __srca[1];
      *&v196 = vadd_s32(qword_1B460[k], __srca[0]);
      v197 = 2;
      v198 = 1;
      v200 = v399;
      v199 = v400;
      v201 = v370;
      v202 = v398;
LABEL_266:
      while (1)
      {
        v203 = 5;
        while (1)
        {
          v204 = (k + v203) & 7;
          *&v195 = vadd_s32(qword_1B460[v204], *&v196);
          if (v195 < v199 && (v195 & 0x80000000) == 0 && (DWORD1(v195) & 0x80000000) == 0 && SDWORD1(v195) < v201 && v187[v195 + DWORD1(v195) * v199])
          {
            break;
          }

          if (++v203 == 13)
          {
            goto LABEL_266;
          }
        }

        v205 = v196 + DWORD1(v196) * v199;
        LODWORD(k) = 1 << v204;
        if (((1 << v204) & v410[v205]) != 0)
        {
          break;
        }

        if (v198 >= v197)
        {
          *__srcd = v195;
          v197 = (2 * v197 + 2);
          v206 = malloc_type_realloc(v194, 2 * v197, 0x1000040BDFB0063uLL);
          v200 = v399;
          v199 = v400;
          v201 = v370;
          v202 = v398;
          v195 = *__srcd;
        }

        else
        {
          v206 = v194;
        }

        v194 = v206;
        v206[v198] = v205;
        v410[v205] |= k;
        ++v198;
        LOBYTE(k) = v204;
        *&v196 = v195;
      }

      v376 = v199 - 1;
      v378 = v201 - 1;
      if (v200 > v5)
      {
        v375 = 0;
        v377 = 0;
        v207 = 0;
        v210 = v5 + v5 * v379;
        v211 = &v410[v210];
        v212 = &v187[v210];
        v208 = size;
        v209 = v198;
        do
        {
          if (v202 > v5)
          {
            v213 = v212;
            v214 = v211;
            v215 = v379 - 2 * v5;
            v216 = v5;
            do
            {
              v217 = *v213++;
              if (v217 == 1)
              {
                v218 = *v214;
                v220 = v375;
                v219 = v376;
                if (v376 >= v216)
                {
                  v221 = v216;
                }

                else
                {
                  v221 = v376;
                }

                if (v375 <= v216)
                {
                  v222 = v216;
                }

                else
                {
                  v222 = v375;
                }

                if (v378 >= v407)
                {
                  v223 = v407;
                }

                else
                {
                  v223 = v378;
                }

                v224 = v377;
                if (v377 <= v407)
                {
                  v225 = v407;
                }

                else
                {
                  v225 = v377;
                }

                if (*v214)
                {
                  v226 = 0;
                }

                else
                {
                  v226 = -2;
                }

                if (!*v214)
                {
                  ++v207;
                  v224 = v225;
                  v220 = v222;
                }

                v375 = v220;
                if (*v214)
                {
                  v227 = v378;
                }

                else
                {
                  v227 = v223;
                }

                v378 = v227;
                if (!*v214)
                {
                  v219 = v221;
                }

                v376 = v219;
                v377 = v224;
              }

              else
              {
                v226 = -1;
              }

              *v214++ = v226;
              ++v216;
              --v215;
            }

            while (v215);
          }

          v211 += v379;
          v212 += v379;
          ++v407;
        }

        while (v407 != v396);
      }

      else
      {
        v207 = 0;
        v377 = 0;
        v375 = 0;
        v208 = size;
        v209 = v198;
      }

      v228 = v375 - v376;
      if (v375 - v376 >= v377 - v378)
      {
        v228 = v377 - v378;
      }

      v369 = v228;
      if (v228 > 1 && v207 >= 1)
      {
        v371 = 0;
        v229 = 1;
        v230 = v197;
        while (1)
        {
          v231 = v377 - ((v229 - 1) >> 1);
          if ((v378 + ((v229 - 1) >> 1)) <= v231)
          {
            break;
          }

LABEL_429:
          if (++v229 < v369)
          {
            ++v371;
            if (v207 > 0)
            {
              continue;
            }
          }

          goto LABEL_431;
        }

        v232 = (v229 - 1) >> 1;
        v374 = v232 + v376;
        v233 = v375 - v232;
        v234 = v233;
        v373 = v231;
        v235 = v378 + (v371 >> 1);
        v393 = v229;
        v380 = v233;
LABEL_318:
        if (v374 > v234)
        {
          goto LABEL_428;
        }

        v389 = v235 * v379;
        v236 = (v376 + (v371 >> 1));
        v397 = v235;
LABEL_320:
        if (v410[v236 + v389] != 254)
        {
          goto LABEL_427;
        }

        v386 = v236 + v389;
        v237 = 0;
        v415 = 8;
        v413 = 0;
        do
        {
          v238 = *&qword_1B460[v237] + v236 + (HIDWORD(*&qword_1B460[v237]) + v235) * v199;
          *(v414 + v237) = v238;
          if (v229 > v410[v238])
          {
            v239 = v413++;
            *(&v411 + v239) = v238;
          }

          ++v237;
        }

        while (v237 != 8);
        v388 = v413;
        __srcb = v236;
        if (v413 != 1)
        {
          goto LABEL_391;
        }

        v408 = v411;
        if (v209 < 1)
        {
          v241 = 0;
          v245 = -1;
          v243 = v382;
        }

        else
        {
          v240 = v209;
          v241 = 1;
          v242 = v194;
          v243 = v382;
          while (1)
          {
            v244 = *v242++;
            if (v411 == v244)
            {
              break;
            }

            ++v241;
            if (!--v240)
            {
              v241 = 0;
              v245 = -1;
              goto LABEL_333;
            }
          }

          v245 = v194[v241 % v209];
        }

LABEL_333:
        if (v243 > 4096)
        {
          LODWORD(v208) = 0;
          goto LABEL_390;
        }

        v423 = v243;
        v381 = v207;
        if (v243)
        {
          v246 = &v418;
          do
          {
            *v246 = -NAN;
            v246[1].i32[0] = 0x7FFFFFFF;
            v246[1].i8[4] = 0;
            v246 += 2;
          }

          while (v246 != (&v418 + 2 * v382));
          v247 = *(&v419 + 16 * v408 + 4) | 1;
        }

        else
        {
          v247 = -1;
        }

        v248.i32[0] = v408 % v199;
        v248.i32[1] = v408 / v199;
        v249.i32[0] = v245 % v199;
        v249.i32[1] = v245 / v199;
        v390 = v249;
        v250 = vsub_s32(v248, v249);
        v251 = vmul_s32(v250, v250);
        v252 = (&v418 + 2 * v408);
        v252[1].i32[0] = vadd_s32(v251, vdup_lane_s32(v251, 1)).u32[0];
        ++v252;
        v252[-1].i32[1] = 0;
        v385 = v252;
        v252->i8[4] = v247;
        v253 = 1;
        v417 = 1;
        LODWORD(v416[0]) = v408;
        v254 = v241;
        v392 = v245;
        v383 = -v241;
        v395 = v245;
        while (1)
        {
          v255 = v416[0];
          if (v253 < 2)
          {
            v256 = 0;
          }

          else
          {
            v256 = 0;
            v257 = *(&v418 + 4 * SLODWORD(v416[0]) + 2);
            for (m = 1; m != v253; ++m)
            {
              if (*(&v418 + 4 * *(v416 + m) + 2) < v257)
              {
                v257 = *(&v418 + 4 * *(v416 + m) + 2);
                v256 = m;
              }
            }

            v255 = *(v416 + v256);
          }

          if (v255 != v245)
          {
            break;
          }

          if (v245 < 1)
          {
            goto LABEL_388;
          }

          v259 = -1;
          LODWORD(v208) = -2;
          v260 = v245;
          do
          {
            v261 = (&v418 + 2 * v260);
            v261[1].i32[0] = v259;
            v259 = v260;
            LODWORD(v208) = v208 + 1;
            v260 = v261->i32[0];
          }

          while (v261->i32[0] > 0);
          if ((v208 + 1) >= 3)
          {
            v280 = v385->i32[0];
            if (v385->i32[0] != v245)
            {
              v281 = v209;
              v282 = v383 + v209;
              do
              {
                if (v281 >= v230)
                {
                  v283 = (2 * v230 + 2);
                  v194 = malloc_type_realloc(v194, 2 * v283, 0x1000040BDFB0063uLL);
                  v200 = v399;
                  v199 = v400;
                  v235 = v397;
                  v202 = v398;
                  v230 = v283;
                  v236 = __srcb;
                  v245 = v395;
                }

                if (v254 != v281)
                {
                  v284 = v230;
                  memmove(&v194[v254 + 1], &v194[v254], 2 * v282);
                  v245 = v395;
                  v235 = v397;
                  v199 = v400;
                  v236 = __srcb;
                  v230 = v284;
                  v202 = v398;
                  v200 = v399;
                }

                v194[v254] = v280;
                v410[v280] = v393;
                v280 = *(&v418 + 4 * v280 + 2);
                ++v282;
                ++v281;
              }

              while (v280 != v245);
              v209 = v281;
              v234 = v380;
            }
          }

          else
          {
            LODWORD(v208) = 0;
          }

LABEL_386:
          if (v255 == v245)
          {
            goto LABEL_389;
          }

          v253 = v417;
          if (v417 < 1)
          {
LABEL_388:
            LODWORD(v208) = 0;
LABEL_389:
            v207 = v381;
LABEL_390:
            v229 = v393;
            v207 -= v208;
            v208 = size;
LABEL_391:
            if (v388 >= 2)
            {
              v422 = 0;
              if (v209 >= 1)
              {
                v285 = 0;
                do
                {
                  v286 = 0;
                  v287 = 0;
                  v288 = 0;
                  v289 = v285;
                  v290 = v194[v285++];
                  if (v285 == v209)
                  {
                    v291 = 0;
                  }

                  else
                  {
                    v291 = v289 + 1;
                  }

                  v292 = v194[v291];
                  do
                  {
                    v293 = *(v414 + v286);
                    v288 |= v293 == v290;
                    v287 |= v293 == v292;
                    v286 += 4;
                  }

                  while (v286 != 32);
                  if (v288 & v287)
                  {
                    *&v196 = __PAIR64__(v290, v289);
                    DWORD2(v196) = v292;
                    v294 = v422++;
                    *(&v418 + v294) = v196;
                  }
                }

                while (v285 != v209);
                if (v422 > 0)
                {
                  if (v422 == 1)
                  {
                    v295 = 0;
                  }

                  else
                  {
                    v296 = 0;
                    if (SHIDWORD(v418) / v199 == v419 / v199 || SHIDWORD(v418) % v199 == v419 % v199)
                    {
                      v298 = 0.0;
                    }

                    else
                    {
                      v298 = -1.0;
                    }

                    v299 = v298 + (*(v208 + 4 * SHIDWORD(v418)) + *(v208 + 4 * v419));
                    v300 = &v421;
                    for (n = 1; n != v422; ++n)
                    {
                      v302 = *(v300 - 1);
                      v303 = *v300;
                      if (v302 / v199 == v303 / v199 || v302 % v199 == v303 % v199)
                      {
                        v305 = 0.0;
                      }

                      else
                      {
                        v305 = -1.0;
                      }

                      if ((v305 + (*(v208 + 4 * v302) + *(v208 + 4 * v303))) < v299)
                      {
                        v296 = n;
                        v299 = v305 + (*(v208 + 4 * v302) + *(v208 + 4 * v303));
                      }

                      v300 += 2;
                    }

                    v295 = v296;
                  }

                  v306 = *(&v418 + 4 * v295);
                  if (v209 >= v230)
                  {
                    v307 = (2 * v230 + 2);
                    v308 = malloc_type_realloc(v194, 2 * v307, 0x1000040BDFB0063uLL);
                    v230 = v307;
                    v194 = v308;
                    v200 = v399;
                    v199 = v400;
                    v235 = v397;
                    v202 = v398;
                    v236 = __srcb;
                  }

                  v309 = v386;
                  v310 = v306 + 1;
                  v311 = v306 + 1;
                  v312 = v209 - v310;
                  if (v312)
                  {
                    v313 = v230;
                    memmove(&v194[v311 + 1], &v194[v311], 2 * v312);
                    v309 = v386;
                    v199 = v400;
                    v236 = __srcb;
                    v235 = v397;
                    v202 = v398;
                    v230 = v313;
                    v234 = v380;
                    v200 = v399;
                  }

                  ++v209;
                  v194[v311] = v309;
                  v229 = v393;
                  v410[v309] = v393;
                  --v207;
                }
              }
            }

LABEL_427:
            v61 = v236++ < v234;
            if (!v61)
            {
LABEL_428:
              v61 = v235++ < v373;
              if (!v61)
              {
                goto LABEL_429;
              }

              goto LABEL_318;
            }

            goto LABEL_320;
          }
        }

        if (v253 - 1 != v256)
        {
          v262 = v230;
          memmove(v416 + 4 * v256, v416 + 4 * v256 + 4, 4 * (v253 + ~v256));
          v245 = v395;
          v235 = v397;
          v199 = v400;
          v236 = __srcb;
          v230 = v262;
          v202 = v398;
          v200 = v399;
          v256 = v417 - 1;
        }

        v263 = 0;
        v265 = (&v418 + 2 * v255);
        v417 = v256;
        v265[1].i8[4] = v265[1].i8[4] & 0xFC | 2;
        while (1)
        {
          v266 = qword_1B460[v263];
          v264.i32[1] = v255 / v199;
          v264.i32[0] = v255 % v199;
          v267 = vadd_s32(v266, v264);
          v268 = v267.i32[0] >= v5 && v267.i32[1] < v200;
          v269 = !v268 || v267.i32[1] < v5;
          if (!v269 && v267.i32[0] < v202)
          {
            v271 = v267.i32[0] + v267.i32[1] * v199;
            if (v255 != v408)
            {
              v272 = v392;
              if (v271 == v245)
              {
                goto LABEL_373;
              }
            }

            if (v410[v271] == 254)
            {
              break;
            }
          }

LABEL_367:
          if (++v263 == 8)
          {
            goto LABEL_386;
          }
        }

        v272 = v271;
LABEL_373:
        v273 = (&v418 + 2 * v272);
        v274 = v273[1].i8[4];
        if ((v274 & 2) == 0)
        {
          if ((v273[1].i8[4] & 1) == 0)
          {
            v275 = v417++;
            *(v416 + v275) = v271;
            v273[1].i8[4] = v274 | 1;
          }

          v276 = vmul_s32(v266, v266);
          v277 = vadd_s32(v276, vdup_lane_s32(v276, 1)).u32[0] + v265->i32[1];
          if (v277 < v273->i32[1])
          {
            v273->i32[0] = v255;
            v273->i32[1] = v277;
            v278 = vsub_s32(v267, v390);
            v279 = vmul_s32(v278, v278);
            v273[1].i32[0] = vadd_s32(v279, vdup_lane_s32(v279, 1)).u32[0];
          }
        }

        goto LABEL_367;
      }

LABEL_431:
      if (v209 < 1)
      {
        v317 = 0;
        __srcc = 0;
        v318 = 0;
        v418 = 0;
        LODWORD(v419) = v209;
        HIDWORD(v419) = v209;
        v177 = v194;
      }

      else
      {
        v314 = 0;
        v315 = -1;
        v316 = -1.0;
        v177 = v194;
        do
        {
          if (*(v208 + 4 * v194[v314]) > v316)
          {
            v315 = v314;
            v316 = *(v208 + 4 * v194[v314]);
          }

          ++v314;
        }

        while (v209 != v314);
        __srcc = malloc_type_malloc(8 * v209, 0x100004000313F17uLL);
        HIDWORD(v419) = v209;
        v317 = malloc_type_malloc(8 * v209, 0x100004000313F17uLL);
        v418 = v317;
        v318 = malloc_type_malloc(v209, 0x100004077774924uLL);
        for (ii = 0; ii != v209; v318[ii++] = v320 == v328)
        {
          v320 = 0;
          v321 = v194[(v315 + ii) % v209];
          v322 = v321 / v400;
          v323 = v321 % v400;
          *&v324 = ((v321 % v400) + 0.5) / v400;
          *(&v324 + 1) = ((v321 / v400) + 0.5) / v370;
          __srcc[ii] = v324;
          v325 = v194[(v209 - 1 + v315 + ii) % v209];
          while (1)
          {
            v326.i32[1] = v325 / v400;
            v326.i32[0] = v325 % v400;
            v327 = vadd_s32(qword_1B460[v320], v326);
            if (v327.i32[0] + v327.i32[1] * v400 == v321)
            {
              break;
            }

            if (++v320 == 8)
            {
              LODWORD(v320) = -1;
              break;
            }
          }

          v328 = 0;
          while (1)
          {
            v329 = vadd_s32(qword_1B460[v328], __PAIR64__(v322, v323));
            if (v329.i32[0] + v329.i32[1] * v400 == v194[(v315 + ii + 1) % v209])
            {
              break;
            }

            if (++v328 == 8)
            {
              LODWORD(v328) = -1;
              break;
            }
          }
        }

        memcpy(v317, __srcc, 8 * v209);
        v330 = 0;
        LODWORD(v419) = v209;
        v331 = v209 + 2;
        v332 = 2;
        v333 = vdup_n_s32(0x3F2AAAABu);
        v334 = v209;
        do
        {
          v335 = v330 + 1;
          if ((v318[v330] & 1) == 0)
          {
            v336 = v335 == v209 ? 0 : v330 + 1;
            if (v318[v336] == 1)
            {
              if (v209 < 3)
              {
LABEL_456:
                v339 = -1;
              }

              else
              {
                v337 = v332;
                v338 = v209 - 2;
                v339 = v331;
                while (v318[v337 % v209] == 1)
                {
                  ++v339;
                  ++v337;
                  if (!--v338)
                  {
                    goto LABEL_456;
                  }
                }
              }

              v340 = v330 + v209;
              v341 = v339 - (v330 + v209);
              if (v341 >= 2)
              {
                v342 = 0;
                v343 = __srcc[(v340 - 1) % v209];
                v344 = __srcc[(v339 + 1) % v209];
                v345 = __srcc[v340 % v209];
                v346 = __srcc[v339 % v209];
                v347 = vmul_f32(vadd_f32(v345, v346), 0x3F0000003F000000);
                v348 = vmla_f32(v343, v333, vsub_f32(v345, v343));
                v349 = vmla_f32(v344, v333, vsub_f32(v346, v344));
                v350 = vsub_f32(v345, v348);
                v351 = vsub_f32(v347, v345);
                v352 = vsub_f32(v346, v349);
                v353 = vsub_f32(v347, v346);
                v354 = v341 / 2;
                v355 = v354;
                v356 = v334;
                do
                {
                  v357 = v342 / v355;
                  v358 = 1.0 - sqrtf(1.0 - v357);
                  v359 = sqrtf(v357);
                  v317[v356 % v209] = vmla_n_f32(vmla_n_f32(v348, v350, v359), v351, v358);
                  v317[v339 % v209] = vmla_n_f32(vmla_n_f32(v349, v352, v359), v353, v358);
                  ++v342;
                  --v339;
                  ++v356;
                  --v354;
                }

                while (v354);
              }
            }
          }

          ++v331;
          ++v332;
          ++v334;
          v330 = v335;
        }

        while (v335 != v209);
      }

      sub_63B8(&v418, v416);
      sub_63B8(v416, v414);
      sub_63B8(v414, &v411);
      v360 = v412;
      v361 = objc_alloc_init(NSMutableArray);
      v362 = v411;
      if (v360 >= 1)
      {
        v363 = 0;
        v364 = 8 * v360;
        do
        {
          v409 = HIDWORD(*&v362[v363]);
          v365 = [NSNumber numberWithFloat:?];
          [v361 addObject:v365];

          HIDWORD(v366) = v409;
          LODWORD(v366) = v409;
          v367 = [NSNumber numberWithFloat:v366];
          [v361 addObject:v367];

          v363 += 8;
        }

        while (v364 != v363);
      }

      free(v362);
      free(v414[0]);
      free(v416[0]);
      free(v318);
      free(v317);
      free(__srcc);
      v180 = v361;
    }
  }

  free(ptr);
  free(v177);
  free(v372);
  free(v410);

  return v180;
}

void sub_41B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  free(v59);
  free(a43);
  free(a27);
  free(v58);
  free(a15);
  free(a47);
  _Unwind_Resume(a1);
}

void NTKKaleidoscopeAnalyzeDominance()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __b = v7;
  v8 = v0;
  v9 = [v8 width];
  v10 = [v8 height];
  v11 = v9 / v6;
  if (v9 / v6 <= 1)
  {
    v11 = 1;
  }

  if (v11 >= 16)
  {
    v12 = 16;
  }

  else
  {
    v12 = v11;
  }

  v13 = v10 / v4;
  if (v10 / v4 <= 1)
  {
    v13 = 1;
  }

  if (v13 >= 16)
  {
    v13 = 16;
  }

  v116 = v13;
  v104 = v8;
  v14 = v12 * v6;
  v15 = (v116 * v4);
  if ([v104 width] != v12 * v6 || (v16 = v104, objc_msgSend(v104, "height") != v15))
  {
    v16 = [v104 scaleToWidth:(v12 * v6) height:v15];
  }

  v17 = [v16 contents];
  v103 = v6;
  v120 = 256;
  if (v4 * v6 >= 1)
  {
    memset_pattern16(__b, &unk_1B410, 16 * (v4 * v6));
  }

  v109 = v4 - v2;
  if ((v4 - v2) > v2)
  {
    v113 = v6 - v2;
    v111 = v2 * v12 + v2 * v12 * v6 * v116;
    v107 = v6 * v116 * v12;
    v105 = v2;
    v110 = v2;
    v112 = v12;
    v108 = v2;
    do
    {
      if (v113 > v2)
      {
        v18 = v105;
        v19 = v111;
        do
        {
          v115 = v18;
          v20 = 0;
          LODWORD(v18) = 0;
          v114 = v19;
          do
          {
            v18 = v18;
            v21 = v18 + 1;
            v22 = v12;
            v23 = v19;
            do
            {
              v24 = v21;
              v119[v18++] = v17[v23++];
              ++v21;
              --v22;
            }

            while (v22);
            ++v20;
            v19 += v14;
          }

          while (v20 != v116);
          v124 = 512;
          bzero(v123, 0x2000uLL);
          if (v18 - 1 >= 0)
          {
            v25 = v24;
            v26 = v119;
            do
            {
              v27 = *v26++;
              v28.i64[0] = 0x3F0000003F000000;
              v28.i64[1] = 0x3F0000003F000000;
              v29 = vmlaq_f32(v28, xmmword_1B3E0, v27);
              *v29.f32 = vshl_u32(vcvt_s32_f32(*v29.f32), 0x300000006);
              v123[v29.i32[1] | v29.f32[2] | v29.i32[0]] = vaddq_f32(v27, v123[v29.i32[1] | v29.f32[2] | v29.i32[0]]);
              --v25;
            }

            while (v25);
          }

          v30 = 0;
          v122 = 9;
          while (1)
          {
            v31 = 0;
            v32 = 1.0;
            v33 = -1;
            v34 = (v123 | 0xC);
            do
            {
              v35 = *v34;
              v34 += 4;
              v36 = v35;
              if (v32 <= v36)
              {
                v32 = v36;
                v33 = v31;
              }

              ++v31;
            }

            while (v31 != 512);
            if ((v33 & 0x80000000) != 0)
            {
              break;
            }

            v37 = (v33 >> 3) & 7;
            v38 = v33 & 7;
            if (((v33 >> 6) & 6) != 0)
            {
              v39 = (v33 >> 6) & 7;
            }

            else
            {
              v39 = 1;
            }

            v40 = v39 - 1;
            if (((v33 >> 3) & 6) != 0)
            {
              v41 = (v33 >> 3) & 7;
            }

            else
            {
              v41 = 1;
            }

            if ((v33 & 6) != 0)
            {
              v42 = v33 & 7;
            }

            else
            {
              v42 = 1;
            }

            if (((v33 >> 6) & 7) >= 6)
            {
              v43 = 6;
            }

            else
            {
              v43 = (v33 >> 6) & 7;
            }

            v44 = v43 + 1;
            v45 = 0uLL;
            if (v40 <= v44)
            {
              v46 = v41 - 1;
              v47 = v42 - 1;
              if (v38 >= 6)
              {
                v48 = 6;
              }

              else
              {
                v48 = v38;
              }

              if (v37 >= 6)
              {
                v37 = 6;
              }

              v49 = v37 + 1;
              v50 = v48 - v42 + 3;
              do
              {
                if (v46 <= v49)
                {
                  v51 = v46;
                  do
                  {
                    if (v47 <= v48 + 1)
                    {
                      v52 = v50;
                      v53 = v47;
                      do
                      {
                        v54 = &v123[(v40 << 6) | (8 * v51) | v53];
                        v45 = vaddq_f32(v45, *v54);
                        v54->i64[0] = 0;
                        v54->i64[1] = 0;
                        ++v53;
                        --v52;
                      }

                      while (v52);
                    }

                    _ZF = v51++ == v49;
                  }

                  while (!_ZF);
                }

                _ZF = v40++ == v44;
              }

              while (!_ZF);
            }

            v121[v30++] = v45;
            if (v30 == 9)
            {
              v56 = 9;
              goto LABEL_64;
            }
          }

          if (!v30)
          {
            goto LABEL_77;
          }

          v56 = v30;
LABEL_64:
          v57 = v121;
          v58 = v56;
          do
          {
            v117 = *v57;
            v118 = vdivq_f32(*v57, vdupq_laneq_s32(*v57, 3));
            _CLKUIRGB2LAB();
            _S1 = _V0.S[1];
            __asm { FMLA            S2, S1, V0.S[1] }

            v65.i32[1] = sqrtf(_S2);
            _D0 = vmulq_f32(v65, xmmword_1B3F0).u64[0];
            _S1 = 1077936127;
            v68 = (*&_D0 * 3.0) + 0.1;
            if (*&_D0 >= 0.3)
            {
              v68 = 1.0;
            }

            __asm { FMLA            S4, S1, V0.S[1] }

            if (*(&_D0 + 1) >= 0.3)
            {
              v70 = 1.0;
            }

            else
            {
              v70 = _S4;
            }

            v71 = v118;
            v71.i32[3] = vmuls_lane_f32(v70 * (v70 * (v68 * v68)), v117, 3);
            *v57++ = v71;
            --v58;
          }

          while (v58);
          v12 = v112;
          if (v56 >= 2)
          {
            v72 = 0;
            for (i = 1; i != v56; ++i)
            {
              v74 = v72;
              do
              {
                v75 = v121[v74];
                v76 = v121[v74 + 1];
                if ((vmovn_s32(vcgtq_f32(v76, v75)).i8[6] & 1) == 0)
                {
                  break;
                }

                v121[v74 + 1] = v75;
                v121[v74] = v76;
                v77 = v74-- + 1;
              }

              while (v77 > 1);
              ++v72;
            }
          }

LABEL_77:
          _CLKUIRGB2LAB();
          _CLKUILAB2RGB();
          HIDWORD(v78) = 1.0;
          *&__b[16 * v110 * v6 + 16 * v115] = v78;
          v18 = v115 + 1;
          v19 = v114 + v12;
        }

        while (v113 != v115 + 1);
      }

      v111 += v107;
      ++v110;
      v2 = v108;
    }

    while (v109 != v110);
  }

  v79 = v2 - 2;
  if (v2 >= 2)
  {
    v80 = v2;
    v81 = (v4 - v2) * v6;
    v82 = 16 * v81 + 16 * v2;
    v83 = v6 * v79;
    v84 = &__b[16 * v81 - 16 + 16 * v6 + 16 * v2];
    v85 = 16 * v6;
    v86 = v85 - 16;
    v87 = &__b[v82 - 16];
    v88 = &__b[16 * (v2 - 2) * v6 - 16 + 16 * v2];
    v89 = &__b[16 * v83 + 16 * v2];
    v90 = &__b[16 * v83];
    v91 = v85 ^ 0xFFFFFFFFFFFFFFF0;
    v92 = &__b[16 * (v2 - 1) * v6 - 16 + 16 * v2];
    v93 = v79 - 1;
    v94 = v89 - 16;
    v95 = v6 - v2;
    do
    {
      v96 = v80 - 1;
      if (v80 - 1 <= v103 - v80)
      {
        v98 = 0;
        v97 = v80 - 2;
        do
        {
          *(v88 + 16 * v98) = *(v92 + 16 * v98);
          *(v84 + 16 * v98) = *(v87 + 16 * v98);
          ++v98;
        }

        while (v80 + v98 - 2 < v103 - v80);
      }

      else
      {
        v97 = v80 - 2;
      }

      if (v97 <= v4 - v96)
      {
        v99 = &v90[16 * v95];
        v100 = v94;
        v101 = v93;
        do
        {
          *(v100 - 1) = *v100;
          *(v99 + 1) = *v99;
          ++v101;
          v100 = (v100 + v85);
          v99 += v85;
        }

        while (v101 < v4 - v96);
      }

      v84 += v86;
      v87 += v86;
      v88 += v91;
      v92 += v91;
      --v93;
      v94 += v91;
      v90 -= 16 * v103;
      ++v95;
    }

    while (v80-- > 2);
  }
}

id NTKPlusImage()
{
  v0 = +[CLKRenderingContext sharedRenderingContext];
  v1 = [v0 device];
  sub_4ACC(v1, v1);

  v2 = qword_2CDE8;

  return v2;
}

uint64_t sub_4ACC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_2CDF4);
  if (qword_2CDF8)
  {
    v3 = qword_2CDF8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_2CE00))
  {
    v5 = byte_2CDF0;
  }

  else
  {
    qword_2CDF8 = v2;
    qword_2CE00 = [v2 version];
    sub_4B84(qword_2CE00, v2);
    v5 = 1;
    byte_2CDF0 = 1;
  }

  os_unfair_lock_unlock(&stru_2CDF4);

  return v5;
}

void sub_4B84(uint64_t a1, void *a2)
{
  v9 = a2;
  v2 = [CLKDeviceMetrics metricsWithDevice:"metricsWithDevice:identitySizeClass:" identitySizeClass:?];
  [v2 setRoundingBehavior:4];
  [v2 scaledValue:55.0];
  v3 = [UIImageSymbolConfiguration configurationWithPointSize:?];
  v4 = +[UIColor whiteColor];
  v5 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v4];

  v6 = [v3 configurationByApplyingConfiguration:v5];
  v7 = [UIImage systemImageNamed:@"plus.circle.fill" withConfiguration:v6];
  v8 = qword_2CDE8;
  qword_2CDE8 = v7;
}

void sub_4C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_5560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18)
{
  free(v19);
  free(a17);
  free(a18);
  free(v18);
  _Unwind_Resume(a1);
}

id NTKBlurImage(void *a1, double a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 && a2 > 0.0)
  {
    v5 = [[CIImage alloc] initWithImage:v3];
    if (v5)
    {
      v6 = [CIFilter filterWithName:@"CIAffineClamp"];
      [v6 setDefaults];
      [v6 setValue:v5 forKey:kCIInputImageKey];
      v7 = [CIFilter filterWithName:@"CIGaussianBlur"];
      v8 = [NSNumber numberWithDouble:a2];
      [v7 setValue:v8 forKey:kCIInputRadiusKey];

      v9 = [v6 outputImage];
      [v7 setValue:v9 forKey:kCIInputImageKey];

      v10 = [v7 outputImage];
      if (v10)
      {
        v11 = +[CIContext context];
        [v5 extent];
        v12 = [v11 createCGImage:v10 fromRect:?];
        if (v12)
        {
          v13 = [UIImage alloc];
          [v4 scale];
          v15 = [v13 initWithCGImage:v12 scale:objc_msgSend(v4 orientation:{"imageOrientation"), v14}];
          CGImageRelease(v12);
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = v3;
  }

  return v15;
}

void sub_58C4(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

id NTKCropImage(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = v9;
  if (v9)
  {
    [v9 size];
    v12 = v11;
    v14 = v13;
    [v10 scale];
    v16 = v15;
    if ((v12 * v15))
    {
      v17 = (v14 * v15) == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      v21 = v10;
    }

    else
    {
      v18 = [v10 imageOrientation];
      v19 = [v10 CGImage];
      v24.size.height = a5 * v16;
      v24.size.width = a4 * v16;
      v24.origin.y = a3 * v16;
      v24.origin.x = a2 * v16;
      v20 = CGImageCreateWithImageInRect(v19, v24);
      v21 = [UIImage imageWithCGImage:v20 scale:v18 orientation:v16];
      CGImageRelease(v20);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void sub_5A58(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id NTKDefaultMonochromeColorMatrix()
{
  if (qword_2CE08 != -1)
  {
    sub_1508C();
  }

  v1 = qword_2CE10;

  return v1;
}

void sub_5AD0(id a1)
{
  v3[0] = 0;
  v3[1] = 0;
  v4 = 1056964608;
  v6 = 0;
  v5 = 0;
  v7 = 1056964608;
  v8 = 0;
  v9 = 0;
  v10 = 1056964608;
  v11 = 0;
  v12 = 0;
  v13 = 1065353216;
  v1 = [NSValue valueWithBytes:v3 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
  v2 = qword_2CE10;
  qword_2CE10 = v1;
}

BOOL NTKIsDefaultMonochromeColorMatrix(void *a1)
{
  v1 = a1;
  v2 = NTKDefaultMonochromeColorMatrix();

  return v2 == v1;
}

id NTKGenerateMonochromeColorMatrixFromImage(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_18;
  }

  [v1 scale];
  v4 = v3;
  [v2 size];
  v6 = (v4 * v5);
  v8 = (v4 * v7);
  if (!v6 || v8 == 0)
  {
    goto LABEL_18;
  }

  v10 = malloc_type_calloc(1uLL, (4 * v6 * v8), 0x100004052888210uLL);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v12 = CGBitmapContextCreate(v10, v6, v8, 8uLL, (4 * v6), DeviceRGB, 1u);
  v13 = [v2 CGImage];
  v42.size.width = v6;
  v42.size.height = v8;
  v42.origin.x = 0.0;
  v42.origin.y = 0.0;
  CGContextDrawImage(v12, v42, v13);
  bzero(v40, 0x400uLL);
  v16 = v6 * v8;
  if (v6 * v8)
  {
    v17 = v10;
    do
    {
      LOBYTE(v14) = *v17;
      LOBYTE(v15) = v17[1];
      *&v18 = LODWORD(v15) * 0.7152;
      v19 = *&v18 + (LODWORD(v14) * 0.2126);
      LOBYTE(v18) = v17[2];
      v15 = v18;
      v14 = v19 + (v15 * 0.0722);
      ++v40[v14];
      v17 += 4;
    }

    while (v17 < &v10[4 * v16]);
  }

  v20 = 0;
  v21 = 0;
  v22 = v16 / 0x3E8;
  while (1)
  {
    v21 += v40[v20];
    if (v21 > v22)
    {
      break;
    }

    if (++v20 == 256)
    {
      LODWORD(v20) = 0;
      break;
    }
  }

  v23 = 0;
  v24 = 255;
  while (1)
  {
    v23 += v40[v24];
    if (v23 > v22)
    {
      break;
    }

    if (--v24 == -1)
    {
      v24 = 255;
      break;
    }
  }

  CGContextRelease(v12);
  free(v10);
  CGColorSpaceRelease(DeviceRGB);
  if (v24 - v20 > 9)
  {
    v28.f32[0] = -v20 / 255.0;
    v32 = 0;
    v28.i32[1] = 1046066128;
    v28.i64[1] = 0x3D93DD983F371759;
    v29 = vmulq_n_f32(v28, 255.0 / (v24 - v20));
    v30 = vextq_s8(v29, v29, 4uLL).u64[0];
    v31 = v29.i32[3];
    v33 = v29;
    v34 = 0;
    v35 = v29;
    v36 = 0;
    v37 = v29.i32[0];
    v38 = xmmword_1B400;
    v39 = 0;
    v25 = [NSValue valueWithBytes:&v30 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
  }

  else
  {
LABEL_18:
    v25 = NTKDefaultMonochromeColorMatrix();
  }

  v26 = v25;

  return v26;
}

id NTKInterpolateColorMatrixToIdentity(void *a1, double a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0uLL;
  memset(v30, 0, sizeof(v30));
  if (v3)
  {
    [v3 CAColorMatrixValue];
    v6 = *v30;
    v5 = *(v30 + 4);
    v7 = *(&v30[1] + 2);
    v8 = *(&v30[1] + 1);
    v9 = *(&v30[1] + 12);
    v11 = *(&v30[2] + 3);
    v10 = *&v30[3];
    v12 = *(&v30[3] + 4);
    v13 = *(&v30[4] + 2);
    v14 = *(&v30[4] + 1);
    v15 = *(&v30[4] + 3);
  }

  else
  {
    v15 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v6 = 0.0;
    v9 = 0uLL;
    v12 = 0uLL;
  }

  v16 = a2;
  v19 = v6 + ((1.0 - v6) * v16);
  v20 = vmulq_n_f32(v5, 1.0 - v16);
  v21 = (1.0 - v16) * v8;
  v22 = v7 + ((1.0 - v7) * v16);
  v23 = vmulq_n_f32(v9, 1.0 - v16);
  v24 = (1.0 - v16) * v11;
  v25 = v10 + ((1.0 - v10) * v16);
  v26 = vmulq_n_f32(v12, 1.0 - v16);
  v27 = (1.0 - v16) * v14;
  v28 = v13 + ((1.0 - v13) * v16);
  v29 = (1.0 - v16) * v15;
  v17 = [NSValue valueWithBytes:&v19 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];

  return v17;
}

id NTKInterpolateBetweenImages(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = v6;
  if (!v5)
  {
    goto LABEL_12;
  }

  v8 = v5;
  if (!v6)
  {
    goto LABEL_12;
  }

  [v5 size];
  v10 = v9;
  v12 = v11;
  [v5 scale];
  v14 = v13;
  v15 = (v10 * v13);
  v16 = (v12 * v13);
  v17 = !v15 || v16 == 0;
  v8 = v7;
  if (v17)
  {
    goto LABEL_12;
  }

  [v7 size];
  v19 = v18;
  v21 = v20;
  [v7 scale];
  v23 = (v19 * v22);
  v24 = (v21 * v22);
  v25 = !v23 || v24 == 0;
  v8 = v7;
  if (v25)
  {
LABEL_12:
    v26 = v8;
  }

  else
  {
    if (v15 <= v23)
    {
      v28 = v23;
    }

    else
    {
      v28 = v15;
    }

    if (v16 <= v24)
    {
      v29 = v24;
    }

    else
    {
      v29 = v16;
    }

    space = CGColorSpaceCreateDeviceRGB();
    v43 = malloc_type_calloc(1uLL, (4 * v28 * v29), 0x100004052888210uLL);
    c = CGBitmapContextCreate(v43, v28, v29, 8uLL, (4 * v28), space, 1u);
    v30 = malloc_type_calloc(1uLL, (4 * v28 * v29), 0x100004052888210uLL);
    v31 = CGBitmapContextCreate(v30, v28, v29, 8uLL, (4 * v28), space, 1u);
    v32 = [v5 CGImage];
    v47.size.height = v16;
    v47.size.width = v15;
    v47.origin.x = 0.0;
    v47.origin.y = 0.0;
    CGContextDrawImage(c, v47, v32);
    v33 = [v7 CGImage];
    v48.size.height = v24;
    v48.size.width = v23;
    v48.origin.x = 0.0;
    v48.origin.y = 0.0;
    CGContextDrawImage(v31, v48, v33);
    if (v28 * v29)
    {
      *v34.i32 = a3;
      *v35.i32 = 1.0 - *v34.i32;
      v38 = vdupq_lane_s32(v35, 0);
      v39 = v43;
      v40 = v30;
      do
      {
        v36.i32[0] = *v39;
        v41 = *v40++;
        v37.i32[0] = v41;
        v37 = vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v37.f32))), *v34.i32), v38, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v36))));
        v36 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(v37)), v34);
        *v39++ = v36.i32[0];
      }

      while (v39 < &v43[4 * (v28 * v29)]);
    }

    Image = CGBitmapContextCreateImage(c);
    CGContextRelease(c);
    CGContextRelease(v31);
    v26 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", Image, [v5 imageOrientation], v14);
    CGImageRelease(Image);
    free(v43);
    free(v30);
    CGColorSpaceRelease(space);
  }

  return v26;
}

float sub_6338(float a1, float a2, float a3)
{
  if (a3 < 0.0)
  {
    a3 = a3 + 1.0;
  }

  if (a3 > 1.0)
  {
    a3 = a3 + -1.0;
  }

  if (a3 < 0.16667)
  {
    v3 = (a2 - a1) * 6.0;
    return a1 + (v3 * a3);
  }

  if (a3 >= 0.5)
  {
    if (a3 < 0.66667)
    {
      v3 = (a2 - a1) * (0.66667 - a3);
      a3 = 6.0;
      return a1 + (v3 * a3);
    }

    return a1;
  }

  return a2;
}

float32x2_t *sub_63B8@<X0>(float32x2_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1].u32[0];
  v4 = (2 * v3);
  *(a2 + 8) = v4;
  *(a2 + 12) = v4;
  if (v3 <= 0)
  {
    *a2 = 0;
  }

  else
  {
    v5 = result;
    result = malloc_type_malloc(8 * (2 * v3), 0x100004000313F17uLL);
    v6 = 0;
    *a2 = result;
    v7 = result + 1;
    do
    {
      v8 = *(*v5 + 8 * v6);
      if (--v3)
      {
        v9 = v6 + 1;
      }

      else
      {
        v9 = 0;
      }

      ++v6;
      v10 = vmul_f32(vadd_f32(v8, *(*v5 + 8 * v9)), 0x3F0000003F000000);
      v7[-1] = v8;
      *v7 = v10;
      v7 += 2;
    }

    while (v3);
    v11 = 0;
    v12 = v4 - 1;
    __asm { FMOV            V1.2S, #0.25 }

    do
    {
      result[v11] = vmul_f32(vadd_f32(vmla_f32(result[(v11 + 1) % v4], 0x4000000040000000, result[v11]), result[v12 % v4]), _D1);
      v11 += 2;
      v12 += 2;
    }

    while (v11 < v4);
  }

  return result;
}

id _NTKKaleidoscopeLoggingObjectForDomain(uint64_t a1, uint64_t a2)
{
  v3 = (&unk_2CE20 + 8 * a1);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_6554;
  v6[3] = &unk_24910;
  v6[4] = a1;
  v6[5] = a2;
  if (*v3 != -1)
  {
    dispatch_once(v3, v6);
  }

  v4 = qword_2CE18[a1];

  return v4;
}

void sub_6554(uint64_t a1)
{
  v2 = [NSString stringWithCString:*(a1 + 40) encoding:4];
  v7 = [v2 substringFromIndex:{objc_msgSend(@"NTKKaleidoscopeLoggingDomain", "length")}];

  v3 = v7;
  v4 = os_log_create("com.apple.NanoTimeKit.Kaleidoscope", [v7 cStringUsingEncoding:4]);
  v5 = *(a1 + 32);
  v6 = qword_2CE18[v5];
  qword_2CE18[v5] = v4;
}

uint64_t sub_6824(id *a1)
{
  v2 = *a1;
  v3 = [v2 options];
  v4 = [v3 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = [v2 options];
    v7 = [v6 mutableCopy];

    v8 = [v4 device];
    v9 = [(NTKKaleidoscopeAssetOption *)NTKKaleidoscopeCustomAssetOption optionWithAsset:1000 forDevice:v8];
    [v7 insertObject:v9 atIndex:0];

    v10 = [NTKEditOptionCollection alloc];
    v11 = [v2 mode];
    v12 = [v2 localizedName];
    *a1 = [v10 initWithEditMode:v11 localizedName:v12 options:v7 collectionType:{objc_msgSend(v2, "collectionType")}];

    v5 = 0;
  }

  return v5;
}

BOOL sub_6CFC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  if (v7)
  {
    objc_storeStrong(v8 + 2, a2);
    [*(a1 + 32) _setPhotoFromDictionary:v7];
  }

  else
  {
    v9 = [v8 cell];
    [v9 ensureSelectedOptionVisible:0];
  }

  return v7 != 0;
}

void sub_6F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6F28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finalizeEditor];
}

void sub_702C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_7048(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finalizeEditor];
}

void sub_714C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_7168(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finalizeEditor];
}

id sub_7224(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 face];
  [v5 setResourceDirectory:v4];

  v6 = [*(a1 + 32) cell];
  [v6 selectUserOption];

  result = *(*(a1 + 32) + 16);
  if (result)
  {

    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void sub_77E0(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v4 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v4 count:1];
  [v2 reloadItemsAtIndexPaths:v3];
}

void sub_7D48(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 56) defaultFaceForDevice:*(a1 + 32)];
  if (v6)
  {
    v7 = +[NTKKaleidoscopeAssetOption optionWithAsset:forDevice:](NTKKaleidoscopeAssetOption, "optionWithAsset:forDevice:", [v5 unsignedIntValue], *(a1 + 32));
    [v6 selectOption:v7 forCustomEditMode:12 slot:0];
    if ([*(a1 + 40) count] > a3)
    {
      v8 = [*(a1 + 40) objectAtIndexedSubscript:a3];
      v9 = +[NTKKaleidoscopeStyleOption optionWithStyle:forDevice:](NTKKaleidoscopeStyleOption, "optionWithStyle:forDevice:", [v8 unsignedIntValue], *(a1 + 32));

      [v6 selectOption:v9 forCustomEditMode:15 slot:0];
    }

    v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
    v11 = v10;
    if (a3)
    {
      v17 = v10;
      v12 = &v17;
      v13 = 4000;
    }

    else
    {
      v18 = v10;
      v12 = &v18;
      v13 = 8000;
    }

    v14 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v12[1] = v14;
    v15 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:19 zOrder:v13];
    v12[2] = v15;
    v16 = [NSArray arrayWithObjects:v12 count:3];
    [v6 setCurationPlacements:v16];

    [*(a1 + 48) addObject:v6];
  }
}

void sub_8C1C(uint64_t a1)
{
  v2 = [*(a1 + 32) resourceDirectory];
  [*(a1 + 32) setGalleryPreviewResourceDirectory:v2];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) resourceDirectory];
  (*(v3 + 16))(v3, v4);
}

uint64_t sub_8C9C(uint64_t a1)
{
  [*(a1 + 32) setResourceDirectory:0];
  [*(a1 + 32) setGalleryPreviewResourceDirectory:0];
  [*(a1 + 32) setState:1];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_8D00(uint64_t a1)
{
  NTKPhotosCreateResourceDirectory();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_8F1C;
  v2 = v14[3] = &unk_24A78;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v5 = objc_retainBlock(v14);
  v6 = v5;
  if (v2)
  {
    v7 = *(a1 + 32);
    v8 = [objc_opt_class() _writeAsset:*(v7 + 24) image:*(v7 + 32) withImageCrop:v2 to:{CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];
    if (v8)
    {
      v9 = [NTKKaleidoscopePathfinder pathfinderWithImage:*(*(a1 + 32) + 32)];
      if (![v9 writeToDirectory:v2])
      {
        goto LABEL_7;
      }

      v10 = [v8 encodeAsDictionary];
      v18 = v10;
      v11 = [NSArray arrayWithObjects:&v18 count:1];
      v12 = NTKPhotosWriteImageList();

      if (v12)
      {
        [*(a1 + 32) _reinitializeWithPhoto:v8 image:*(*(a1 + 32) + 32)];
        v13 = 1;
      }

      else
      {
LABEL_7:
        v13 = 0;
      }

      v6[2](v6, v13);
    }

    else
    {
      v6[2](v6, 0);
    }
  }

  else
  {
    (v5[2])(v5, 0);
  }
}

void sub_8F1C(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v5 = v4;
  if (a2)
  {
    v6 = 1;
  }

  else
  {
    if (v4)
    {
      v7 = +[NSFileManager defaultManager];
      [v7 removeItemAtPath:v5 error:0];

      v5 = 0;
    }

    v6 = 0;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_9020;
  v10[3] = &unk_24A50;
  v13 = v6;
  v8 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

uint64_t sub_9020(uint64_t a1)
{
  [*(a1 + 32) setState:*(a1 + 56)];
  [*(a1 + 32) setResourceDirectory:*(a1 + 40)];
  [*(a1 + 32) setGalleryPreviewResourceDirectory:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

uint64_t sub_9250(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setState:a2];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_92C8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6 = 768.0 / [v3 pixelWidth];
    v7 = [v3 pixelHeight];
    if (v6 >= 768.0 / v7)
    {
      v8 = 768.0 / v7;
    }

    else
    {
      v8 = v6;
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_9BB8;
    v9[3] = &unk_24B18;
    v10 = v3;
    v12 = v8;
    v11 = v5;
    [NTKCompanionResourceDirectoryEditor _imageDataForAsset:v10 completion:v9];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

void sub_93E8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_9600(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setState:a2];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_9678(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void sub_996C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void sub_9BB8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [[NTKCompanionImageDataScaler alloc] initWithSize:v6 crop:a3 data:objc_msgSend(v5 orientation:"pixelWidth") outputSize:{objc_msgSend(*(a1 + 32), "pixelHeight"), 0.0, 0.0, objc_msgSend(*(a1 + 32), "pixelWidth"), objc_msgSend(*(a1 + 32), "pixelHeight"), *(a1 + 48) * objc_msgSend(*(a1 + 32), "pixelWidth"), *(a1 + 48) * objc_msgSend(*(a1 + 32), "pixelHeight")}];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_9D10;
  v8[3] = &unk_24AF0;
  v9 = *(a1 + 40);
  [v7 cropAndScaleWithCompletion:v8];
}

void sub_9D10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    a2 = [UIImage imageWithData:a2 scale:1.0];
  }

  v3 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_9DC4(id a1)
{
  qword_2CE28 = [[NTKKaleidoscopeSwatchMappedImageCache alloc] _init];

  _objc_release_x1();
}

void sub_9FA0(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "NTKKaleidoscopeSwatchMappedImageCache: removing key %@", &v5, 0xCu);
  }

  [*(a1 + 40) removeImageForKey:v3];
}

BOOL sub_A37C(id a1, NSString *a2)
{
  v2 = a2;
  v3 = NTKBuildVersion();
  v4 = [(NSString *)v2 hasPrefix:v3];

  return v4 ^ 1;
}

void sub_A66C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 deviceUUID];
  v5 = [CLKDevice deviceForNRDeviceUUID:v4];

  v6 = objc_opt_new();
  if ([NTKKaleidoscopeStyleOption numberOfOptionsForDevice:v5])
  {
    v7 = 0;
    do
    {
      v8 = [NTKKaleidoscopeStyleOption optionAtIndex:v7 forDevice:v5];
      [v6 addObject:v8];

      ++v7;
    }

    while (v7 < [NTKKaleidoscopeStyleOption numberOfOptionsForDevice:v5]);
  }

  v9 = [(NTKKaleidoscopeAssetOption *)NTKKaleidoscopeCustomAssetOption optionWithAsset:1000 forDevice:v5];
  v10 = *(a1 + 32);
  v11 = [NSString stringWithFormat:@"%@", v9];
  [v10 addObject:v11];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_A838;
  v16[3] = &unk_24BF0;
  v17 = v6;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v18 = v12;
  v19 = v13;
  v20 = v9;
  v14 = v9;
  v15 = v6;
  [v3 enumerateFacesUsingBlock:v16];
}

void sub_A838(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 resourceDirectory];
  if ([v3 faceStyle] == &dword_14 + 3 && v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(a1 + 40);
          v10 = *(a1 + 48);
          v12 = [objc_opt_class() keyForAsset:*(a1 + 56) style:*(*(&v13 + 1) + 8 * v9) resourceDirectory:{v4, v13}];
          [v11 addObject:v12];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

uint64_t sub_A994(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 containsString:{*(*(&v11 + 1) + 8 * v8), v11}])
        {

          v9 = [*(a1 + 40) containsObject:v3] ^ 1;
          goto LABEL_11;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

void sub_ABD8(id a1)
{
  qword_2CE38 = objc_opt_new();

  _objc_release_x1();
}

void sub_C7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_C7C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_C7DC(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_C838(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

uint64_t sub_CD1C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_2CE54);
  if (qword_2CE58)
  {
    v3 = qword_2CE58 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_2CE60))
  {
    v5 = byte_2CE50;
  }

  else
  {
    qword_2CE58 = v2;
    qword_2CE60 = [v2 version];
    sub_CDC4(qword_2CE60, v2);
    v5 = 1;
    byte_2CE50 = 1;
  }

  os_unfair_lock_unlock(&stru_2CE54);

  return v5;
}

void sub_CDC4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _EnumValueRange();
  v4 = qword_2CE48;
  qword_2CE48 = v3;

  v5 = [v2 deviceCategory];
  if (v5 != &dword_0 + 1)
  {
    qword_2CE48 = [&off_266B8 arrayByAddingObjectsFromArray:qword_2CE48];

    _objc_release_x1();
  }
}

void sub_CFBC(id a1)
{
  v3[0] = &off_25ED0;
  v3[1] = &off_25EE8;
  v4[0] = NTKFaceBundleKaleidoscopeStyleFaceted;
  v4[1] = NTKFaceBundleKaleidoscopeStyleRadial;
  v3[2] = &off_25F00;
  v3[3] = &off_25EB8;
  v4[2] = NTKFaceBundleKaleidoscopeStyleLimit;
  v4[3] = NTKFaceBundleKaleidoscopeStyleFullscreenFacet;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_2CE68;
  qword_2CE68 = v1;
}

void sub_D35C(id a1)
{
  v3[0] = &off_25ED0;
  v3[1] = &off_25EE8;
  v4[0] = NTKFaceBundleKaleidoscopeAsset01;
  v4[1] = NTKFaceBundleKaleidoscopeAsset02;
  v3[2] = &off_25F00;
  v3[3] = &off_25EB8;
  v4[2] = NTKFaceBundleKaleidoscopeAsset03;
  v4[3] = NTKFaceBundleKaleidoscopeAsset04;
  v3[4] = &off_26170;
  v3[5] = &off_26188;
  v4[4] = NTKFaceBundleKaleidoscopeAsset05;
  v4[5] = NTKFaceBundleKaleidoscopeAsset06;
  v3[6] = &off_261A0;
  v3[7] = &off_261B8;
  v4[6] = NTKFaceBundleKaleidoscopeAsset07;
  v4[7] = NTKFaceBundleKaleidoscopeAsset08;
  v3[8] = &off_26128;
  v3[9] = &off_26110;
  v4[8] = NTKFaceBundleKaleidoscopeAsset09;
  v4[9] = NTKFaceBundleKaleidoscopeAsset10;
  v3[10] = &off_26140;
  v3[11] = &off_26158;
  v4[10] = NTKFaceBundleKaleidoscopeAsset11;
  v4[11] = NTKFaceBundleKaleidoscopeAsset12;
  v3[12] = &off_260E0;
  v3[13] = &off_260B0;
  v4[12] = NTKFaceBundleKaleidoscopeAsset13;
  v4[13] = NTKFaceBundleKaleidoscopeAsset14;
  v3[14] = &off_260C8;
  v3[15] = &off_260F8;
  v4[14] = NTKFaceBundleKaleidoscopeAsset15;
  v4[15] = NTKFaceBundleKaleidoscopeAsset16;
  v3[16] = &off_26008;
  v3[17] = &off_26020;
  v4[16] = NTKFaceBundleKaleidoscopeAsset17;
  v4[17] = NTKFaceBundleKaleidoscopeAsset18;
  v3[18] = &off_26038;
  v3[19] = &off_26050;
  v4[18] = NTKFaceBundleKaleidoscopeAsset19;
  v4[19] = NTKFaceBundleKaleidoscopeAsset20;
  v3[20] = &off_26068;
  v3[21] = &off_26080;
  v4[20] = NTKFaceBundleKaleidoscopeAsset21;
  v4[21] = NTKFaceBundleKaleidoscopeAsset22;
  v3[22] = &off_26098;
  v3[23] = &off_25FA8;
  v4[22] = NTKFaceBundleKaleidoscopeAsset23;
  v4[23] = NTKFaceBundleKaleidoscopeAsset24;
  v3[24] = &off_25FF0;
  v3[25] = &off_25FD8;
  v4[24] = NTKFaceBundleKaleidoscopeAsset25;
  v4[25] = NTKFaceBundleKaleidoscopeAsset26;
  v3[26] = &off_25FC0;
  v3[27] = &off_25F18;
  v4[26] = NTKFaceBundleKaleidoscopeAsset27;
  v4[27] = NTKFaceBundleKaleidoscopeAsset28;
  v3[28] = &off_25F30;
  v3[29] = &off_25F48;
  v4[28] = NTKFaceBundleKaleidoscopeAsset29;
  v4[29] = NTKFaceBundleKaleidoscopeAsset30;
  v3[30] = &off_25F60;
  v3[31] = &off_25F78;
  v4[30] = NTKFaceBundleKaleidoscopeAsset31;
  v4[31] = NTKFaceBundleKaleidoscopeAsset32;
  v3[32] = &off_25F90;
  v4[32] = NTKFaceBundleKaleidoscopeAsset33;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:33];
  v2 = qword_2CE78;
  qword_2CE78 = v1;
}

uint64_t sub_D8AC(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&stru_2CE94);
  if (qword_2CE98)
  {
    v4 = qword_2CE98 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 && (v5 = [v3 version], v5 == qword_2CEA0))
  {
    v6 = byte_2CE90;
  }

  else
  {
    qword_2CE98 = v3;
    qword_2CEA0 = [v3 version];
    v8 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_DA60;
    v9[3] = &unk_24CE8;
    v9[4] = v8;
    sub_DA60(v9, v3);
    v6 = 1;
    byte_2CE90 = 1;
  }

  os_unfair_lock_unlock(&stru_2CE94);

  return v6;
}

uint64_t sub_D9EC(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_DA60;
  v3[3] = &unk_24CE8;
  v3[4] = *(a1 + 32);
  sub_DA60(v3, a2);
  return 1;
}

void sub_DA60(uint64_t a1, uint64_t a2)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___NTKKaleidoscopeCustomAssetOption;
  v2 = objc_msgSendSuper2(&v5, "_orderedValuesForDevice:", a2);
  v3 = [&off_26748 arrayByAddingObjectsFromArray:v2];
  v4 = qword_2CE88;
  qword_2CE88 = v3;
}

void sub_DD04(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = NTKKaleidoscopeCustomAssetOption;
  v1 = objc_msgSendSuper2(&v5, "_valueToFaceBundleStringDict");
  v2 = [v1 mutableCopy];

  [v2 setObject:NTKFaceBundleKaleidoscopeAssetCustom forKeyedSubscript:&off_261D0];
  v3 = [v2 copy];
  v4 = qword_2CEA8;
  qword_2CEA8 = v3;
}

uint64_t sub_DDDC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_2CEC4);
  if (qword_2CEC8)
  {
    v3 = qword_2CEC8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_2CED0))
  {
    v5 = byte_2CEC0;
  }

  else
  {
    qword_2CEC8 = v2;
    qword_2CED0 = [v2 version];
    sub_DE80();
    v5 = 1;
    byte_2CEC0 = 1;
  }

  os_unfair_lock_unlock(&stru_2CEC4);

  return v5;
}

void sub_DE80()
{
  v2[0] = xmmword_1B4C8;
  v2[1] = unk_1B4D8;
  v2[2] = xmmword_1B4E8;
  v2[3] = unk_1B4F8;
  v0 = [NSIndexSet indexSetWithIndexes:v2 count:8];
  v1 = qword_2CEB8;
  qword_2CEB8 = v0;
}

uint64_t sub_DF08(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_2CEE4);
  if (qword_2CEE8)
  {
    v3 = qword_2CEE8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_2CEF0))
  {
    v5 = byte_2CEE0;
  }

  else
  {
    qword_2CEE8 = v2;
    qword_2CEF0 = [v2 version];
    sub_DFAC();
    v5 = 1;
    byte_2CEE0 = 1;
  }

  os_unfair_lock_unlock(&stru_2CEE4);

  return v5;
}

void sub_DFAC()
{
  v2[0] = xmmword_1B508;
  v2[1] = unk_1B518;
  v2[2] = xmmword_1B528;
  v3 = 22;
  v0 = [NSIndexSet indexSetWithIndexes:v2 count:7];
  v1 = qword_2CED8;
  qword_2CED8 = v0;
}

void sub_E7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_E81C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained complicationColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v3 = ;

  return v3;
}

id sub_E884(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[6];
  }

  else
  {
    v3 = CLKUIDefaultComplicationBackgroundColor();
  }

  v4 = v3;

  return v4;
}

void sub_10B28(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = [a3 display];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = v10;
    v6 = [v4 complicationColor];
    [v5 setForegroundColor:v6];

    [v5 setPlatterColor:*(*(a1 + 32) + 48)];
  }

  if ([v10 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v7 = *(a1 + 32);
    v8 = v10;
    v9 = [v7 complicationColor];
    [v8 setForegroundColor:v9];
  }
}

void sub_119C8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 display];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = v7;
    v6 = [v4 complicationColor];
    [*(a1 + 32) setComplicationColor:v6];
    [*(a1 + 32) setInterpolatedComplicationColor:v6];
    [v5 updateMonochromeColor];
  }
}

uint64_t sub_11B74(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_2CF64);
  if (qword_2CF68)
  {
    v3 = qword_2CF68 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_2CF70))
  {
    v5 = byte_2CF60;
  }

  else
  {
    qword_2CF68 = v2;
    qword_2CF70 = [v2 version];
    sub_11C1C(qword_2CF70, v2);
    v5 = 1;
    byte_2CF60 = 1;
  }

  os_unfair_lock_unlock(&stru_2CF64);

  return v5;
}

void sub_11C1C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 sizeClass];
  [NTKAnalogUtilities dialSizeForDevice:v2];
  *&qword_2CEF8 = v4 + -1.0;
  qword_2CF00 = 0;
  unk_2CF08 = 0;
  *&qword_2CF10 = v4 + -1.0;
  unk_2CF18 = v4 + -1.0;
  v5 = -3.0;
  if (!v3)
  {
    v5 = -2.0;
  }

  qword_2CF20 = 0;
  qword_2CF28 = *&v5;
  *algn_2CF30 = CGPointZero;
  qword_2CF40 = 0x3FF0000000000000;
  [v2 screenBounds];
  v7 = v6;
  [NTKAnalogUtilities dialSizeForDevice:v2];
  *&v8 = v7 / v8;
  dword_2CF48 = LODWORD(v8);
  v9 = [v2 deviceCategory];
  v10 = 10;
  if (v9 != &dword_0 + 1)
  {
    v10 = 24;
  }

  qword_2CF50 = v10;
  v11 = [v2 deviceCategory];

  v12 = 30;
  if (v11 == &dword_0 + 1)
  {
    v12 = 24;
  }

  qword_2CF58 = v12;
}

void sub_11D14(id a1)
{
  qword_2CF78 = [UIColor colorWithWhite:0.898039216 alpha:1.0];

  _objc_release_x1();
}

void sub_127C4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = _NTKKaleidoscopeLoggingObjectForDomain(0, "NTKKaleidoscopeLoggingDomainDefault");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_152B4();
    }

    objc_end_catch();
    JUMPOUT(0x12770);
  }

  _Unwind_Resume(exception_object);
}

void sub_12F84(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_12FA4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_15030(id a1)
{
  qword_2CF90 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

void sub_15118(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[kaleidoscope pathfinder cache] link failed %@", &v2, 0xCu);
}

void sub_151D4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[kaleidoscope pathfinder cache] missing pathfinder: %@", &v2, 0xCu);
}

void sub_15524(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[kaleidoscope pathfinder cache] insufficent path length %d", v2, 8u);
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}