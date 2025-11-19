float quadratic_interpolation(const float (*a1)[3], float *a2, float *a3)
{
  v6 = quadratic_interpolation_dx(a1);
  *a2 = v6;
  result = (*a1)[1] + (v6 * ((*a1)[0] - (*a1)[2])) * -0.25;
  *a3 = result;
  return result;
}

uint64_t find_near_peak(const float *a1, float a2, unsigned int a3)
{
  v3 = ((a3 + a2) + 0.5);
  v4 = (a2 - a3);
  if (v4 >= v3)
  {
    return ((a3 + a2) + 0.5);
  }

  v5 = a1[v3];
  LODWORD(v6) = v3;
  do
  {
    if (a1[v4] <= v5)
    {
      v6 = v6;
    }

    else
    {
      v5 = a1[v4];
      v6 = v4;
    }

    ++v4;
  }

  while (v3 != v4);
  return v6;
}

float quadratic_interpolation_dx(const float (*a1)[3])
{
  v1 = (*a1)[2];
  v2 = ((*a1)[0] + ((*a1)[1] * -2.0)) + v1;
  result = 0.0;
  if (v2 != 0.0)
  {
    v4 = ((*a1)[0] - v1) * 0.5 / v2;
    result = 0.5;
    if (v4 <= 0.5)
    {
      result = ((*a1)[0] - v1) * 0.5 / v2;
      if (v4 < -0.5)
      {
        return -0.5;
      }
    }
  }

  return result;
}

float32x4_t fun_get_calibration_param(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a1)
  {
    if (a3)
    {
      v3 = vdupq_n_s32(0x2F800000u);
      *a3 = vmulq_f32(vcvtq_f32_u32(*(a1 + 16)), v3);
      *(a3 + 24) = *(a1 + 40) * 2.3283e-10;
      *(a3 + 16) = vmul_f32(vcvt_f32_u32(*(a1 + 32)), *v3.f32);
      v4.i64[0] = *(a2 + 12);
      *v3.f32 = vadd_s32(*(a1 + 76), *v4.i8);
      v4.i64[1] = v4.i64[0];
      *(a3 + 28) = vcvtq_f32_s32(vaddq_s32(*(a1 + 44), v4));
      *(a3 + 44) = vcvtq_f32_s32(vaddq_s32(*(a1 + 60), v4));
      *(a3 + 60) = vcvt_f32_s32(*v3.f32);
      v3.i64[0] = 0x3A0000003A000000;
      v3.i64[1] = 0x3A0000003A000000;
      *(a3 + 68) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*(a1 + 86))), v3);
      result = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*(a1 + 94))), v3);
      *(a3 + 84) = result;
    }
  }

  return result;
}

float getGainAndOffset(float *a1, int a2, float *a3, float *a4, _DWORD *a5, float *a6, float result)
{
  if (a1)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        *a4 = a1[18] * a1[20];
        v7 = a1[17] * a1[19];
        v8 = 12;
        v9 = 11;
        goto LABEL_12;
      }

      if (a2 == 7)
      {
        *a4 = (a1[18] * a1[20]) * a1[22];
        v7 = (a1[17] * a1[19]) * a1[21];
        v8 = 14;
        v9 = 13;
        goto LABEL_12;
      }
    }

    else
    {
      if (!a2)
      {
        *a4 = 1.0;
        v7 = 1.0;
        v8 = 8;
        v9 = 7;
        goto LABEL_12;
      }

      if (a2 == 1)
      {
        *a4 = a1[18];
        v7 = a1[17];
        v8 = 10;
        v9 = 9;
LABEL_12:
        *a3 = v7;
        *a5 = LODWORD(a1[v9]);
        result = a1[v8];
        *a6 = result;
        return result;
      }
    }

    *a4 = ((a1[18] * a1[20]) * a1[22]) * a1[24];
    v7 = ((a1[17] * a1[19]) * a1[21]) * a1[23];
    v8 = 16;
    v9 = 15;
    goto LABEL_12;
  }

  return result;
}

float fun_get_lux(float *a1, int a2, float a3, float a4, float a5, float a6, float a7, float a8)
{
  if (!a1)
  {
    return 0.0;
  }

  v8 = -(a8 - (a3 * 8388600.0));
  v9 = -(a7 - (a4 * 8388600.0));
  if (a2 == 1)
  {
    v10 = 1;
    v11 = a1;
  }

  else if (v8 == 0.0 || (v9 / v8) >= a1[4])
  {
    v11 = a1 + 5;
    v10 = 6;
  }

  else
  {
    v11 = a1 + 2;
    v10 = 3;
  }

  return (-(a1[v10] * v9) * a5) + ((v8 * *v11) * a6);
}

uint64_t jasperDetectC(float *a1, float *a2, unsigned int a3, char a4, uint64_t a5, uint64_t a6, _BOOL4 a7, float a8, float a9, float a10, float a11)
{
  v21 = 0xFFFFFFFFLL;
  v22 = H16ISP::H16ISPGetCFPreferenceNumber(@"FlickerDetectorAlphaNumerator", @"com.apple.coremedia", 0xFFFFFFFFLL);
  v23 = H16ISP::H16ISPGetCFPreferenceNumber(@"FlickerDetectorAlphaDenominator", @"com.apple.coremedia", 0xFFFFFFFFLL);
  v24 = H16ISP::H16ISPGetCFPreferenceNumber(@"FlickerDetectorIsGrimaldi", @"com.apple.coremedia", 2);
  v26 = 0.8;
  if (v22 != -1 && v23 != -1)
  {
    v26 = v22 / v23;
  }

  *(a6 + 40) = -1;
  v27 = v24 != 0;
  if (v24 == 2)
  {
    v27 = a7;
  }

  if (a3 >= 0x7D0 && a1 && a2 && a5 && a6)
  {
    v28 = a5 + 8000;
    v29 = a11 * 1.05;
    v30 = a10 * 1.1;
    if (a4)
    {
      LODWORD(v31) = *(a5 + 16000);
    }

    else
    {
      v31 = 2000;
      v32 = a5;
      do
      {
        v33 = *a2++;
        *v32 = (v33 - v29) * a9;
        v34 = *a1++;
        v32[2000] = (v34 - v30) * a8;
        ++v32;
        --v31;
      }

      while (v31);
      a3 -= 2000;
      if (!a3)
      {
        goto LABEL_19;
      }
    }

    v35 = 1.0 - v26;
    v36 = v31;
    v37 = a3;
    do
    {
      v38 = v36 % 0x7D0;
      v39 = *a2++;
      *(a5 + 4 * v38) = ((v26 * (v39 - v29)) * a9) + (*(a5 + 4 * v38) * v35);
      v40 = *a1++;
      *(v28 + 4 * v38) = ((v26 * (v40 - v30)) * a8) + (*(v28 + 4 * v38) * v35);
      ++v36;
      --v37;
    }

    while (v37);
    LODWORD(v31) = (a3 + v31) % 0x7D0;
LABEL_19:
    *(a5 + 16000) = v31;
    v41 = 0.0;
    v42 = 532;
    v43 = a5;
    v44 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
    do
    {
      v45 = v45 + *v43;
      v46 = v46 + v43[1067];
      v41 = v41 + v43[2000];
      v44 = v44 + v43[3067];
      ++v43;
      --v42;
    }

    while (v42);
    v47 = 0.0;
    v48 = 133;
    v49 = a5;
    v50 = 0.0;
    v51 = 0.0;
    v52 = 0.0;
    v53 = 0.0;
    v54 = 0.0;
    do
    {
      v55 = v49[533];
      v54 = v54 + v55;
      v50 = v50 + (v55 * v55);
      v56 = v49[800];
      v52 = v52 + v56;
      v51 = v51 + (v56 * v56);
      v47 = v47 + v49[2533];
      v53 = v53 + v49[2800];
      ++v49;
      --v48;
    }

    while (v48);
    v57 = 133;
    v58 = a5;
    v59 = v50;
    v60 = v51;
    v61 = v52;
    v62 = v54;
    do
    {
      v63 = v58[666];
      v62 = v62 + v63;
      v59 = v59 + (v63 * v63);
      v64 = v58[933];
      v61 = v61 + v64;
      v60 = v60 + (v64 * v64);
      v47 = v47 + v58[2666];
      v53 = v53 + v58[2933];
      ++v58;
      --v57;
    }

    while (v57);
    v65 = 0;
    v66 = 266;
    v67 = 0.0;
    v68 = 133;
    v69 = 532;
    v70 = 0.0;
    v71 = a5;
    while (1)
    {
      *v25.i32 = v46 + v45;
      v72 = v44 + v41;
      if (v27)
      {
        v73 = v41 - v44;
        if ((v41 - v44) < 0.0)
        {
          v73 = -(v41 - v44);
        }

        v74 = v45 - v46;
        if ((v45 - v46) < 0.0)
        {
          v74 = -(v45 - v46);
        }

        if (v45 < 0.0 || v46 < 0.0 || v41 < 0.0 || v44 < 0.0 || ((v74 / *v25.i32) + (v73 / v72)) > 0.125)
        {
          goto LABEL_55;
        }
      }

      v75 = -(*v25.i32 - ((v62 + v61) * 2.0));
      v76 = -(v72 - ((v53 + v47) * 2.0));
      if (v27)
      {
        v67 = (v75 / sqrtf(*v25.i32)) + (v76 / sqrtf(v72));
        if (v67 > v70)
        {
          v77 = v76 - (*v25.i32 - ((v62 + v61) * 2.0));
LABEL_43:
          *a6 = v25.i32[0];
          *(a6 + 4) = v62;
          *(a6 + 24) = v47;
          *(a6 + 28) = v53;
          *(a6 + 16) = v54;
          *(a6 + 20) = v72;
          *(a6 + 8) = v61;
          *(a6 + 12) = v52;
          v79.f32[0] = v62 - v54;
          *v25.i32 = *v25.i32 * 0.125;
          v80.f32[0] = v59 - v50;
          v79.f32[1] = v54;
          v81 = vdup_lane_s32(v25, 0);
          v82 = vsub_f32(v79, v81);
          v80.f32[1] = v50;
          v83 = vdup_n_s32(0x43050000u);
          v84 = vmla_f32(vmul_f32(v79, vneg_f32(v79)), v83, v80);
          v85 = vdup_n_s32(0x3C23D70Au);
          v86 = vdiv_f32(vmul_f32(v82, v82), vmaxnm_f32(v84, v85));
          v82.f32[0] = v61 - v52;
          v87.f32[0] = v60 - v51;
          v82.f32[1] = v52;
          v88 = vsub_f32(v82, v81);
          v87.f32[1] = v51;
          v25 = vdiv_f32(vmul_f32(v88, v88), vmaxnm_f32(vmla_f32(vmul_f32(v82, vneg_f32(v82)), v83, v87), v85));
          v89 = v86.f32[1];
          if (v86.f32[0] < v86.f32[1])
          {
            v89 = v86.f32[0];
          }

          if (*v25.i32 >= *&v25.i32[1])
          {
            v90 = *&v25.i32[1];
          }

          else
          {
            v90 = *v25.i32;
          }

          if (v89 >= v90)
          {
            v89 = v90;
          }

          *(a6 + 32) = *&v25.i32[1] + (*v25.i32 + vaddv_f32(v86));
          *(a6 + 36) = v89;
          *(a6 + 40) = v65;
          if (v76 <= 0.0)
          {
            v70 = v75;
          }

          else
          {
            v70 = v77;
          }

          if (v27)
          {
            v70 = v67;
          }
        }
      }

      else
      {
        v77 = v76 - (*v25.i32 - ((v62 + v61) * 2.0));
        if (v75 > v70 || v77 > v70)
        {
          goto LABEL_43;
        }
      }

LABEL_55:
      if (v65 >= 0x5BC)
      {
        v91 = -1468;
      }

      else
      {
        v91 = 532;
      }

      v92 = v91 + v65;
      if (v65 >= 0x3A5)
      {
        v93 = -933;
      }

      else
      {
        v93 = 1067;
      }

      if (v65 >= 0x3A5)
      {
        v94 = -933;
      }

      else
      {
        v94 = 1067;
      }

      v95 = v65 + v94;
      v96 = v65 + v93 - 2000 * ((v93 + v69) / 0x7D0u);
      if (v65 >= 0x5BB)
      {
        v97 = -1467;
      }

      else
      {
        v97 = 533;
      }

      if (v65 >= 0x5BB)
      {
        v98 = -1467;
      }

      else
      {
        v98 = 533;
      }

      v99 = v65 + v98;
      v100 = v65 + v97 - 2000 * ((v97 + v66) / 0x7D0u);
      v101 = v65 + v97 - 2000 * ((v97 + v68) / 0x7D0u);
      if (v65 >= 0x4B0)
      {
        v102 = -1200;
      }

      else
      {
        v102 = 800;
      }

      if (v65 >= 0x4B0)
      {
        v103 = -1200;
      }

      else
      {
        v103 = 800;
      }

      v104 = v65 + v103;
      v105 = v96 + 532;
      v106 = v100 + 266;
      v107 = v65 + v102 - 2000 * ((v102 + v66) / 0x7D0u) + 266;
      v45 = v45 + (*(a5 + 4 * v92) - *v71);
      v46 = v46 + (*(a5 + 4 * v105) - *(a5 + 4 * v95));
      v41 = v41 + (*(v28 + 4 * v92) - v71[2000]);
      v108 = *(a5 + 4 * v106);
      v44 = v44 + (*(v28 + 4 * v105) - *(v28 + 4 * v95));
      v109 = *(a5 + 4 * v99);
      v62 = v62 + (v108 - v109);
      v59 = v59 + ((v108 * v108) - (v109 * v109));
      v47 = v47 + (*(v28 + 4 * v106) - *(v28 + 4 * v99));
      v110 = *(a5 + 4 * (v101 + 133));
      v54 = v54 + (v110 - v109);
      v111 = (v110 * v110) - (v109 * v109);
      v112 = *(a5 + 4 * v107);
      v113 = *(a5 + 4 * v104);
      v50 = v50 + v111;
      v61 = v61 + (v112 - v113);
      v60 = v60 + ((v112 * v112) - (v113 * v113));
      v53 = v53 + (*(v28 + 4 * v107) - *(v28 + 4 * v104));
      v114 = *(a5 + 4 * (v65 + v102 - 2000 * ((v102 + v68) / 0x7D0u) + 133));
      v52 = v52 + (v114 - v113);
      ++v71;
      ++v66;
      v51 = v51 + ((v114 * v114) - (v113 * v113));
      ++v68;
      ++v69;
      if (++v65 == 2000)
      {
        v21 = 0;
        *(a6 + 44) = a4;
        *(a6 + 45) = v27;
        return v21;
      }
    }
  }

  return v21;
}

uint64_t peridotDetectC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, float *__dst, unsigned int a6, uint64_t a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a3 < 0x506 || !a2 || !a1 || !__dst || a6 >> 3 < 0x295 || !a7)
  {
    return v7;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  *(a7 + 76) = -1;
  v15 = __dst[1286];
  v16 = __dst[1287];
  v17 = __dst[1288];
  v18 = __dst[1289];
  v19 = __dst[1290];
  v20 = __dst[1291];
  v21 = __dst[1292];
  v22 = __dst[1293];
  v23 = __dst[1294];
  v24 = __dst[1295];
  v25 = __dst[1296];
  v26 = __dst[1297];
  v27 = __dst[1298];
  v28 = __dst[1299];
  v29 = __dst[1300];
  v30 = __dst[1301];
  v31 = __dst[1302];
  v32 = __dst[1303];
  v33 = __dst[1304];
  v34 = __dst[1305];
  v35 = __dst[1306];
  v36 = __dst[1307];
  v37 = __dst[1308];
  v38 = __dst[1309];
  v137 = __dst[1310];
  v39 = __dst[1312];
  v40 = __dst[1311];
  v41 = __dst[1313];
  v42 = __dst[1314];
  v43 = __dst[1315];
  v44 = __dst[1316];
  v45 = a4 >> 2;
  v46 = __dst[1317];
  v47 = (a4 >> 1) + (a4 >> 2);
  v48 = __dst[1318];
  v49 = __dst[1319];
  do
  {
    if (v9 >= 1286)
    {
      v50 = (a1 - 5144);
    }

    else
    {
      v50 = __dst;
    }

    v51 = v50[v9];
    v52 = &__dst[v9 + 368];
    if (v9 - 918 >= 0)
    {
      v52 = (a1 + 4 * (v9 - 918));
    }

    v15 = v15 + (*v52 - v51);
    v53 = &__dst[v9 + 918];
    if (v9 - 368 >= 0)
    {
      v53 = (a1 + 4 * (v9 - 368));
    }

    v54 = *v53;
    v55 = &__dst[v9 + 1286];
    if (v9 >= 0)
    {
      v55 = (a1 + 4 * v9);
    }

    v16 = v16 + (*v55 - v54);
    v56 = &__dst[v9 + 427];
    if (v9 - 859 >= 0)
    {
      v56 = (a1 + 4 * (v9 - 859));
    }

    v57 = *v56;
    v58 = &__dst[v9 + 473];
    if (v9 - 813 >= 0)
    {
      v58 = (a1 + 4 * (v9 - 813));
    }

    v17 = v17 + (*v58 - v57);
    v59 = &__dst[v9 + 533];
    if (v9 - 753 >= 0)
    {
      v59 = (a1 + 4 * (v9 - 753));
    }

    v60 = *v59;
    v61 = &__dst[v9 + 579];
    if (v9 - 707 >= 0)
    {
      v61 = (a1 + 4 * (v9 - 707));
    }

    v18 = v18 + (*v61 - v60);
    v62 = &__dst[v9 + 647];
    if (v9 - 639 >= 0)
    {
      v62 = (a1 + 4 * (v9 - 639));
    }

    v63 = *v62;
    v64 = &__dst[v9 + 693];
    if (v9 - 593 >= 0)
    {
      v64 = (a1 + 4 * (v9 - 593));
    }

    v19 = v19 + (*v64 - v63);
    v65 = &__dst[v9 + 754];
    if (v9 - 532 >= 0)
    {
      v65 = (a1 + 4 * (v9 - 532));
    }

    v66 = *v65;
    v67 = &__dst[v9 + 800];
    if (v9 - 486 >= 0)
    {
      v67 = (a1 + 4 * (v9 - 486));
    }

    v20 = v20 + (*v67 - v66);
    v68 = (v15 + v16) * -0.25;
    v69 = (((v17 + v18) + v19) + v20) + v68;
    if (v69 > v21)
    {
      v10 = 1;
      v11 = v9;
      v21 = (((v17 + v18) + v19) + v20) + v68;
      v22 = v30;
      v23 = v15;
      v24 = v16;
      v25 = v17;
      v26 = v18;
      v27 = v19;
      v28 = v20;
    }

    if (v69 > v31)
    {
      v14 = 1;
      v12 = v9;
      v31 = (((v17 + v18) + v19) + v20) + v68;
      v32 = v30;
      v33 = v15;
      v34 = v16;
      v35 = v17;
      v36 = v18;
      v37 = v19;
      v38 = v20;
    }

    v70 = v31;
    if (v30 == (a4 >> 1) - 1)
    {
      if (v32 < v45 || v32 >= v47)
      {
        if (v14)
        {
          v83 = v12 + 919;
          v84 = (v33 + v34) / 368.0 * 0.5;
          v85 = 0.0;
          v86 = 368;
          do
          {
            v87 = v83 - 918;
            if (v83 >= 1286)
            {
              v88 = (a1 - 5144);
            }

            else
            {
              v88 = __dst;
            }

            v89 = v88[v83] - v84;
            if (v87 >= 1286)
            {
              v90 = (a1 - 5144);
            }

            else
            {
              v90 = __dst;
            }

            v91 = v85 + v89 * v89;
            v92 = v90[v87] - v84;
            v85 = v91 + v92 * v92;
            ++v83;
            --v86;
          }

          while (v86);
          v31 = -3.4028e38;
          v40 = v70;
          v39 = v32;
          v41 = v33;
          v42 = v34;
          v49 = sqrt(v85 / 368.0 * 0.5);
          v43 = v35;
          v44 = v36;
          v46 = v37;
          v48 = v38;
        }

        else
        {
          v31 = -3.4028e38;
          v40 = v70;
          v39 = v32;
          v41 = v33;
          v42 = v34;
          v43 = v35;
          v44 = v36;
          v46 = v37;
          v48 = v38;
          v49 = v137;
        }
      }

      else
      {
        v31 = -3.4028e38;
      }
    }

    if (v30 == a4 - 1)
    {
      if (v22 < v45 || v22 >= v47 || v21 < v40)
      {
        v21 = -3.4028e38;
        v93 = v40 <= -3.4028e38;
        v40 = -3.4028e38;
        if (v93)
        {
          goto LABEL_68;
        }

        *(a7 + 4) = v43;
        *(a7 + 8) = v44;
        *(a7 + 12) = v46;
        *(a7 + 16) = v48;
        *(a7 + 20) = v42;
        *(a7 + 24) = v41;
        v71 = v49;
        *(a7 + 76) = v39;
      }

      else
      {
        *(a7 + 4) = v25;
        *(a7 + 8) = v26;
        *(a7 + 12) = v27;
        *(a7 + 16) = v28;
        *(a7 + 20) = v24;
        *(a7 + 24) = v23;
        v71 = v29;
        *(a7 + 76) = v22;
        if (v10)
        {
          v72 = v46;
          v73 = v11 + 919;
          v74 = (v23 + v24) / 368.0 * 0.5;
          v75 = 0.0;
          v76 = 368;
          do
          {
            v77 = v73 - 918;
            if (v73 >= 1286)
            {
              v78 = (a1 - 5144);
            }

            else
            {
              v78 = __dst;
            }

            v79 = v78[v73] - v74;
            if (v77 >= 1286)
            {
              v80 = (a1 - 5144);
            }

            else
            {
              v80 = __dst;
            }

            v81 = v75 + v79 * v79;
            v82 = v80[v77] - v74;
            v75 = v81 + v82 * v82;
            ++v73;
            --v76;
          }

          while (v76);
          v71 = sqrt(v75 / 368.0 * 0.5);
          v46 = v72;
        }
      }

      *a7 = v71;
      v13 = 1;
      v21 = -3.4028e38;
      v40 = -3.4028e38;
    }

LABEL_68:
    ++v9;
    v30 = (v30 + 1) % a4;
  }

  while (v9 != a3);
  v116 = v40;
  if (v10)
  {
    v94 = v11 + 919;
    v95 = (v23 + v24) / 368.0 * 0.5;
    v96 = 0.0;
    v97 = 368;
    do
    {
      v98 = v94 - 918;
      if (v94 >= 1286)
      {
        v99 = (a1 - 5144);
      }

      else
      {
        v99 = __dst;
      }

      v100 = v99[v94] - v95;
      if (v98 >= 1286)
      {
        v101 = (a1 - 5144);
      }

      else
      {
        v101 = __dst;
      }

      v102 = v96 + v100 * v100;
      v103 = v101[v98] - v95;
      v96 = v102 + v103 * v103;
      ++v94;
      --v97;
    }

    while (v97);
    v29 = sqrt(v96 / 368.0 * 0.5);
  }

  if (v14)
  {
    v104 = v12 + 919;
    v105 = (v33 + v34) / 368.0 * 0.5;
    v106 = 0.0;
    v107 = 368;
    do
    {
      v108 = v104 - 918;
      if (v104 >= 1286)
      {
        v109 = (a1 - 5144);
      }

      else
      {
        v109 = __dst;
      }

      v110 = v109[v104] - v105;
      if (v108 >= 1286)
      {
        v111 = (a1 - 5144);
      }

      else
      {
        v111 = __dst;
      }

      v112 = v106 + v110 * v110;
      v113 = v111[v108] - v105;
      v106 = v112 + v113 * v113;
      ++v104;
      --v107;
    }

    while (v107);
    v114 = sqrt(v106 / 368.0 * 0.5);
    v137 = v114;
  }

  v117 = v49;
  v118 = v48;
  v119 = v46;
  v120 = v44;
  v121 = v43;
  v122 = v42;
  v123 = v41;
  v124 = v29;
  v125 = v38;
  v126 = v28;
  v127 = v37;
  v128 = v27;
  v129 = v36;
  v130 = v26;
  v131 = v35;
  v132 = v25;
  v133 = v34;
  v134 = v24;
  v135 = v33;
  v136 = v23;
  if ((v13 & 1) == 0)
  {
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 24) = 0;
    *(a7 + 16) = 0;
    *(a7 + 76) = -1;
  }

  *(a7 + 60) = 0u;
  *(a7 + 44) = 0u;
  *(a7 + 28) = 0u;
  *(a7 + 80) = 0;
  *(a7 + 86) = 0;
  memcpy(__dst, (a1 + 4 * a3 - 5144), 0x1418uLL);
  v7 = 0;
  __dst[1286] = v15;
  __dst[1287] = v16;
  __dst[1288] = v17;
  __dst[1289] = v18;
  __dst[1290] = v19;
  __dst[1291] = v20;
  __dst[1292] = v21;
  __dst[1293] = v22;
  __dst[1294] = v136;
  __dst[1295] = v134;
  __dst[1296] = v132;
  __dst[1297] = v130;
  __dst[1298] = v128;
  __dst[1299] = v126;
  __dst[1300] = v124;
  __dst[1301] = v30;
  __dst[1302] = v31;
  __dst[1303] = v32;
  __dst[1304] = v135;
  __dst[1305] = v133;
  __dst[1306] = v131;
  __dst[1307] = v129;
  __dst[1308] = v127;
  __dst[1309] = v125;
  __dst[1310] = v137;
  __dst[1311] = v116;
  __dst[1312] = v39;
  __dst[1313] = v123;
  __dst[1314] = v122;
  __dst[1315] = v121;
  __dst[1316] = v120;
  __dst[1317] = v119;
  __dst[1318] = v118;
  __dst[1319] = v117;
  return v7;
}

void Algo::asin(uint64_t a1, uint64_t a2)
{
  initThreadPool();
  Matrix<double>::Resize(a2, *(a1 + 16), *(a1 + 20));
  if (g_CoresNumber == 1)
  {
    std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
  }

  std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
}

void initThreadPool(void)
{
  if (!g_ThreadPool)
  {
    v0 = std::thread::hardware_concurrency();
    if (v0)
    {
      v1 = v0;
    }

    else
    {
      v1 = 2;
    }

    g_CoresNumber = v1;
    operator new[]();
  }
}

void trigoThreadSingleArg(double *a1, double *a2, double (*a3)(double), int a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    do
    {
      v8 = *a1++;
      *a2++ = a3(v8);
      --v4;
    }

    while (v4);
  }
}

void Algo::sin(uint64_t a1, uint64_t a2)
{
  initThreadPool();
  Matrix<double>::Resize(a2, *(a1 + 16), *(a1 + 20));
  if (g_CoresNumber == 1)
  {
    std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
  }

  std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
}

void Algo::atan(uint64_t a1, uint64_t a2)
{
  initThreadPool();
  Matrix<double>::Resize(a2, *(a1 + 16), *(a1 + 20));
  if (g_CoresNumber == 1)
  {
    std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
  }

  std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
}

void Algo::atan2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  initThreadPool();
  Matrix<double>::Resize(a3, *(a2 + 16), *(a2 + 20));
  if (g_CoresNumber == 1)
  {
    std::thread::thread<void (&)(double const*,double const*,double *,double (*)(double,double),int),double const*&,double const*&,double *&,double (*)(double,double),int &,0>();
  }

  std::thread::thread<void (&)(double const*,double const*,double *,double (*)(double,double),int),double const*&,double const*&,double *&,double (*)(double,double),int &,0>();
}

void trigoThreadMultipleArg(double *a1, double *a2, double *a3, double (*a4)(double, double), int a5)
{
  if (a5 >= 1)
  {
    v5 = a5;
    do
    {
      v10 = *a1++;
      v11 = v10;
      v12 = *a2++;
      *a3++ = a4(v11, v12);
      --v5;
    }

    while (v5);
  }
}

void Algo::tan(uint64_t a1, uint64_t a2)
{
  initThreadPool();
  Matrix<double>::Resize(a2, *(a1 + 16), *(a1 + 20));
  if (g_CoresNumber == 1)
  {
    std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
  }

  std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
}

void Algo::acos(uint64_t a1, uint64_t a2)
{
  initThreadPool();
  Matrix<double>::Resize(a2, *(a1 + 16), *(a1 + 20));
  if (g_CoresNumber == 1)
  {
    std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
  }

  std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
}

void Algo::cos(uint64_t a1, uint64_t a2)
{
  initThreadPool();
  Matrix<double>::Resize(a2, *(a1 + 16), *(a1 + 20));
  if (g_CoresNumber == 1)
  {
    std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
  }

  std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
}

void Algo::cart2sph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Matrix<double>::DotSquare(a1, v24);
  Matrix<double>::DotSquare(a2, v23);
  Matrix<double>::operator+(v24, v23, &v29);
  Matrix<double>::Sqrt(&v29, v25);
  Matrix<double>::~Matrix(&v29);
  Matrix<double>::~Matrix(v23);
  Matrix<double>::~Matrix(v24);
  if (a6)
  {
    Matrix<double>::DotSquare(v25, v23);
    Matrix<double>::DotSquare(a3, v22);
    Matrix<double>::operator+(v23, v22, v24);
    Matrix<double>::Sqrt(v24, &v29);
    Matrix<double>::Resize(a6, v31, v32);
    memcpy(*(a6 + 8), v30, 8 * *(a6 + 16) * *(a6 + 20));
    Matrix<double>::~Matrix(&v29);
    Matrix<double>::~Matrix(v24);
    Matrix<double>::~Matrix(v22);
    Matrix<double>::~Matrix(v23);
  }

  v18[0] = &unk_283812C58;
  v10 = *(a3 + 8);
  v11 = *(a3 + 16);
  v12 = *(a3 + 20);
  v29 = &unk_283812C58;
  v30 = v10;
  v31 = v11;
  v32 = v12;
  v33 = 0;
  v18[1] = v10;
  v19 = v11;
  v20 = v12;
  v21 = 0;
  v13 = Matrix<double>::~Matrix(&v29);
  v14[0] = &unk_283812C58;
  v29 = &unk_283812C58;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = 0;
  v14[1] = v26;
  v15 = v27;
  v16 = v28;
  v17 = 0;
  Matrix<double>::~Matrix(v13);
  Algo::atan2(v18, v14, a5);
}

void sub_224918ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  Matrix<double>::~Matrix(v29 - 96);
  Matrix<double>::~Matrix(v29 - 160);
  Matrix<double>::~Matrix(&a25);
  Matrix<double>::~Matrix(&a29);
  Matrix<double>::~Matrix(v29 - 128);
  _Unwind_Resume(a1);
}

void Algo::LinearSpace(Algo *this@<X0>, double a2@<D0>, double a3@<D1>, uint64_t a4@<X8>)
{
  v4 = this;
  v9 = a2;
  Matrix<double>::Matrix(a4, 1, this);
  *a4 = &unk_283812C88;
  v8 = (a3 - a2) / (v4 + -1.0);
  vDSPVramp<double>(&v9, &v8, *(a4 + 8), 1, v4);
}

void Algo::LinearSpaceByStep(Algo *this@<X0>, double a2@<D0>, double a3@<D1>, uint64_t a4@<X8>)
{
  v4 = this;
  v8 = a2;
  v6 = (a3 - a2) / this;
  Matrix<double>::Matrix(a4, 1, v6 + 1);
  *a4 = &unk_283812C88;
  v7 = v4;
  vDSPVramp<double>(&v8, &v7, *(a4 + 8), 1, v6 + 1);
}

uint64_t Algo::Fspecial@<X0>(int a1@<W0>, Algo *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  Matrix<double>::Matrix(a3, a2, a2);
  Matrix<double>::Matrix(v40, a2, a2);
  Matrix<double>::Matrix(v39, a2, a2);
  if (!a1)
  {
    v8 = vcvtd_n_f64_s32(a2 - 1, 1uLL);
    Algo::LinearSpace(a2, -v8, v8, v35);
    v31[0] = &unk_283812C58;
    v41 = &unk_283812C58;
    v42 = v36;
    v43 = v37;
    v44 = v38;
    v45 = 0;
    v31[1] = v36;
    v32 = v37;
    v33 = v38;
    v34 = 0;
    v9 = Matrix<double>::~Matrix(&v41);
    v27[0] = &unk_283812C58;
    v41 = &unk_283812C58;
    v42 = v36;
    v43 = v37;
    v44 = v38;
    v45 = 0;
    v27[1] = v36;
    v28 = v37;
    v29 = v38;
    v30 = 0;
    Matrix<double>::~Matrix(v9);
    Algo::MeshGrid<double>(v31, v27, v40, v39);
    Matrix<double>::~Matrix(v27);
    Matrix<double>::~Matrix(v31);
    Matrix<double>::DotSquare(v40, v26);
    Matrix<double>::DotSquare(v39, v25);
    Matrix<double>::operator+(v26, v25, &v41);
    Matrix<double>::~Matrix(v25);
    Matrix<double>::~Matrix(v26);
    v10 = v43;
    v11 = v44;
    if (v44 * v43)
    {
      v12 = v42;
      v13 = &v42[v44 * v43];
      do
      {
        *v12 = -1.0 / ((a4 + a4) * a4) * *v12;
        ++v12;
      }

      while (v12 < v13);
    }

    Matrix<double>::Resize(a3, v10, v11);
    memcpy(*(a3 + 8), v42, 8 * *(a3 + 16) * *(a3 + 20));
    v14 = *(a3 + 8);
    v15 = *(a3 + 20) * *(a3 + 16);
    if (v15)
    {
      v16 = &v14[v15];
      do
      {
        *v14 = exp(*v14);
        ++v14;
      }

      while (v14 < v16);
      v14 = *(a3 + 8);
    }

    v26[0] = 0.0;
    vDSPMax<double>(v14, 1, v26, v15);
    v17 = *(a3 + 8);
    if (a2)
    {
      v18 = v26[0] * 2.22044605e-16;
      v19 = a2 * a2;
      if ((a2 * a2) <= 1)
      {
        v19 = 1;
      }

      v20 = 0.0;
      do
      {
        v21 = *v17;
        if (*v17 < v18)
        {
          *v17 = 0.0;
          v21 = 0.0;
        }

        v20 = v20 + v21;
        ++v17;
        --v19;
      }

      while (v19);
      v17 = *(a3 + 8);
    }

    else
    {
      v20 = 0.0;
    }

    v22 = *(a3 + 20) * *(a3 + 16);
    if (v22)
    {
      v23 = &v17[v22];
      do
      {
        *v17 = *v17 / v20;
        ++v17;
      }

      while (v17 < v23);
    }

    Matrix<double>::~Matrix(&v41);
    Matrix<double>::~Matrix(v35);
  }

  Matrix<double>::~Matrix(v39);
  return Matrix<double>::~Matrix(v40);
}

void sub_224919414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  Matrix<double>::~Matrix(v30 - 96);
  Matrix<double>::~Matrix(&a25);
  Matrix<double>::~Matrix(&a29);
  Matrix<double>::~Matrix(v30 - 128);
  Matrix<double>::~Matrix(v29);
  _Unwind_Resume(a1);
}

void Algo::calcWeightedCenterOfMass(uint64_t a1, void *a2, uint64_t a3, long double a4)
{
  v7 = -1431655765 * ((a2[1] - *a2) >> 3);
  Matrix<double>::Resize(a3, 3, v7);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (v7)
  {
    v8 = 0;
    v24 = 0;
    v9 = 0;
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    while (1)
    {
      v12 = (*a2 + 24 * v9);
      if (&v25 != v12)
      {
        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v25, *v12, v12[1], (v12[1] - *v12) >> 2);
        v8 = v25;
        v24 = v26;
      }

      v13 = (v24 - v8) >> 2;
      if (v13 >= 1)
      {
        break;
      }

      v18 = 0.0;
      v17 = 0.0;
      v15 = 0.0;
      if (v13)
      {
        goto LABEL_10;
      }

LABEL_15:
      if (++v9 == v7)
      {
        if (v8)
        {
          v26 = v8;
          operator delete(v8);
        }

        return;
      }
    }

    v14 = ((v24 - v8) >> 2) & 0x7FFFFFFF;
    v15 = 0.0;
    v16 = v8;
    v17 = 0.0;
    v18 = 0.0;
    do
    {
      v19 = *v16;
      v16 += 4;
      v20 = pow(*(v10 + 8 * v19), a4);
      v18 = v18 + v20 * (v19 % v11);
      v17 = v17 + v20 * (v19 / v11);
      v15 = v15 + v20;
      --v14;
    }

    while (v14);
LABEL_10:
    v21 = *(a3 + 16);
    if (!v21 || (v22 = *(a3 + 20), v9 >= v22) || (*(*(a3 + 8) + 8 * v9) = v13, v21 == 1) || (*(*(a3 + 8) + 8 * v9 + 8 * v22) = v18 / v15, v21 <= 2))
    {
      __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
    }

    *(*(a3 + 8) + 8 * v9 + 8 * (2 * v22)) = v17 / v15;
    goto LABEL_15;
  }
}

void sub_224919694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Algo::StdFilter(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 > 0)
  {
    Matrix<double>::Resize(a3, *(a1 + 16), *(a1 + 20));
    Matrix<double>::DotSquare(a1, v12);
    v9 = 0;
    v10 = 0;
    v8 = &unk_283812C58;
    v11 = 0;
    v5 = 0;
    v6 = 0;
    v4 = &unk_283812C58;
    v7 = 0;
    ImageUtils::IntegralImage<double>();
  }

  Algo::StdFilter();
}

void sub_2249199C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  Matrix<double>::~Matrix(va);
  Matrix<double>::~Matrix(va1);
  Matrix<double>::~Matrix(va2);
  _Unwind_Resume(a1);
}

void Algo::NormXcorr2d(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Matrix<double>::Resize(a3, *(a2 + 16), *(a2 + 20));
  v13[0] = 0.0;
  vDSPVfill<double>(v13, *(a3 + 8), 1, *(a3 + 20) * *(a3 + 16));
  Matrix<double>::DotSquare(a2, v13);
  v10 = 0;
  v11 = 0;
  v9 = &unk_283812C58;
  v12 = 0;
  v6 = 0;
  v7 = 0;
  v5 = &unk_283812C58;
  v8 = 0;
  ImageUtils::IntegralImage<double>();
}

void sub_224919EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  Matrix<double>::~Matrix(&a19);
  Matrix<double>::~Matrix(&a23);
  Matrix<double>::~Matrix(&a27);
  _Unwind_Resume(a1);
}

uint64_t Algo::FundMatrix3x3(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4, double *a5, double a6)
{
  Matrix<double>::Matrix(&v128, 9, *(a1 + 20));
  v128 = &unk_283814630;
  v113 = 3;
  v114 = v130;
  v125 = 3;
  v126 = v130;
  v127 = 0;
  v111 = &unk_283812C58;
  v112 = 0;
  v115 = 0;
  v123 = &unk_283812E40;
  v124 = &v129[48 * v130];
  Matrix<double>::~Matrix(&v111);
  Matrix<double>::Matrix(&v120, 3, *(a2 + 20));
  v120 = &unk_283812E40;
  v119 = 0;
  memset(v118, 0, sizeof(v118));
  v117 = 0;
  memset(v116, 0, sizeof(v116));
  Algo::Normalize2DPts(a1, &v123, v118);
  Algo::Normalize2DPts(a2, &v120, v116);
  v113 = 1;
  v114 = v122;
  v104 = v122;
  v105 = 0;
  v111 = &unk_283812C58;
  v112 = 0;
  v115 = 0;
  v101 = &unk_283812C88;
  v102 = v121;
  v103 = 1;
  Matrix<double>::~Matrix(&v111);
  v113 = 1;
  v114 = v126;
  LODWORD(v132) = 1;
  DWORD1(v132) = v126;
  BYTE8(v132) = 0;
  v111 = &unk_283812C58;
  v112 = 0;
  v115 = 0;
  *&v131 = &unk_283812C88;
  *(&v131 + 1) = v124;
  Matrix<double>::~Matrix(&v111);
  MatrixNxPts<1u,double>::DotMult(&v101, &v131, &v106);
  v113 = 1;
  v114 = v130;
  DWORD1(v97) = v130;
  BYTE8(v97) = 0;
  v111 = &unk_283812C58;
  v112 = 0;
  v115 = 0;
  __dst[0] = &unk_283812C88;
  __dst[1] = v129;
  LODWORD(v97) = 1;
  Matrix<double>::~Matrix(&v111);
  Matrix<double>::Resize(__dst, v108, v109);
  memcpy(__dst[1], __src, 8 * v97 * DWORD1(v97));
  Matrix<double>::~Matrix(__dst);
  Matrix<double>::~Matrix(&v106);
  Matrix<double>::~Matrix(&v131);
  Matrix<double>::~Matrix(&v101);
  v113 = 1;
  v114 = v122;
  v104 = v122;
  v105 = 0;
  v111 = &unk_283812C58;
  v112 = 0;
  v115 = 0;
  v101 = &unk_283812C88;
  v102 = v121;
  v103 = 1;
  Matrix<double>::~Matrix(&v111);
  v113 = 1;
  v114 = v126;
  LODWORD(v132) = 1;
  DWORD1(v132) = v126;
  BYTE8(v132) = 0;
  v111 = &unk_283812C58;
  v112 = 0;
  v115 = 0;
  *&v131 = &unk_283812C88;
  *(&v131 + 1) = &v124[8 * v126];
  Matrix<double>::~Matrix(&v111);
  MatrixNxPts<1u,double>::DotMult(&v101, &v131, &v106);
  v113 = 1;
  v114 = v130;
  DWORD1(v97) = v130;
  BYTE8(v97) = 0;
  v111 = &unk_283812C58;
  v112 = 0;
  v115 = 0;
  __dst[0] = &unk_283812C88;
  __dst[1] = &v129[8 * v130];
  LODWORD(v97) = 1;
  Matrix<double>::~Matrix(&v111);
  Matrix<double>::Resize(__dst, v108, v109);
  memcpy(__dst[1], __src, 8 * v97 * DWORD1(v97));
  Matrix<double>::~Matrix(__dst);
  Matrix<double>::~Matrix(&v106);
  Matrix<double>::~Matrix(&v131);
  Matrix<double>::~Matrix(&v101);
  v113 = 1;
  v114 = v122;
  __src = v121;
  v109 = v122;
  v110 = 0;
  v111 = &unk_283812C58;
  v112 = 0;
  v115 = 0;
  v106 = &unk_283812C88;
  v108 = 1;
  Matrix<double>::~Matrix(&v111);
  v113 = 1;
  v114 = v130;
  v104 = v130;
  v105 = 0;
  v111 = &unk_283812C58;
  v112 = 0;
  v115 = 0;
  v101 = &unk_283812C88;
  v102 = &v129[16 * v130];
  v103 = 1;
  Matrix<double>::~Matrix(&v111);
  Matrix<double>::Resize(&v101, v108, v109);
  memcpy(v102, __src, 8 * v103 * v104);
  Matrix<double>::~Matrix(&v101);
  Matrix<double>::~Matrix(&v106);
  v113 = 1;
  v114 = v122;
  v104 = v122;
  v105 = 0;
  v111 = &unk_283812C58;
  v112 = 0;
  v115 = 0;
  v101 = &unk_283812C88;
  v102 = &v121[8 * v122];
  v103 = 1;
  Matrix<double>::~Matrix(&v111);
  v113 = 1;
  v114 = v126;
  LODWORD(v132) = 1;
  DWORD1(v132) = v126;
  BYTE8(v132) = 0;
  v111 = &unk_283812C58;
  v112 = 0;
  v115 = 0;
  *&v131 = &unk_283812C88;
  *(&v131 + 1) = v124;
  Matrix<double>::~Matrix(&v111);
  MatrixNxPts<1u,double>::DotMult(&v101, &v131, &v106);
  v113 = 1;
  v114 = v130;
  DWORD1(v97) = v130;
  BYTE8(v97) = 0;
  v111 = &unk_283812C58;
  v112 = 0;
  v115 = 0;
  __dst[0] = &unk_283812C88;
  __dst[1] = &v129[24 * v130];
  LODWORD(v97) = 1;
  Matrix<double>::~Matrix(&v111);
  Matrix<double>::Resize(__dst, v108, v109);
  memcpy(__dst[1], __src, 8 * v97 * DWORD1(v97));
  Matrix<double>::~Matrix(__dst);
  Matrix<double>::~Matrix(&v106);
  Matrix<double>::~Matrix(&v131);
  Matrix<double>::~Matrix(&v101);
  v113 = 1;
  v114 = v122;
  v104 = v122;
  v105 = 0;
  v111 = &unk_283812C58;
  v112 = 0;
  v115 = 0;
  v101 = &unk_283812C88;
  v102 = &v121[8 * v122];
  v103 = 1;
  Matrix<double>::~Matrix(&v111);
  v113 = 1;
  v114 = v126;
  LODWORD(v132) = 1;
  DWORD1(v132) = v126;
  BYTE8(v132) = 0;
  v111 = &unk_283812C58;
  v112 = 0;
  v115 = 0;
  *&v131 = &unk_283812C88;
  *(&v131 + 1) = &v124[8 * v126];
  Matrix<double>::~Matrix(&v111);
  MatrixNxPts<1u,double>::DotMult(&v101, &v131, &v106);
  v113 = 1;
  v114 = v130;
  DWORD1(v97) = v130;
  BYTE8(v97) = 0;
  v111 = &unk_283812C58;
  v112 = 0;
  v115 = 0;
  __dst[0] = &unk_283812C88;
  __dst[1] = &v129[32 * v130];
  LODWORD(v97) = 1;
  Matrix<double>::~Matrix(&v111);
  Matrix<double>::Resize(__dst, v108, v109);
  memcpy(__dst[1], __src, 8 * v97 * DWORD1(v97));
  Matrix<double>::~Matrix(__dst);
  Matrix<double>::~Matrix(&v106);
  Matrix<double>::~Matrix(&v131);
  Matrix<double>::~Matrix(&v101);
  v113 = 1;
  v114 = v122;
  __src = &v121[8 * v122];
  v109 = v122;
  v110 = 0;
  v111 = &unk_283812C58;
  v112 = 0;
  v115 = 0;
  v106 = &unk_283812C88;
  v108 = 1;
  Matrix<double>::~Matrix(&v111);
  v113 = 1;
  v114 = v130;
  v104 = v130;
  v105 = 0;
  v111 = &unk_283812C58;
  v112 = 0;
  v115 = 0;
  v101 = &unk_283812C88;
  v102 = &v129[40 * v130];
  v103 = 1;
  Matrix<double>::~Matrix(&v111);
  Matrix<double>::Resize(&v101, v108, v109);
  memcpy(v102, __src, 8 * v103 * v104);
  Matrix<double>::~Matrix(&v101);
  Matrix<double>::~Matrix(&v106);
  MatrixNxPts<9u,double>::MultAxBTag<9u>(&v128, &v128, &v111);
  bzero(&v106, 0x288uLL);
  bzero(&v101, 0x288uLL);
  v100 = 0.0;
  v98 = 0u;
  v99 = 0u;
  *__dst = 0u;
  v97 = 0u;
  MatrixMxN<9u,9u,double>::SVDMxN<9u,void>(&v111, &v106);
  if (a4)
  {
    v12 = 0;
    v133 = v98;
    v134 = v99;
    v135 = v100;
    v131 = *__dst;
    v132 = v97;
    v13 = 1;
    do
    {
      v14 = v13;
      v15 = v12;
      do
      {
        if (*(&v131 + v14) < *(&v131 + v15))
        {
          v15 = v14;
        }

        ++v14;
      }

      while (v14 != 9);
      v16 = *(&v131 + v15);
      *(&v131 + v15) = *(&v131 + v12);
      *(&v131 + v12) = v16;
      ++v13;
      ++v12;
    }

    while (v12 != 8);
    v17 = v135 / *(&v131 + 1);
    if (a5)
    {
      *a5 = v17;
    }

    *a4 = v17 < a6;
  }

  v18 = 0;
  v19 = 64;
  v20 = a3;
  do
  {
    v21 = 0;
    v22 = v19;
    do
    {
      *(v20 + v21) = *(&v101 + v22);
      v22 += 72;
      v21 += 8;
    }

    while (v21 != 24);
    ++v18;
    v19 += 216;
    v20 += 24;
  }

  while (v18 != 3);
  v135 = 0.0;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v95 = 0;
  memset(v94, 0, sizeof(v94));
  v91 = 0;
  v92 = 0;
  v93 = 0;
  MatrixMxN<3u,3u,double>::SVDMxN<3u,void>(a3, &v131);
  v23 = 0;
  v87 = 0;
  v90 = 0u;
  v89 = 0u;
  v86 = 0u;
  v85 = 0;
  v88 = 0;
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v24 = &v131;
  v75 = 0u;
  v76 = 0u;
  do
  {
    v25 = 0;
    v26 = &v85;
    do
    {
      v27 = 0;
      v28 = 0.0;
      v29 = v26;
      do
      {
        v30 = *v29;
        v29 += 3;
        v28 = v28 + *(v24 + v27) * v30;
        v27 += 8;
      }

      while (v27 != 24);
      *(&v75 + 3 * v23 + v25++) = v28;
      ++v26;
    }

    while (v25 != 3);
    ++v23;
    v24 = (v24 + 24);
  }

  while (v23 != 3);
  v31 = 0;
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v32 = &v70;
  v33 = v94;
  do
  {
    v34 = 0;
    v35 = v32;
    do
    {
      *v35 = *(v33 + v34);
      v35 = (v35 + 24);
      v34 += 8;
    }

    while (v34 != 24);
    ++v31;
    v32 = (v32 + 8);
    v33 = (v33 + 24);
  }

  while (v31 != 3);
  v36 = 0;
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v37 = &v75;
  do
  {
    v38 = 0;
    v39 = &v70;
    do
    {
      v40 = 0;
      v41 = 0.0;
      v42 = v39;
      do
      {
        v43 = *v42;
        v42 += 3;
        v41 = v41 + *(v37 + v40) * v43;
        v40 += 8;
      }

      while (v40 != 24);
      *(&v80 + 3 * v36 + v38++) = v41;
      v39 = (v39 + 8);
    }

    while (v38 != 3);
    ++v36;
    v37 = (v37 + 24);
  }

  while (v36 != 3);
  v44 = 0;
  v45 = v83;
  *(a3 + 32) = v82;
  *(a3 + 48) = v45;
  *(a3 + 64) = v84;
  v46 = v81;
  *a3 = v80;
  *(a3 + 16) = v46;
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v47 = &v70;
  v48 = v116;
  v70 = 0u;
  v71 = 0u;
  do
  {
    v49 = 0;
    v50 = v47;
    do
    {
      *v50 = *(v48 + v49);
      v50 = (v50 + 24);
      v49 += 8;
    }

    while (v49 != 24);
    ++v44;
    v47 = (v47 + 8);
    v48 = (v48 + 24);
  }

  while (v44 != 3);
  v51 = 0;
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v52 = &v70;
  do
  {
    v53 = 0;
    v54 = a3;
    do
    {
      v55 = 0;
      v56 = 0.0;
      v57 = v54;
      do
      {
        v58 = *v57;
        v57 += 3;
        v56 = v56 + *(v52 + v55) * v58;
        v55 += 8;
      }

      while (v55 != 24);
      *(&v75 + 3 * v51 + v53++) = v56;
      ++v54;
    }

    while (v53 != 3);
    ++v51;
    v52 = (v52 + 24);
  }

  while (v51 != 3);
  v59 = 0;
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v60 = &v75;
  do
  {
    v61 = 0;
    v62 = v118;
    do
    {
      v63 = 0;
      v64 = 0.0;
      v65 = v62;
      do
      {
        v66 = *v65;
        v65 += 3;
        v64 = v64 + *(v60 + v63) * v66;
        v63 += 8;
      }

      while (v63 != 24);
      *(&v80 + 3 * v59 + v61++) = v64;
      v62 = (v62 + 8);
    }

    while (v61 != 3);
    ++v59;
    v60 = (v60 + 24);
  }

  while (v59 != 3);
  v67 = v83;
  *(a3 + 32) = v82;
  *(a3 + 48) = v67;
  *(a3 + 64) = v84;
  v68 = v81;
  *a3 = v80;
  *(a3 + 16) = v68;
  Matrix<double>::~Matrix(&v120);
  Matrix<double>::~Matrix(&v123);
  Matrix<double>::~Matrix(&v128);
  return 0;
}

void sub_22491ADB0(_Unwind_Exception *a1)
{
  Matrix<double>::~Matrix(&STACK[0xA20]);
  Matrix<double>::~Matrix(v1 - 240);
  Matrix<double>::~Matrix(v1 - 208);
  _Unwind_Resume(a1);
}

uint64_t Algo::Normalize2DPts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Matrix<double>::Matrix<double const>(&v30, *(a1 + 8), 3, *(a1 + 20), 1);
  v30 = &unk_283812E40;
  v5 = v33;
  if (v32)
  {
    v6 = v33 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

  if (v32 <= 1)
  {
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

  if (v32 == 2)
  {
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

  v7 = 0;
  v8 = v31;
  v9 = &v31[v33];
  v10 = &v31[2 * v33];
  v11 = 0.0;
  v12 = 0.0;
  do
  {
    v8[v7] = v8[v7] / v10[v7];
    v9[v7] = v9[v7] / v10[v7];
    v10[v7] = 1.0;
    v11 = v11 + v8[v7];
    v12 = v12 + v9[v7++];
  }

  while (v5 != v7);
  v13 = *(a2 + 16);
  if (!v13 || (v14 = *(a2 + 20), !v14))
  {
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

  if (v13 == 1)
  {
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

  if (v13 <= 2)
  {
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

  v15 = v11 / v5;
  v16 = *(a2 + 8);
  v17 = 0.0;
  v18 = v31;
  v19 = v5;
  v20 = v12 / v5;
  do
  {
    v21 = *v18 - v15;
    *v16 = v21;
    v22 = v18[v5] - v20;
    v16[v14] = v22;
    v23 = sqrt(v22 * v22 + v21 * v21);
    v16[(2 * v14)] = v23;
    v17 = v17 + v23;
    ++v16;
    ++v18;
    --v19;
  }

  while (v19);
  v24 = 1.41421356 / (v17 / v5);
  *a3 = v24;
  *(a3 + 8) = 0;
  *(a3 + 16) = -(v24 * v15);
  *(a3 + 24) = 0;
  *(a3 + 32) = v24;
  *(a3 + 40) = -(v24 * v20);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0x3FF0000000000000;
  MatrixMxN<3u,3u,double>::operator*<3u>(a3, &v30, &v26);
  Matrix<double>::Resize(a2, v28, v29);
  memcpy(*(a2 + 8), __src, 8 * *(a2 + 16) * *(a2 + 20));
  Matrix<double>::~Matrix(&v26);
  Matrix<double>::~Matrix(&v30);
  return 0;
}

void sub_22491B108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  Matrix<double>::~Matrix(&a9);
  Matrix<double>::~Matrix(&a13);
  _Unwind_Resume(a1);
}

double *MatrixNxPts<9u,double>::MultAxBTag<9u>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  bzero(a3, 0x288uLL);
  v6 = 0;
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v10 = *(a2 + 8);
  do
  {
    if (v6 == v7 || (v11 = *(a1 + 20)) == 0)
    {
      MatrixNxPts<3u,double>::CloneColumn();
    }

    v12 = 0;
    v13 = *(a1 + 8) + 8 * (v11 * v6);
    do
    {
      if (v12 >= v8 || !v9)
      {
        MatrixNxPts<3u,double>::CloneColumn();
      }

      result = (v10 + 8 * (v9 * v12));
      v15 = 0.0;
      v16 = v11;
      v17 = v13;
      do
      {
        v18 = *v17++;
        v19 = v18;
        v20 = *result++;
        v15 = v15 + v19 * v20;
        --v16;
      }

      while (v16);
      *(a3 + 9 * v6 + v12++) = v15;
    }

    while (v12 != 9);
    ++v6;
  }

  while (v6 != 9);
  return result;
}

uint64_t MatrixMxN<9u,9u,double>::SVDMxN<9u,void>(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = &__dst[8];
  v4 = &__dst[72];
  for (i = 1; i != 9; ++i)
  {
    v6 = 0;
    v7 = v3;
    do
    {
      v8 = *&v4[8 * v6];
      *&v4[8 * v6] = *v7;
      *v7 = v8;
      v7 += 9;
      ++v6;
    }

    while (i != v6);
    v3 += 8;
    v4 += 72;
  }

  MatrixMxN<3u,3u,double>::svdLapack();
  v9 = (a2 + 8);
  v10 = a2 + 72;
  for (j = 1; j != 9; ++j)
  {
    v12 = 0;
    v13 = v9;
    do
    {
      v14 = *(v10 + 8 * v12);
      *(v10 + 8 * v12) = *v13;
      *v13 = v14;
      v13 += 9;
      ++v12;
    }

    while (j != v12);
    ++v9;
    v10 += 72;
  }

  return 0;
}

uint64_t Algo::RandomSample(unsigned int a1, CRandomGenerator *this, uint64_t a3)
{
  v3 = *(a3 + 20);
  if (v3)
  {
    v6 = 0;
    v7 = a1;
    do
    {
      v8 = (CRandomGenerator::UniformRand(this) * v7);
      if (v6)
      {
        v9 = 0;
        while (*(*(a3 + 8) + 4 * v9) != v8)
        {
          if (v6 == ++v9)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }

      if (v9 == v6)
      {
LABEL_10:
        *(*(a3 + 8) + 4 * v6++) = v8;
      }
    }

    while (v6 < v3);
  }

  return 0;
}

uint64_t Algo::FundDist(const double *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, double a6)
{
  Matrix<double>::Matrix(v52, 1, *(a2 + 20));
  v52[0] = &unk_283812C88;
  if (*(a2 + 20))
  {
    v12 = 0;
    do
    {
      MatrixNxPts<3u,double>::CloneColumn(a2, v12, &v41);
      MatrixNxPts<3u,double>::CloneColumn(a3, v12, &v49);
      v13 = 0;
      v46 = 0;
      v47 = 0;
      v14 = a1;
      v48 = 0;
      do
      {
        v15 = 0;
        v16 = 0.0;
        v17 = v14;
        do
        {
          v18 = *v17;
          v17 += 3;
          v16 = v16 + *(&v49 + v15) * v18;
          v15 += 8;
        }

        while (v15 != 24);
        *(&v46 + v13++) = v16;
        ++v14;
      }

      while (v13 != 3);
      v19 = 0;
      v20 = 0.0;
      do
      {
        v20 = v20 + *(&v46 + v19) * *(&v41 + v19);
        v19 += 8;
      }

      while (v19 != 24);
      *(v52[1] + 8 * v12++) = v20;
    }

    while (v12 < *(a2 + 20));
  }

  MatrixMxN<3u,3u,double>::operator*<3u>(a1, a2, &v49);
  v21 = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v22 = &v41;
  do
  {
    v23 = 0;
    v24 = v22;
    do
    {
      *v24 = a1[v23];
      v24 = (v24 + 24);
      ++v23;
    }

    while (v23 != 3);
    ++v21;
    v22 = (v22 + 8);
    a1 += 3;
  }

  while (v21 != 3);
  MatrixMxN<3u,3u,double>::operator*<3u>(&v41, a3, &v46);
  Matrix<double>::DotProductInPlace(&v49, &v49);
  Matrix<double>::DotProductInPlace(&v46, &v46);
  MatrixNxPts<1u,double>::DotMult(v52, v52, v38);
  LODWORD(v42) = 1;
  DWORD1(v42) = v51;
  v35 = 1;
  v36 = v51;
  v37 = 0;
  *&v41 = &unk_283812C58;
  *(&v41 + 1) = 0;
  BYTE8(v42) = 0;
  v34[0] = &unk_283812C88;
  v34[1] = v50;
  Matrix<double>::~Matrix(&v41);
  LODWORD(v42) = 1;
  DWORD1(v42) = v51;
  v31 = 1;
  v32 = v51;
  v33 = 0;
  *&v41 = &unk_283812C58;
  *(&v41 + 1) = 0;
  BYTE8(v42) = 0;
  v29 = &unk_283812C88;
  v30 = v50 + 8 * v51;
  Matrix<double>::~Matrix(&v41);
  Matrix<double>::operator+=(v34, &v29);
  Matrix<double>::~Matrix(&v29);
  LODWORD(v42) = 1;
  DWORD1(v42) = HIDWORD(v48);
  v31 = 1;
  v32 = HIDWORD(v48);
  v33 = 0;
  *&v41 = &unk_283812C58;
  *(&v41 + 1) = 0;
  BYTE8(v42) = 0;
  v29 = &unk_283812C88;
  v30 = v47;
  Matrix<double>::~Matrix(&v41);
  Matrix<double>::operator+=(v34, &v29);
  Matrix<double>::~Matrix(&v29);
  LODWORD(v42) = 1;
  DWORD1(v42) = HIDWORD(v48);
  v31 = 1;
  v32 = HIDWORD(v48);
  v33 = 0;
  *&v41 = &unk_283812C58;
  *(&v41 + 1) = 0;
  BYTE8(v42) = 0;
  v29 = &unk_283812C88;
  v30 = v47 + 8 * HIDWORD(v48);
  Matrix<double>::~Matrix(&v41);
  Matrix<double>::operator+=(v34, &v29);
  Matrix<double>::~Matrix(&v29);
  Matrix<double>::DotDivInPlace(v38, v34);
  *a5 = 0;
  v25 = v40;
  if (v40)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      if (fabs(*(v39 + 8 * v27)) < a6)
      {
        *(*(a4 + 8) + 4 * v26) = v27;
        v26 = *a5 + 1;
        *a5 = v26;
        v25 = v40;
      }

      ++v27;
    }

    while (v27 < v25);
  }

  Matrix<double>::~Matrix(v34);
  Matrix<double>::~Matrix(v38);
  Matrix<double>::~Matrix(&v46);
  Matrix<double>::~Matrix(&v49);
  Matrix<double>::~Matrix(v52);
  return 0;
}

void sub_22491B7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  Matrix<double>::~Matrix(&a13);
  Matrix<double>::~Matrix(&a17);
  Matrix<double>::~Matrix(&a31);
  Matrix<double>::~Matrix(v31 - 160);
  Matrix<double>::~Matrix(v31 - 128);
  _Unwind_Resume(a1);
}

void sub_22491B9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  Matrix<BOOL>::~Matrix(va);
  Matrix<BOOL>::~Matrix(va1);
  _Unwind_Resume(a1);
}

uint64_t Algo::Ransac(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, int a7, uint64_t a8, double a9, double a10, uint64_t a11, unsigned int *a12)
{
  v20 = *(a1 + 20);
  CRandomGenerator::CRandomGenerator(v45, a6);
  v21 = 0;
  v32 = 0;
  *a12 = 0;
  v44 = 0;
  v43 = 0;
  v22 = 1.0;
  do
  {
    if (v22 <= v21)
    {
      break;
    }

    v34 = v21;
    v42 = 0;
    v23 = 1;
    v24 = 1;
    memset(v41, 0, sizeof(v41));
    while (v23)
    {
      Matrix<unsigned int>::Matrix(&v37, 1, a3);
      v37 = &unk_283814350;
      Algo::RandomSample(v20, v45, &v37);
      if (!a7)
      {
        goto LABEL_13;
      }

      if (a3)
      {
        v25 = (v40 * v39);
        v26 = __src;
        v27 = a3;
        while (1)
        {
          if (!v25 || (v28 = *v26, *(a8 + 20) * *(a8 + 16) <= v28))
          {
            __assert_rtn("operator()", "Matrix.hpp", 131, "index < m_rows * m_cols");
          }

          if (*(*(a8 + 8) + v28))
          {
            break;
          }

          --v25;
          ++v26;
          if (!--v27)
          {
            goto LABEL_12;
          }
        }

LABEL_13:
        Matrix<double>::Matrix(v36, 3, a3);
        *v36 = &unk_283812E40;
        Matrix<double>::Matrix(v35, 3, a3);
        v35[0] = &unk_283812E40;
        MatrixNxPts<3u,double>::CopyCols(v36, a1, &v37);
        MatrixNxPts<3u,double>::CopyCols(v35, a2, &v37);
        Algo::FundMatrix3x3(v36, v35, v41, &v43, &v44, a10);
        if (a7)
        {
          v23 = !v43;
        }

        else
        {
          v23 = 0;
        }

        Matrix<double>::~Matrix(v35);
        Matrix<double>::~Matrix(v36);
        goto LABEL_17;
      }

LABEL_12:
      v23 = 1;
LABEL_17:
      ++v24;
      Matrix<unsigned int>::~Matrix(&v37);
      if (v24 > a4)
      {
        break;
      }
    }

    Matrix<unsigned int>::Matrix(&v37, 1, *(a1 + 20));
    v37 = &unk_283814350;
    v36[0] = 0;
    Algo::FundDist(v41, a1, a2, &v37, v36, a9);
    v29 = v36[0];
    if (v36[0] > *a12)
    {
      Matrix<float>::Resize(a11, v39, v40);
      memcpy(*(a11 + 8), __src, 4 * *(a11 + 16) * *(a11 + 20));
      *a12 = v29;
      v30 = pow(v29 / v20, a3);
      v32 = 1;
      v22 = -6.90775528 / log(fmin(fmax(1.0 - v30, 2.22044605e-16), 1.0));
    }

    v21 = v34 + 1;
    Matrix<unsigned int>::~Matrix(&v37);
  }

  while (v34 + 1 <= a5);
  CRandomGenerator::~CRandomGenerator(v45);
  return (v32 & 1u) - 1;
}

uint64_t Algo::RansacHomography(int a1, int a2, int a3, int a4, int a5, int a6, int a7, _DWORD *a8, _DWORD *a9)
{
  *a8 = 0;
  CRandomGenerator::CRandomGenerator(v10, a6);
  if (0 < 1.0)
  {
    operator new[]();
  }

  if (a9)
  {
    *a9 = -1;
  }

  CRandomGenerator::~CRandomGenerator(v10);
  return 0xFFFFFFFFLL;
}

void sub_22491C224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  Matrix<unsigned int>::~Matrix(&a34);
  Matrix<double>::~Matrix(&a38);
  CRandomGenerator::~CRandomGenerator(&a42);
  _Unwind_Resume(a1);
}

double Algo::Mean(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == 1)
  {
    Matrix<double>::Resize(a2, 1, 1);
    v12 = 0.0;
    vDSPMeanv<double>(*(a1 + 8), 1, &v12, *(a1 + 20) * *(a1 + 16));
    result = v12;
    **(a2 + 8) = v12;
  }

  else
  {
    if (!v4)
    {
      Algo::Mean();
    }

    v5 = *(a1 + 20);
    Matrix<double>::Resize(a2, 1, *(a1 + 20));
    bzero(*(a2 + 8), 8 * (*(a2 + 20) * *(a2 + 16)));
    v6 = 0;
    v7 = *(a1 + 16);
    do
    {
      if (v5)
      {
        if (v6 < v7)
        {
          v8 = 0;
          v9 = *(a1 + 20);
          v10 = 8 * v9 * v6;
          while (v9)
          {
            if (!*(a2 + 16) || v8 >= *(a2 + 20))
            {
              GMC_Homography();
            }

            *(*(a2 + 8) + 8 * v8) = *(*(a1 + 8) + v10) + *(*(a2 + 8) + 8 * v8);
            ++v8;
            --v9;
            v10 += 8;
            if (v5 == v8)
            {
              goto LABEL_11;
            }
          }
        }

        MatrixNxPts<3u,double>::CloneColumn();
      }

LABEL_11:
      ++v6;
    }

    while (v6 != v4);
    v12 = v4;
    vDSPVsdiv<double>(*(a2 + 8), 1, &v12, *(a2 + 8), 1, *(a2 + 20) * *(a2 + 16));
  }

  return result;
}

Algo *Algo::Gcd(Algo *this, uint64_t a2)
{
  if (!a2)
  {
    return this;
  }

  do
  {
    v2 = a2;
    a2 = this % a2;
    LODWORD(this) = v2;
  }

  while (a2);
  return v2;
}

uint64_t Algo::Lcm(Algo *this, unsigned int a2)
{
  v2 = this;
  if (a2)
  {
    v3 = a2;
    v4 = this;
    do
    {
      v2 = v3;
      v3 = v4 % v3;
      v4 = v2;
    }

    while (v3);
  }

  return this / v2 * a2;
}

void *std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v8 >> 1;
      if (v8 >> 1 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<unsigned int>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void sub_22491C6AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double *,double (*)(double),int),double const*,double *,double (*)(double),int>>(uint64_t *a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  (v5[1])(v5[2], v5[3], v5[4], *(v5 + 10));
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double *,double (*)(double),int),double const*,double *,double (*)(double),int>>::~unique_ptr[abi:ne200100](&v5);
  return 0;
}

void sub_22491C744(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double *,double (*)(double),int),double const*,double *,double (*)(double),int>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double *,double (*)(double),int),double const*,double *,double (*)(double),int>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x22AA55B60](v3, 0x10E0C40C6F9689ELL);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x22AA55A00]();
    MEMORY[0x22AA55B60](v3, 0x20C4093837F09);
  }

  return a1;
}

void sub_22491C8FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double const*,double *,double (*)(double,double),int),double const*,double const*,double *,double (*)(double,double),int>>(uint64_t *a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  (v5[1])(v5[2], v5[3], v5[4], v5[5], *(v5 + 12));
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double const*,double *,double (*)(double,double),int),double const*,double const*,double *,double (*)(double,double),int>>::~unique_ptr[abi:ne200100](&v5);
  return 0;
}

void sub_22491C998(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double const*,double *,double (*)(double,double),int),double const*,double const*,double *,double (*)(double,double),int>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double const*,double *,double (*)(double,double),int),double const*,double const*,double *,double (*)(double,double),int>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x22AA55B60](v3, 0x10E0C40E17172BELL);
  }

  return a1;
}

void MatrixNxPts<9u,double>::~MatrixNxPts(uint64_t a1)
{
  Matrix<double>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

uint64_t Matrix<double>::Matrix<double const>(uint64_t result, uint64_t a2, int a3, int a4, char a5)
{
  *result = &unk_283812C58;
  if (a5)
  {
    operator new[]();
  }

  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 20) = a4;
  *(result + 24) = a5;
  return result;
}

double Matrix<double>::operator+=(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (v2 != *(a1 + 20) || (v3 = *(a2 + 16), v3 != *(a1 + 16)))
  {
    Matrix<float>::operator-();
  }

  v4 = v3 * v2;
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = &v5[v4];
    v7 = *(a2 + 8);
    do
    {
      v8 = *v7++;
      result = *v5 + v8;
      *v5++ = result;
    }

    while (v5 < v6);
  }

  return result;
}

void SparseMatrix::SparseMatrix(SparseMatrix *this, int a2, int a3, const int *a4, int a5, int a6)
{
  *(this + 10) = a2;
  *(this + 11) = a6;
  *(this + 8) = a5 + a3 * a6;
  *(this + 9) = a3;
  SparseMatrix::allocateMem(this);
}

void SparseMatrix::SparseMatrix(SparseMatrix *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
}

{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
}

double SparseMatrix::freeMem(SparseMatrix *this)
{
  v2 = *this;
  if (v2)
  {
    MEMORY[0x22AA55B40](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 1);
  if (v3)
  {
    MEMORY[0x22AA55B40](v3, 0x1000C8052888210);
  }

  v4 = *(this + 2);
  if (v4)
  {
    MEMORY[0x22AA55B40](v4, 0x1000C8052888210);
  }

  v5 = *(this + 3);
  if (v5)
  {
    MEMORY[0x22AA55B40](v5, 0x1000C8052888210);
  }

  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

void SparseMatrix::~SparseMatrix(SparseMatrix *this)
{
  SparseMatrix::freeMem(this);
}

{
  SparseMatrix::freeMem(this);
}

double SparseMatrix::SparseMatrix(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;
  v2 = a2[2];
  a1[1] = a2[1];
  a1[2] = v2;
  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

{
  *a1 = *a2;
  v2 = a2[2];
  a1[1] = a2[1];
  a1[2] = v2;
  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

SparseMatrix *SparseMatrix::operator=(SparseMatrix *a1, _OWORD *a2)
{
  SparseMatrix::freeMem(a1);
  *a1 = *a2;
  v4 = a2[2];
  *(a1 + 1) = a2[1];
  *(a1 + 2) = v4;
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

void *SparseMatrix::AddValue(void *this, int a2, int a3, double a4)
{
  v4 = this[3];
  v5 = *(v4 + 4 * a3) + *(this[2] + 4 * a3);
  v6 = this[1];
  *(*this + 8 * v5) = a4;
  *(v6 + 4 * v5) = a2;
  ++*(v4 + 4 * a3);
  return this;
}

uint64_t SparseMatrix::Expand(uint64_t this, int a2, unint64_t a3)
{
  v3 = *(this + 44);
  if (v3 < a3)
  {
    SparseMatrix::Expand();
  }

  *(this + 40) += a2;
  *(this + 44) = v3 - a3;
  return this;
}

uint64_t SparseMatrix::Squeeze(uint64_t this, int a2, int a3)
{
  v3 = *(this + 36);
  v4 = *(this + 44) + a3;
  *(this + 40) -= a2;
  *(this + 44) = v4;
  if (v3 >= 1)
  {
    v5 = 0;
    v6 = *(this + 24);
    do
    {
      *(v6 + 4 * v5++) -= a3;
    }

    while (v5 < *(this + 36));
  }

  return this;
}

double SparseMatrix::operator()(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 40) <= a2 || *(a1 + 36) <= a3)
  {
    SparseMatrix::operator()();
  }

  v3 = *(*(a1 + 24) + 4 * a3);
  result = 0.0;
  if (v3 >= 1)
  {
    for (i = *(*(a1 + 16) + 4 * a3); *(*(a1 + 8) + 4 * i) != a2; ++i)
    {
      if (!--v3)
      {
        return result;
      }
    }

    return *(*a1 + 8 * i);
  }

  return result;
}

void *SparseMatrix::MultATagxB@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = Matrix<double>::Matrix(a3, 1, *(a1 + 9));
  *result = &unk_283812C88;
  v6 = *(a1 + 9);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = a1[2];
    v9 = a1[3];
    do
    {
      *(result[1] + 8 * v7) = 0;
      v10 = *(v9 + 4 * v7);
      if (v10 >= 1)
      {
        v11 = *(v8 + 4 * v7);
        v12 = v10 + v11;
        v13 = *a1;
        v14 = a1[1];
        do
        {
          *(result[1] + 8 * v7) = *(result[1] + 8 * v7) + *(v13 + 8 * v11) * *(*(a2 + 8) + 8 * *(v14 + 4 * v11));
          ++v11;
        }

        while (v11 < v12);
      }

      ++v7;
    }

    while (v7 != v6);
  }

  return result;
}

void SparseMatrix::operator*(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Matrix<double>::Matrix(a3, 1, *(a1 + 10));
  *a3 = &unk_283812C88;
  bzero(*(a3 + 8), 8 * (*(a3 + 20) * *(a3 + 16)));
  v6 = *(a1 + 9);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = a1[2];
    v9 = a1[3];
    do
    {
      v10 = *(v9 + 4 * v7);
      if (v10 >= 1)
      {
        v11 = *(v8 + 4 * v7);
        v12 = v10 + v11;
        v13 = *a1;
        v14 = a1[1];
        do
        {
          *(*(a3 + 8) + 8 * *(v14 + 4 * v11)) = *(*(a3 + 8) + 8 * *(v14 + 4 * v11)) + *(v13 + 8 * v11) * *(*(a2 + 8) + 8 * v7);
          ++v11;
        }

        while (v11 < v12);
      }

      ++v7;
    }

    while (v7 != v6);
  }
}

void *SparseMatrix::ReverseStorageOfColumn(void *this, int a2)
{
  v2 = *(this[3] + 4 * a2);
  if (v2)
  {
    v3 = *(this[2] + 4 * a2);
    v4 = (*this + 8 * v3);
    v5 = (8 * v2 + 8 * v3 + *this - 8);
    do
    {
      if (v5 == v4)
      {
        break;
      }

      v6 = *v4;
      *v4++ = *v5;
      v7 = v5 == v4;
      *v5-- = v6;
    }

    while (!v7);
    v8 = this[1];
    v9 = (v8 + 4 * v3);
    v10 = (4 * v2 + 4 * v3 + v8 - 4);
    do
    {
      if (v10 == v9)
      {
        break;
      }

      v11 = *v9;
      *v9++ = *v10;
      v7 = v10 == v9;
      *v10-- = v11;
    }

    while (!v7);
  }

  return this;
}

double SparseMatrix::GetColumnAsDenseVector@<D0>(SparseMatrix *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  Matrix<double>::Matrix(a3, 1, *(this + 10));
  *a3 = &unk_283812C88;
  bzero(*(a3 + 8), 8 * (*(a3 + 20) * *(a3 + 16)));
  v7 = *(*(this + 3) + 4 * a2);
  if (v7 >= 1)
  {
    v8 = *(this + 1);
    v9 = *(*(this + 2) + 4 * a2);
    v10 = v7 + v9;
    v11 = *this;
    do
    {
      result = *(v11 + 8 * v9);
      *(*(a3 + 8) + 8 * *(v8 + 4 * v9++)) = result;
    }

    while (v9 < v10);
  }

  return result;
}

double SparseMatrix::CopyColumnToDenseVector(SparseMatrix *this, int a2, double *a3)
{
  bzero(a3, 8 * *(this + 10));
  v7 = *(*(this + 3) + 4 * a2);
  if (v7 >= 1)
  {
    v8 = *(this + 1);
    v9 = *(*(this + 2) + 4 * a2);
    v10 = v7 + v9;
    v11 = *this;
    do
    {
      result = *(v11 + 8 * v9);
      a3[*(v8 + 4 * v9++)] = result;
    }

    while (v9 < v10);
  }

  return result;
}

uint64_t SparseMatrix::GetColumnAsSparseVector@<X0>(uint64_t this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 40);
  v4 = *(*(this + 24) + 4 * a2);
  v5 = *(*(this + 16) + 4 * a2);
  v6 = *(this + 8) + 4 * v5;
  v7 = *this + 8 * v5;
  *(a3 + 16) = v4;
  *(a3 + 20) = v4;
  *(a3 + 24) = v3;
  *(a3 + 28) = 0;
  *(a3 + 32) = 0;
  *a3 = v7;
  *(a3 + 8) = v6;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  return this;
}

uint64_t SparseMatrix::SolveLTInPlace(uint64_t result, uint64_t a2)
{
  v2 = *(result + 36);
  if (v2 != *(result + 40))
  {
    SparseMatrix::SolveLTInPlace();
  }

  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8);
    v5 = *result;
    v6 = *(result + 16);
    v7 = *(result + 24);
    v8 = v4 + 8;
    v9 = *result + 8;
    do
    {
      v10 = *(v6 + 4 * v3);
      v11 = *(v4 + 8 * v3) / *(*&v5 + 8 * v10);
      *(v4 + 8 * v3) = v11;
      v12 = *(v7 + 4 * v3);
      if (v12 >= 2)
      {
        v13 = (v9 + 8 * v10);
        v14 = v12 - 1;
        result = v8;
        do
        {
          v15 = *v13++;
          *result = *result - v15 * v11;
          result += 8;
          --v14;
        }

        while (v14);
      }

      ++v3;
      v8 += 8;
    }

    while (v3 != v2);
  }

  return result;
}

void SparseVector::SparseVector(SparseVector *this, int a2, int a3, int *a4, double *a5, char a6)
{
  *(this + 4) = a3;
  *(this + 5) = a3;
  *(this + 6) = a2;
  *(this + 28) = a6;
  *(this + 8) = 0;
  if (a6)
  {
    operator new[]();
  }

  *this = a5;
  *(this + 1) = a4;
  *(this + 6) = 0;
  *(this + 5) = 0;
}

void SparseVector::SparseVector(SparseVector *this, int a2, int a3)
{
  *(this + 4) = a3;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 28) = 1;
  *(this + 8) = 0;
  operator new[]();
}

void SparseVector::~SparseVector(SparseVector *this)
{
  if (*(this + 28) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      MEMORY[0x22AA55B40](v2, 0x1000C8052888210);
    }

    if (*this)
    {
      MEMORY[0x22AA55B40](*this, 0x1000C8000313F17);
    }
  }

  v3 = *(this + 6);
  if (v3)
  {
    MEMORY[0x22AA55B40](v3, 0x1000C8052888210);
  }

  v4 = *(this + 5);
  if (v4)
  {
    MEMORY[0x22AA55B40](v4, 0x1000C8000313F17);
  }
}

__n128 SparseVector::SparseVector(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = 0;
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 28) = 0;
  return result;
}

{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = 0;
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 28) = 0;
  return result;
}

void SparseVector::SparseVector(SparseVector *this, const SparseVector *a2)
{
  v2 = *(a2 + 20);
  *(this + 4) = v2;
  *(this + 20) = v2;
  *(this + 28) = 1;
  *(this + 8) = 0;
  operator new[]();
}

uint64_t SparseVector::operator=(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 28) & 1) == 0)
  {
    SparseVector::operator=();
  }

  if (*(a1 + 16) < *(a2 + 16))
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      MEMORY[0x22AA55B40](v4, 0x1000C8052888210);
    }

    if (*a1)
    {
      MEMORY[0x22AA55B40](*a1, 0x1000C8000313F17);
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      MEMORY[0x22AA55B40](v5, 0x1000C8052888210);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      MEMORY[0x22AA55B40](v6, 0x1000C8000313F17);
    }

    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    operator new[]();
  }

  memcpy(*(a1 + 8), *(a2 + 8), 4 * *(a2 + 20));
  memcpy(*a1, *a2, 8 * *(a2 + 20));
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t SparseVector::MultATagxB(uint64_t this, const SparseVector *a2)
{
  LODWORD(v2) = 0;
  v3 = 0;
  v4 = *(this + 8);
  v5 = *(this + 20);
  v6 = 0.0;
  for (i = *(a2 + 1); ; ++i)
  {
    v8 = *v4;
    while (1)
    {
      v9 = *i;
      ++v4;
      v2 = v2;
      while (v8 < v9)
      {
        if (v2 + 1 >= v5)
        {
          return this;
        }

        v10 = *v4++;
        v8 = v10;
        ++v2;
      }

      if (v9 >= v8)
      {
        break;
      }

      if (++v3 >= v5)
      {
        return this;
      }

      --v4;
      ++i;
    }

    v6 = v6 + *(*this + 8 * v2) * *(*a2 + 8 * v3);
    LODWORD(v2) = v2 + 1;
    if (v2 >= v5)
    {
      break;
    }

    if (++v3 >= *(a2 + 5))
    {
      break;
    }
  }

  return this;
}

uint64_t SparseVector::AddWithFactor(uint64_t this, double **a2, double a3)
{
  if ((*(this + 28) & 1) == 0)
  {
    SparseVector::AddWithFactor();
  }

  *(this + 32) = 0;
  v3 = *(a2 + 5);
  v4 = *this;
  v5 = *(this + 8);
  v6 = *(this + 20);
  v7 = *this + 8 * v6;
  v8 = *a2;
  v9 = a2[1];
  v10 = &(*a2)[v3];
  v11 = 0;
  if (v6 >= 1 && v3 >= 1)
  {
    v13 = *v9;
    v14 = *v5;
    v15 = *this;
    v16 = *(this + 8);
    while (1)
    {
      if (v14 == v13)
      {
        if (*(this + 24) <= v13 || v11 >= *(this + 16))
        {
          SparseVector::AddWithFactor();
        }

        v17 = *v15++;
        v18 = *v8;
        v19 = *(this + 40);
        *(*(this + 48) + 4 * v11) = v13;
        v20 = *(this + 32);
        *(v19 + 8 * v20) = v17 + a3 * v18;
        v11 = v20 + 1;
        *(this + 32) = v11;
        LODWORD(v17) = v16[1];
        ++v16;
        v14 = LODWORD(v17);
      }

      else
      {
        if (v14 < v13)
        {
          if (*(this + 24) <= v14 || v11 >= *(this + 16))
          {
            SparseVector::AddWithFactor();
          }

          v21 = *v15++;
          v22 = *(this + 40);
          *(*(this + 48) + 4 * v11) = v14;
          v23 = *(this + 32);
          *(v22 + 8 * v23) = v21;
          v11 = v23 + 1;
          *(this + 32) = v11;
          LODWORD(v21) = v16[1];
          ++v16;
          v14 = LODWORD(v21);
          goto LABEL_20;
        }

        if (*(this + 24) <= v13 || v11 >= *(this + 16))
        {
          SparseVector::AddWithFactor();
        }

        v24 = *v8 * a3;
        v25 = *(this + 40);
        *(*(this + 48) + 4 * v11) = v13;
        v26 = *(this + 32);
        *(v25 + 8 * v26) = v24;
        v11 = v26 + 1;
        *(this + 32) = v11;
      }

      ++v8;
      v27 = *(v9 + 1);
      v9 = (v9 + 4);
      v13 = v27;
LABEL_20:
      if (v15 >= v7 || v8 >= v10)
      {
        goto LABEL_26;
      }
    }
  }

  v16 = *(this + 8);
  v15 = *this;
LABEL_26:
  while (v15 < v7)
  {
    if (*(this + 24) <= *v16 || v11 >= *(this + 16))
    {
      SparseVector::AddWithFactor();
    }

    v28 = *v15++;
    v29 = *(this + 40);
    *(*(this + 48) + 4 * v11) = *v16;
    v30 = *(this + 32);
    *(v29 + 8 * v30) = v28;
    v11 = v30 + 1;
    *(this + 32) = v11;
    ++v16;
  }

  if (v8 >= v10)
  {
    v32 = *(this + 40);
  }

  else
  {
    do
    {
      if (*(this + 24) <= *v9 || v11 >= *(this + 16))
      {
        SparseVector::AddWithFactor();
      }

      v31 = *v8++;
      v32 = *(this + 40);
      *(*(this + 48) + 4 * v11) = *v9;
      v33 = *(this + 32);
      *(v32 + 8 * v33) = v31 * a3;
      v11 = v33 + 1;
      *(this + 32) = v11;
      v9 = (v9 + 4);
    }

    while (v8 < v10);
  }

  *this = v32;
  *(this + 40) = v4;
  *(this + 48) = v5;
  *(this + 20) = v11;
  return this;
}

double operator+=(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (v2 >= 1)
  {
    v3 = *a2;
    v4 = *(a2 + 8);
    do
    {
      v5 = *v3++;
      v6 = v5;
      LODWORD(v5) = *v4++;
      v7 = *(a1 + 8);
      result = v6 + *(v7 + 8 * LODWORD(v5));
      *(v7 + 8 * LODWORD(v5)) = result;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t FigMotionCalculateAdjustedFocusPosition(float a1, float a2, int *a3)
{
  v3 = *a3 - (a2 * a1);
  if (v3 >= 0.0)
  {
    if (v3 <= 255.0)
    {
      v4 = (v3 + 0.5);
    }

    else
    {
      v4 = 255;
    }
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
  return 0;
}

uint64_t FigMotionGetGravityZ(const __CFDictionary *a1, float *a2)
{
  if (!a1)
  {
    FigMotionGetGravityZ();
    return 0;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF4E18]);
  if (!Value)
  {
    FigMotionGetGravityZ();
    return 0;
  }

  v4 = Value;
  Length = CFDataGetLength(Value);
  if (Length <= 7)
  {
    FigMotionGetGravityZ();
  }

  else
  {
    v6 = Length;
    BytePtr = CFDataGetBytePtr(v4);
    if (BytePtr)
    {
      if (v6 == 40 * *(BytePtr + 1) + 8)
      {
        if (!*BytePtr)
        {
          goto LABEL_7;
        }

        FigMotionGetGravityZ();
      }

      else
      {
        FigMotionGetGravityZ();
      }
    }

    else
    {
      FigMotionGetGravityZ();
    }
  }

  BytePtr = v14;
LABEL_7:
  v8 = *(BytePtr + 1);
  if (v8 < 1)
  {
    v10 = 0.0;
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = (BytePtr + 44);
    v10 = 0.0;
    v11 = *(BytePtr + 1);
    do
    {
      v12 = *v9;
      v9 += 10;
      v10 = v10 + (v12 * 0.000015259);
      --v11;
    }

    while (v11);
  }

  v10 = v10 / v8;
LABEL_11:
  *a2 = v10;
  return 0;
}

uint64_t FigMotionCalculateAdjustedLensPosition(const __CFDictionary *a1, uint64_t a2, float *a3, float a4, float a5)
{
  valuePtr = 0;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF4B80]);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      v10 = valuePtr - (*(a2 + 40) * a4);
      if (v10 >= 0.0)
      {
        if (v10 <= 255.0)
        {
          v11 = (v10 + 0.5);
        }

        else
        {
          v11 = 255;
        }
      }

      else
      {
        v11 = 0;
      }

      valuePtr = v11;
      if (*(a2 + 16))
      {
        v12 = v11;
        v13 = *(a2 + 20) <= v11;
        v14 = 32;
        if (!v13)
        {
          v14 = 24;
        }

        v15 = *(a2 + v14);
        if (v13)
        {
          v16 = 36;
        }

        else
        {
          v16 = 28;
        }

        *a3 = (v15 + (*(a2 + v16) * v12)) * a5;
      }

      else
      {
        FigMotionCalculateAdjustedLensPosition();
      }
    }

    else
    {
      FigMotionCalculateAdjustedLensPosition();
    }
  }

  else
  {
    FigMotionCalculateAdjustedLensPosition();
  }

  return 0;
}

void OUTLINED_FUNCTION_6_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

id *H16ISPDisplayStrobePrepare(int a1)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x800402FCC0CB6uLL);
  if (!v2)
  {
    return v2;
  }

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
  v3 = 0;
  v4 = MEMORY[0x277D85DF8];
  while (1)
  {
    v5 = [MEMORY[0x277CD9E40] mainDisplay];
    v2[1] = v5;
    if (v5)
    {
      break;
    }

    fprintf(*v4, "warning: display was expected, but was not found.  Retrying main display, attempt=%d \n", v3);
    usleep(0x7A120u);
    if (++v3 == 10)
    {
      if (!v2[1])
      {
        fwrite("warning: display was expected, but was not found.\n", 0x32uLL, 1uLL, *v4);
        [MEMORY[0x277CD9FF0] commit];
        free(v2);
        return 0;
      }

      break;
    }
  }

  v2[2] = [MEMORY[0x277CD9ED0] layer];
  v2[3] = [MEMORY[0x277CD9ED0] layer];
  v6 = v2[2];
  [v2[1] bounds];
  [v6 setFrame:?];
  ConstantColor = CGColorGetConstantColor(*MEMORY[0x277CBF3B8]);
  if (ConstantColor)
  {
    v8 = ConstantColor;
    [v2[2] setContents:0];
    [v2[2] setBackgroundColor:v8];
  }

  v9 = 0.0;
  v10 = 0.0;
  if (a1)
  {
    *buffer = 0;
    v11 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/product");
    if (v11 && (CFProperty = IORegistryEntryCreateCFProperty(v11, @"island-notch-location", 0, 0)) != 0)
    {
      v13 = CFProperty;
      v32.length = fmin(CFDataGetLength(CFProperty), 4.0);
      v32.location = 0;
      CFDataGetBytes(v13, v32, buffer);
      if (*buffer)
      {
        v10 = *buffer + 40.0;
LABEL_15:
        MGGetFloat32Answer();
        v9 = v17;
        goto LABEL_16;
      }

      v14 = *v4;
      v15 = "warning: invalid strobe entry found in the registry";
      v16 = 51;
    }

    else
    {
      v14 = *v4;
      v15 = "warning: strobe coordinate not found in the registry";
      v16 = 52;
    }

    fwrite(v15, v16, 1uLL, v14);
    v10 = 184.0;
    goto LABEL_15;
  }

LABEL_16:
  v18 = v2[3];
  [v2[1] bounds];
  v20 = v19;
  [v2[1] bounds];
  [v18 setFrame:{0.0, v10, v20}];
  [v2[3] setCornerRadius:v9];
  [v2[3] setCornerCurve:*MEMORY[0x277CDA138]];
  [v2[3] setMaskedCorners:3];
  [v2[3] setMasksToBounds:1];
  [v2[2] addSublayer:v2[3]];
  v30[0] = *MEMORY[0x277CDA0F8];
  v21 = [v2[1] name];
  v22 = *MEMORY[0x277CDA100];
  v31[0] = v21;
  v31[1] = MEMORY[0x277CBEC38];
  v23 = *MEMORY[0x277CDA120];
  v30[1] = v22;
  v30[2] = v23;
  v30[3] = *MEMORY[0x277CDA0E0];
  v31[2] = MEMORY[0x277CBEC38];
  v31[3] = MEMORY[0x277CBEC38];
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
  v25 = [MEMORY[0x277CDA018] contextWithOptions:v24];
  *v2 = v25;
  [v25 setLayer:v2[2]];
  LODWORD(v26) = 2139095039;
  [*v2 setLevel:v26];
  [MEMORY[0x277CD9FF0] commit];
  v27 = objc_alloc_init(MEMORY[0x277CFD390]);
  v2[4] = v27;
  if (v27)
  {
    return v2;
  }

  fwrite("error: brightness system client initialization failed.\n", 0x37uLL, 1uLL, *v4);
  H16ISPDisplayStrobeDispose(v2);
  return 0;
}

uint64_t H16ISPDisplayStrobeDispose(void **a1)
{
  if (!a1)
  {
    return 3758097090;
  }

  v2 = *a1;
  if (v2)
  {
    [v2 dealloc];
    *a1 = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    [v3 dealloc];
  }

  free(a1);
  return 0;
}

uint64_t H16ISPDisplayStrobeSetScreenBrightness(uint64_t a1, int a2)
{
  v2 = 3758097090;
  if (a1)
  {
    if (a2 == 1)
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        v4 = &unk_283820050;
LABEL_8:
        if ([v3 setProperty:v4 forKey:@"PreStrobe"])
        {
          return 0;
        }

        else
        {
          return 3758097090;
        }
      }
    }

    else
    {
      if (a2)
      {
        return v2;
      }

      v3 = *(a1 + 32);
      if (v3)
      {
        v4 = &unk_283820068;
        goto LABEL_8;
      }
    }

    return 3758097112;
  }

  return v2;
}

uint64_t H16ISPDisplayStrobeSetScreenColor(uint64_t a1, uint64_t a2)
{
  components[4] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 3758097090;
  }

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
  v4 = [MEMORY[0x277CBEB18] array];
  if (_AXSInvertColorsEnabled() || _AXSClassicInvertColorsEnabled())
  {
    v5 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2B0]];
    if (!v5)
    {
      goto LABEL_9;
    }

    [v4 addObject:v5];
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 24) setFilters:v4];
LABEL_9:
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v8 = CGColorCreate(DeviceRGB, a2);
  if (v8)
  {
    v9 = v8;
    [*(a1 + 24) setContents:0];
    [*(a1 + 24) setBackgroundColor:v9];
    CFRelease(v9);
  }

  memset(components, 0, 24);
  v10 = 1.0;
  if (*(a2 + 24) == 0.0)
  {
    v10 = 0.0;
  }

  components[3] = v10;
  v11 = CGColorCreate(DeviceRGB, components);
  if (!v11)
  {
    [MEMORY[0x277CD9FF0] commit];
    if (!DeviceRGB)
    {
      return 0;
    }

    goto LABEL_15;
  }

  v12 = v11;
  [*(a1 + 16) setContents:0];
  [*(a1 + 16) setBackgroundColor:v12];
  [MEMORY[0x277CD9FF0] commit];
  CFRelease(v12);
  if (DeviceRGB)
  {
LABEL_15:
    CFRelease(DeviceRGB);
  }

  return 0;
}

uint64_t H16ISPDisplayGetStrobeBrightnessRatio(uint64_t a1, float *a2)
{
  v2 = 3758097090;
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        v5 = [v4 copyPropertyForKey:@"PreStrobeBrightnessRatio"];
        v2 = 3758097095;
        if (v5)
        {
          [v5 floatValue];
          *a2 = v6;
          if (v6 == 0.0)
          {
            return 3758097095;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

CFTypeRef H16ISP::CreateFormattedMetadata(uint64_t a1)
{
  v99[20] = *MEMORY[0x277D85DE8];
  NamedValues::NamedValues(&cf);
  NamedValues::NamedValues(&v84);
  *__str = 20;
  *__str = (*a1 >> 21) & 0x3FF;
  *__str = (*a1 >> 11) & 0x3FF;
  *__str = (*a1 >> 1) & 0x3FF;
  v3 = *(a1 + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    v81 = *(MEMORY[0x277D82818] + 64);
    v82 = *MEMORY[0x277D82818];
    v80 = *(MEMORY[0x277D82818] + 72);
    while (1)
    {
      v5 = *(a1 + 20 + 4 * v4);
      if (v5)
      {
        break;
      }

LABEL_153:
      if (++v4 == v3)
      {
        goto LABEL_154;
      }
    }

    NamedValues::NamedValues(&v83);
    v7 = (a1 + v5);
    v8 = "Shared AiCam";
    switch(v4)
    {
      case 0:
        *__str = "unknown";
        v9 = *(v7 + 4);
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            v10 = "blue";
          }

          else
          {
            if (v9 != 3)
            {
              goto LABEL_110;
            }

            v10 = "green-blue";
          }
        }

        else if (v9)
        {
          if (v9 != 1)
          {
            goto LABEL_110;
          }

          v10 = "red";
        }

        else
        {
          v10 = "green-red";
        }

        *__str = v10;
LABEL_110:
        __p[0] = "unknown";
        v66 = v7[14];
        if (v66 == 2)
        {
          v67 = "binning 1/4";
        }

        else if (v66 == 1)
        {
          v67 = "binning 1/2";
        }

        else
        {
          if (v7[14])
          {
            goto LABEL_117;
          }

          v67 = "binning disabled";
        }

        __p[0] = v67;
LABEL_117:
        *v93 = "unknown";
        v68 = v7[15];
        if (v68 == 2)
        {
          v69 = "binning 1/4";
        }

        else if (v68 == 1)
        {
          v69 = "binning 1/2";
        }

        else
        {
          if (v7[15])
          {
            goto LABEL_124;
          }

          v69 = "binning disabled";
        }

        *v93 = v69;
LABEL_124:
        *v92 = "unknown";
        v70 = v7[34];
        if (v70 > 1)
        {
          if (v70 == 2)
          {
            v71 = "raw12";
          }

          else
          {
            if (v70 != 3)
            {
              goto LABEL_134;
            }

            v71 = "raw14";
          }
        }

        else if (v7[34])
        {
          if (v70 != 1)
          {
            goto LABEL_134;
          }

          v71 = "raw10";
        }

        else
        {
          v71 = "raw8";
        }

        *v92 = v71;
LABEL_134:
        *v89 = "unknown";
        if (v7[35] == 1)
        {
          v72 = "unpacked";
        }

        else
        {
          if (v7[35])
          {
LABEL_139:
            *&v88 = 1016;
            LODWORD(v88) = *(v7 + 43);
            LODWORD(v88) = *(v7 + 44);
            LODWORD(v88) = *(v7 + 45);
            LODWORD(v88) = *(v7 + 46);
            LODWORD(v88) = *(v7 + 47);
            v88 = vcvtd_n_f64_u32(*(v7 + 12), 8uLL);
            v88 = vcvtd_n_f64_u32(v7[32], 8uLL);
            LODWORD(v88) = *(v7 + 72);
            LODWORD(v88) = *(v7 + 73);
            v88 = COERCE_DOUBLE(bswap64(*(v7 + 37)));
            *&v88 = v7 + 48;
            *&v88 = v7 + 64;
            *&v88 = v7 + 80;
            *&v88 = v7 + 96;
            v73 = *(v7 + 80);
            v74 = *(v7 + 81);
            v86 = bswap32(v74);
            v87 = bswap32(v73);
            LODWORD(v88) = v73;
            LODWORD(v88) = BYTE1(v73);
            LODWORD(v88) = BYTE2(v73);
            LODWORD(v88) = HIBYTE(v73) & 0xF;
            LODWORD(v88) = v73 >> 28;
            LODWORD(v88) = HIBYTE(v74);
            LODWORD(v88) = BYTE2(v74);
            LODWORD(v88) = BYTE1(v74);
            LODWORD(v88) = v74;
            LODWORD(v88) = v7[168];
            v88 = vcvtd_n_f64_s32(v7[231], 0xFuLL) + v7[168];
            LODWORD(v88) = *(v7 + 338);
            LODWORD(v88) = *(v7 + 339);
            LODWORD(v88) = *(v7 + 460);
            LODWORD(v88) = *(v7 + 461);
            LODWORD(v88) = v7[229];
            LODWORD(v88) = v7[246];
            LODWORD(v88) = v7[247];
            LODWORD(v88) = v7[248];
            LODWORD(v88) = v7[249];
            LODWORD(v88) = *(v7 + 500);
            LODWORD(v88) = *(v7 + 501);
            LODWORD(v88) = v7[254];
            LODWORD(v88) = v7[255];
            LODWORD(v88) = v7[256];
            LODWORD(v88) = v7[257];
            LODWORD(v88) = *(v7 + 129);
            LODWORD(v88) = *(v7 + 130);
            LODWORD(v88) = *(v7 + 131);
            LODWORD(v88) = *(v7 + 132);
            LODWORD(v88) = *(v7 + 133);
            LODWORD(v88) = *(v7 + 134);
            LODWORD(v88) = *(v7 + 135);
            LODWORD(v88) = v7[272];
            LODWORD(v88) = v7[273];
            LODWORD(v88) = v7[282];
            LODWORD(v88) = v7[283];
            LODWORD(v88) = v7[284];
            LODWORD(v88) = v7[285];
            LODWORD(v88) = v7[286];
            LODWORD(v88) = v7[287];
            LODWORD(v88) = v7[288];
            LODWORD(v88) = v7[289];
            LODWORD(v88) = *(v7 + 145);
            LODWORD(v88) = *(v7 + 146);
            LODWORD(v88) = v7[294];
            LODWORD(v88) = *(v7 + 148);
            LODWORD(v88) = *(v7 + 149);
            LODWORD(v88) = *(v7 + 150);
            LODWORD(v88) = *(v7 + 604);
            LODWORD(v88) = *(v7 + 605);
            LODWORD(v88) = *(v7 + 152);
            LODWORD(v88) = *(v7 + 153);
            LODWORD(v88) = *(v7 + 154);
            LODWORD(v88) = v7[312];
            LODWORD(v88) = v7[313];
            LODWORD(v88) = v7[314];
            LODWORD(v88) = v7[315];
            LODWORD(v88) = *(v7 + 155);
            LODWORD(v88) = *(v7 + 632);
            LODWORD(v88) = v7[317];
            LODWORD(v88) = *(v7 + 159);
            LODWORD(v88) = *(v7 + 162);
            LODWORD(v88) = v7[326];
            LODWORD(v88) = v7[327];
            LODWORD(v88) = v7[328];
            LODWORD(v88) = v7[329];
            LODWORD(v88) = *(v7 + 660);
            LODWORD(v88) = *(v7 + 661);
            LODWORD(v88) = *(v7 + 167);
            LODWORD(v88) = *(v7 + 168);
            LODWORD(v88) = v7[338];
            LODWORD(v88) = v7[339];
            LODWORD(v88) = v7[340];
            LODWORD(v88) = v7[341];
            LODWORD(v88) = *(v7 + 173);
            LODWORD(v88) = v7[348];
            LODWORD(v88) = v7[349];
            LODWORD(v88) = v7[350];
            LODWORD(v88) = v7[351];
            LODWORD(v88) = v7[352];
            LODWORD(v88) = v7[353];
            LODWORD(v88) = v7[354];
            LODWORD(v88) = v7[355];
            LODWORD(v88) = v7[356];
            LODWORD(v88) = v7[357];
            LODWORD(v88) = v7[358];
            LODWORD(v88) = v7[359];
            LODWORD(v88) = v7[360];
            LODWORD(v88) = v7[361];
            LODWORD(v88) = v7[362];
            LODWORD(v88) = v7[363];
            LODWORD(v88) = v7[364];
            LODWORD(v88) = v7[365];
            LODWORD(v88) = v7[366];
            LODWORD(v88) = v7[367];
            LODWORD(v88) = v7[368];
            LODWORD(v88) = v7[369];
            LODWORD(v88) = v7[370];
            LODWORD(v88) = v7[371];
            LODWORD(v88) = v7[372];
            LODWORD(v88) = v7[373];
            LODWORD(v88) = *(v7 + 748);
            LODWORD(v88) = *(v7 + 749);
            LODWORD(v88) = *(v7 + 750);
            LODWORD(v88) = v7[377];
            LODWORD(v88) = *(v7 + 804);
            LODWORD(v88) = *(v7 + 805);
            v8 = "Shared Input";
            goto LABEL_151;
          }

          v72 = "packed";
        }

        *v89 = v72;
        goto LABEL_139;
      case 1:
        v25 = "unknown";
        *__str = "unknown";
        v26 = *v7;
        if (v26 == 2)
        {
          v27 = "R'G'B'";
        }

        else if (v26 == 1)
        {
          v27 = "Y'CbCr 4:2:2";
        }

        else
        {
          if (*v7)
          {
            goto LABEL_99;
          }

          v27 = "Y'CbCr 4:2:0";
        }

        *__str = v27;
LABEL_99:
        __p[0] = "unknown";
        v64 = v7[1];
        if (v64 <= 1)
        {
          if (v7[1])
          {
            if (v64 != 1)
            {
              goto LABEL_144;
            }

            v65 = "StatsBlock";
          }

          else
          {
            v65 = "BackEnd";
          }
        }

        else
        {
          switch(v64)
          {
            case 2u:
              v65 = "RawProcBlock";
              break;
            case 3u:
              v65 = "RGBProcBlock";
              break;
            case 4u:
              v65 = "YCCProcBlock";
              break;
            default:
              goto LABEL_144;
          }
        }

        __p[0] = v65;
LABEL_144:
        v75 = "RGBY";
        if (!*(v7 + 9))
        {
          v75 = "RGGB";
        }

        *v93 = v75;
        v76 = *(v7 + 1028);
        if (v76 == 1)
        {
          v25 = "log2";
        }

        else if (!v76)
        {
          v25 = "linear";
        }

        *v92 = v25;
        *v89 = 4876;
        NamedValues::NamedValues(v89);
        v88 = vcvtd_n_f64_u32(*(v7 + 1027), 4uLL);
        LODWORD(v88) = *(v7 + 4138);
        LODWORD(v88) = *(v7 + 4139);
        LODWORD(v88) = *(v7 + 1035);
        LODWORD(v88) = *(v7 + 1036);
        LODWORD(v88) = *(v7 + 1037);
        LODWORD(v88) = *(v7 + 1038);
        LODWORD(v88) = *(v7 + 1039);
        LODWORD(v88) = *(v7 + 1040);
        LODWORD(v88) = *(v7 + 1041);
        LODWORD(v88) = *(v7 + 1042);
        LODWORD(v88) = *(v7 + 1043);
        LODWORD(v88) = *(v7 + 1044);
        LODWORD(v88) = *(v7 + 1045);
        LODWORD(v88) = *(v7 + 1046);
        LODWORD(v88) = *(v7 + 4188);
        NamedValues::~NamedValues(v89);
        v8 = "Shared Output";
LABEL_151:
LABEL_152:
        NamedValues::~NamedValues(&v83);
        goto LABEL_153;
      case 2:
        *__str = 5856;
        *__str = vcvtd_n_f64_u32(v7[2], 8uLL);
        *__str = vcvtd_n_f64_u32(*(v7 + 1313), 8uLL);
        *__str = vcvtd_n_f64_u32(v7[4], 8uLL);
        *__str = v7[5];
        *__str = *(v7 + 13);
        *__str = vcvtd_n_f64_u32(*(v7 + 5), 0x10uLL);
        *__str = *(v7 + 158);
        *__str = *(v7 + 1732);
        *__str = *(v7 + 434);
        *__str = v7[870];
        *__str = v7[871];
        *__str = v7[872];
        *__str = *(v7 + 437);
        *__str = *(v7 + 438);
        *__str = *(v7 + 439);
        *__str = *(v7 + 440);
        *__str = *(v7 + 441);
        *__str = *(v7 + 442);
        *__str = *(v7 + 443);
        *__str = *(v7 + 444);
        *__str = *(v7 + 445);
        *__str = *(v7 + 446);
        *__str = *(v7 + 447);
        *__str = *(v7 + 448);
        *__str = *(v7 + 449);
        *__str = *(v7 + 450);
        *__str = *(v7 + 451);
        *__str = *(v7 + 452);
        *__str = *(v7 + 453);
        *__str = *(v7 + 455);
        *__str = *(v7 + 456);
        *__str = *(v7 + 457);
        *__str = *(v7 + 458);
        *__str = *(v7 + 459);
        *__str = *(v7 + 460);
        *__str = *(v7 + 461);
        *__str = *(v7 + 462);
        *__str = *(v7 + 463);
        *__str = *(v7 + 479);
        *__str = *(v7 + 483);
        *__str = *(v7 + 484);
        *__str = *(v7 + 485);
        *__str = *(v7 + 486);
        *__str = *(v7 + 487);
        *__str = *(v7 + 488);
        *__str = *(v7 + 489);
        *__str = *(v7 + 490);
        *__str = *(v7 + 491);
        *__str = *(v7 + 492);
        *__str = *(v7 + 493);
        *__str = v7[988];
        *__str = v7[989];
        *__str = v7[990];
        *__str = v7[991];
        *__str = v7[992];
        *__str = *(v7 + 497);
        NamedValues::NamedValues(__str);
        LODWORD(__p[0]) = *(v7 + 592);
        LODWORD(__p[0]) = *(v7 + 593);
        NamedValues::NamedValues(__p);
        *v93 = *(v7 + 405);
        *v93 = *(v7 + 406);
        *v93 = *(v7 + 407);
        *v93 = *(v7 + 408);
        *v93 = *(v7 + 409);
        *v93 = *(v7 + 410);
        *v93 = *(v7 + 411);
        *v93 = *(v7 + 412);
        *v93 = *(v7 + 413);
        *v93 = *(v7 + 414);
        *v93 = *(v7 + 415);
        *v93 = *(v7 + 416);
        NamedValues::~NamedValues(__p);
        NamedValues::~NamedValues(__str);
        v8 = "Shared Auto Exposure";
        goto LABEL_151;
      case 3:
        *__str = 3768;
        NamedValues::NamedValues(v92);
        *__str = v7[80];
        *__str = v7[81];
        *__str = v7[82];
        *__str = v7[83];
        *__str = v7[1292];
        *__str = v7[1293];
        *__str = *(v7 + 2716);
        *__str = v7[1360];
        *__str = v7[1361];
        *__str = *(v7 + 682);
        *__str = *(v7 + 2732);
        *__str = *(v7 + 2733);
        *__str = *(v7 + 2734);
        *__str = *(v7 + 684);
        *__str = *(v7 + 685);
        *__str = v7[1372];
        *__str = v7[1373];
        *__str = v7[1390];
        *__str = v7[1391];
        *__str = v7[1392];
        *__str = v7[1393];
        *__str = v7[1394];
        *__str = *(v7 + 775);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__str);
        MEMORY[0x22AA55960](&v95, *(v7 + 840));
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](__str, __p);
        if (v91 >= 0)
        {
          v40 = __p;
        }

        else
        {
          v40 = __p[0];
        }

        NamedValue::NamedValue(v93, "roiType", v40, 0);
        if (v91 < 0)
        {
          operator delete(__p[0]);
        }

        NamedValues::push_back(&v83, v93);
        NamedValue::~NamedValue(v93);
        *__str = v82;
        *&__str[*(v82 - 24)] = v81;
        *&v95 = v80;
        *(&v95 + 1) = MEMORY[0x277D82878] + 16;
        if (v98 < 0)
        {
          operator delete(v97);
        }

        *(&v95 + 1) = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v96);
        std::iostream::~basic_iostream();
        MEMORY[0x22AA55B20](v99);
        *__str = v7[1695];
        NamedValues::~NamedValues(v92);
        v8 = "Shared Auto Focus";
        goto LABEL_151;
      case 4:
        *__str = 1356;
        *__str = vcvtd_n_f64_u32(v7[21], 0xEuLL);
        *__str = vcvtd_n_f64_u32(v7[22], 0xEuLL);
        *__str = vcvtd_n_f64_u32(*(v7 + 13), 0xCuLL);
        *__str = v7[73];
        *__str = v7[86];
        *__str = v7[87];
        *__str = v7[88];
        *__str = *(v7 + 178);
        *__str = *(v7 + 179);
        *__str = *(v7 + 180);
        *__str = v7[91];
        *__str = v7[92];
        *__str = v7[93];
        *__str = v7[94];
        *__str = v7[95];
        *__str = v7[96];
        *__str = v7[97];
        *__str = v7[98];
        *__str = v7[99];
        *__str = *(v7 + 68);
        *__str = *(v7 + 98);
        *__str = v7[230];
        *__str = vcvtd_n_f64_u32(v7[138], 0xEuLL);
        *__str = vcvtd_n_f64_u32(v7[139], 0xEuLL);
        *__str = *(v7 + 70);
        v8 = "Shared Auto White Balance";
        goto LABEL_151;
      case 5:
        *__str = 24;
        v8 = "Adaptive Tone Curve";
        goto LABEL_151;
      case 6:
        *__str = 112;
        *__str = *v7;
        *__str = v7[1];
        *__str = v7[2];
        *__str = v7[3];
        *__str = v7[4];
        *__str = v7[5];
        *__str = v7[10];
        v8 = "Shared LTM";
        goto LABEL_151;
      case 7:
        *__str = 612;
        *__str = vcvtd_n_f64_u32(*(v7 + 5), 8uLL);
        *__str = vcvtd_n_f64_u32(*(v7 + 10), 8uLL);
        *__str = *(v7 + 60);
        *__str = *(v7 + 61);
        *__str = *(v7 + 62);
        *__str = *(v7 + 63);
        *__str = *(v7 + 64);
        *__str = *(v7 + 65);
        *__str = *(v7 + 66);
        *__str = *(v7 + 67);
        *__str = *(v7 + 68);
        *__str = *(v7 + 69);
        *__str = *(v7 + 70);
        *__str = *(v7 + 71);
        *__str = *(v7 + 72);
        *__str = *(v7 + 73);
        *__str = *(v7 + 74);
        *__str = *(v7 + 75);
        *__str = v7[38];
        *__str = v7[39];
        *__str = v7[40];
        *__str = v7[41];
        *__str = vcvtd_n_f64_u32(v7[56], 0xEuLL);
        *__str = vcvtd_n_f64_u32(v7[57], 0xEuLL);
        *__str = vcvtd_n_f64_u32(v7[58], 0xCuLL);
        *__str = vcvtd_n_f64_u32(v7[59], 0xCuLL);
        *__str = vcvtd_n_f64_u32(v7[60], 0xCuLL);
        *__str = vcvtd_n_f64_u32(v7[61], 0xCuLL);
        *__str = vcvtd_n_f64_u32(v7[62], 0xCuLL);
        *__str = vcvtd_n_f64_u32(v7[63], 0xCuLL);
        *__str = *(v7 + 128);
        *__str = *(v7 + 129);
        *__str = *(v7 + 132);
        *__str = *(v7 + 133);
        *__str = v7[67];
        *__str = v7[68];
        *__str = v7[69];
        *__str = v7[76];
        *__str = v7[77];
        *__str = *(v7 + 160);
        *__str = *(v7 + 161);
        *__str = *(v7 + 162);
        *__str = *(v7 + 41);
        *__str = *(v7 + 44);
        *__str = *(v7 + 45);
        *__str = *(v7 + 46);
        *__str = *(v7 + 47);
        *__str = *(v7 + 48);
        *__str = *(v7 + 49);
        *__str = *(v7 + 50);
        *__str = *(v7 + 51);
        *__str = *(v7 + 52);
        *__str = *(v7 + 53);
        *__str = v7[108];
        *__str = v7[109];
        *__str = *(v7 + 243);
        *__str = v7[149];
        *__str = v7[154];
        *__str = v7[155];
        *__str = *(v7 + 78);
        *__str = *(v7 + 79);
        *__str = *(v7 + 80);
        *__str = *(v7 + 81);
        *__str = *(v7 + 91);
        *__str = *(v7 + 92);
        *__str = *(v7 + 93);
        *__str = *(v7 + 94);
        v15 = 0;
        v16 = v7 + 122;
        v17 = (a1 + 250 + v5);
        do
        {
          NamedValues::NamedValues(__p);
          v18 = &v16[8 * v15];
          *v93 = *v18;
          *v93 = *(v18 + 4);
          v19 = 0;
          v20 = v17;
          do
          {
            NamedValues::NamedValues(v93);
            *v92 = *(v20 - 1);
            *v92 = *v20;
            snprintf(__str, 0x40uLL, "strength[%d]", v19);
            NamedValues::~NamedValues(v93);
            ++v19;
            v20 += 2;
          }

          while (v19 != 5);
          snprintf(__str, 0x40uLL, "mbnrConfig[%d]", v15);
          NamedValues::~NamedValues(__p);
          ++v15;
          v17 += 16;
        }

        while (v15 != 3);
        v8 = "Shared RAW Proc";
        goto LABEL_151;
      case 8:
        *__str = 776;
        *__str = v7[2];
        *__str = v7[275];
        *__str = *(v7 + 552);
        *__str = *(v7 + 553);
        *__str = *(v7 + 554);
        *__str = *(v7 + 555);
        *__str = *(v7 + 568);
        *__str = *(v7 + 640);
        v8 = "Shared RGB Proc";
        goto LABEL_151;
      case 9:
        *__str = 192;
        *__str = *v7;
        *__str = *(v7 + 2);
        *__str = *(v7 + 3);
        *__str = *(v7 + 4);
        *__str = *(v7 + 5);
        *__str = *(v7 + 6);
        *__str = *(v7 + 7);
        *__str = *(v7 + 8);
        *__str = *(v7 + 9);
        *__str = *(v7 + 10);
        *__str = *(v7 + 11);
        *__str = *(v7 + 12);
        *__str = *(v7 + 13);
        *__str = v7[7];
        *__str = v7[8];
        *__str = v7[9];
        *__str = v7[10];
        *__str = v7[11];
        *__str = v7[12];
        *__str = v7[79];
        *__str = v7[80];
        *__str = *(v7 + 162);
        *__str = v7[82];
        *__str = v7[83];
        *__str = v7[84];
        *__str = *(v7 + 43);
        *__str = *(v7 + 44);
        *__str = *(v7 + 45);
        *__str = *(v7 + 184);
        v8 = "Shared YCC Proc";
        goto LABEL_151;
      case 10:
        *__str = 4;
        *__str = *v7;
        *__str = *(v7 + 1);
        v8 = "Shared BES Proc";
        goto LABEL_151;
      case 11:
        *__str = 20132;
        *__str = *(v7 + 324);
        *__str = *(v7 + 325);
        *__str = *(v7 + 326);
        *__str = v7[164];
        *__str = v7[165];
        *__str = v7[166];
        *__str = v7[167];
        *__str = *(v7 + 326);
        *__str = *(v7 + 326);
        *__str = *(v7 + 326);
        *__str = *(v7 + 326);
        *__str = *(v7 + 326);
        *__str = *(v7 + 326);
        *__str = *(v7 + 326);
        *__str = v7[170];
        *__str = *(v7 + 342);
        *__str = *(v7 + 343);
        *__str = v7[174];
        *__str = v7[175];
        *__str = v7[176];
        *__str = v7[177];
        *__str = v7[178];
        *__str = v7[179];
        *__str = v7[180];
        *__str = v7[181];
        LOWORD(v28) = v7[186];
        LOWORD(v29) = v7[187];
        LOWORD(v30) = v7[188];
        LOWORD(v32) = v7[189];
        LOWORD(v33) = v7[190];
        LOWORD(v34) = v7[191];
        *__str = v7[191];
        *__str = v7[192];
        *__str = v7[198];
        *__str = v7[199];
        *__str = v7[200];
        *__str = v7[201];
        *__str = v7[204];
        *__str = v7[205];
        *__str = v7[212];
        *__str = v7[213];
        *__str = v7[214];
        *__str = v7[215];
        *__str = v7[216];
        *__str = v7[217];
        *__str = v7[340];
        *__str = v7[341];
        *__str = v7[342];
        *__str = v7[343];
        *__str = v7[344];
        *__str = v7[345];
        *__str = *(v7 + 4071);
        *__str = *(v7 + 4072);
        v8 = "Shared Stats";
        goto LABEL_151;
      case 12:
        *__str = 0x10000;
        v8 = "Shared Debug";
        goto LABEL_151;
      case 13:
        *__str = 61040;
        v8 = "Shared OIS";
        goto LABEL_151;
      case 14:
        *__str = 65608;
        v8 = "Shared FocusPixel";
        goto LABEL_151;
      case 15:
        *__str = 8222;
        *__str = *v7;
        *__str = v7[1];
        *__str = v7[2];
        *__str = v7[3];
        *__str = v7[4];
        *__str = v7[5];
        v8 = "Shared LocalHist";
        goto LABEL_151;
      case 16:
        *__str = 65540;
        v8 = "Shared VIS";
        goto LABEL_151;
      case 17:
        *__str = 16388;
        v8 = "Shared TNR";
        goto LABEL_151;
      case 18:
        *__str = 64;
        *__str = v7[8];
        *__str = v7[9];
        *__str = v7[10];
        *__str = v7[11];
        *__str = v7[12];
        *__str = v7[13];
        *__str = v7[14];
        *__str = v7[15];
        *__str = v7[16];
        *__str = v7[17];
        *__str = v7[28];
        *__str = *(v7 + 58);
        *__str = *(v7 + 59);
        *__str = *(v7 + 60);
        v8 = "Shared System";
        goto LABEL_151;
      case 19:
        *__str = 74192;
        *__str = v7[36805];
        *__str = v7[36806];
        *__str = v7[36807];
        *__str = v7[36808];
        *__str = v7[36810];
        *__str = v7[36812];
        *__str = v7[36813];
        *__str = v7[36814];
        *__str = v7[37073];
        *__str = v7[37074];
        *__str = *(v7 + 18538);
        *__str = *(v7 + 18539);
        *__str = v7[37080];
        *__str = v7[37081];
        v8 = "Shared LTM LUTs";
        goto LABEL_151;
      case 20:
        *__str = 1736;
        v8 = "Shared VIS Info";
        goto LABEL_151;
      case 21:
        *__str = 11008;
        v8 = "Shared Motion Info";
        goto LABEL_151;
      case 22:
        *__str = 4144;
        v8 = "Shared AF FocusMap";
        goto LABEL_151;
      case 23:
        *__str = 644;
        *__str = *v7;
        v8 = "Shared DMA Config";
        goto LABEL_151;
      case 24:
        *__str = 19904;
        *__str = *v7;
        *__str = v7[1];
        *__str = *(v7 + 1);
        *__str = *(v7 + 2);
        *__str = *(v7 + 3);
        *__str = *(v7 + 4);
        *__str = *(v7 + 5);
        *__str = *(v7 + 6);
        *__str = v7[12];
        *__str = v7[13];
        v8 = "Shared HITH";
        goto LABEL_151;
      case 25:
        *__str = 77528;
        *__str = *v7;
        *__str = v7[1];
        *__str = *(v7 + 19381);
        v8 = "Shared APS";
        goto LABEL_151;
      case 26:
        *__str = 786600;
        v8 = "Shared SideBand";
        goto LABEL_151;
      case 27:
        *__str = 33012;
        *__str = *v7;
        *__str = *(v7 + 4);
        v8 = "Shared VisionProc";
        goto LABEL_151;
      case 28:
        *__str = 116;
        *__str = *v7;
        *__str = v7[1];
        *__str = v7[2];
        *__str = v7[3];
        *__str = *(v7 + 2);
        *__str = *(v7 + 3);
        *__str = *(v7 + 4);
        *__str = *(v7 + 5);
        *__str = *(v7 + 6);
        *__str = *(v7 + 14);
        *__str = *(v7 + 15);
        *__str = v7[14];
        *__str = v7[15];
        *__str = vcvtd_n_f64_s32(*(v7 + 8), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 9), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 10), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 11), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 12), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 13), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 16), 5uLL);
        *__str = *(v7 + 18);
        *__str = v7[34];
        *__str = *(v7 + 19);
        *__str = *(v7 + 20);
        v8 = "Shared Projector";
        goto LABEL_151;
      case 29:
        *__str = 456;
        *__str = *v7;
        *__str = *(v7 + 1);
        v8 = "Shared BodyDetector";
        goto LABEL_151;
      case 30:
        *__str = 156;
        *__str = *v7;
        *__str = v7[1];
        *__str = v7[6];
        *__str = v7[7];
        *__str = v7[8];
        *__str = v7[9];
        *__str = *(v7 + 5);
        *__str = *(v7 + 6);
        *__str = *(v7 + 7);
        *__str = *(v7 + 8);
        *__str = *(v7 + 9);
        *__str = *(v7 + 12);
        *__str = *(v7 + 13);
        *__str = *(v7 + 14);
        *__str = *(v7 + 15);
        *__str = v7[34];
        *__str = *(v7 + 18);
        *__str = *(v7 + 19);
        *__str = *(v7 + 20);
        *__str = *(v7 + 21);
        *__str = *(v7 + 22);
        *__str = *(v7 + 25);
        *__str = *(v7 + 26);
        v8 = "Shared Distortion";
        goto LABEL_151;
      case 31:
        *__str = 1024;
        v8 = "BodyDetector Debug";
        goto LABEL_151;
      case 32:
        *__str = 1453212;
        *__str = *v7;
        *__str = v7[1];
        v8 = "PDE Debug";
        goto LABEL_151;
      case 33:
        *__str = 44;
        *__str = *v7;
        *__str = v7[1];
        *__str = vcvtd_n_f64_s32(*(v7 + 3), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 4), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 5), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 6), 5uLL);
        *__str = *(v7 + 7);
        *__str = *(v7 + 8);
        *__str = *(v7 + 9);
        *__str = *(v7 + 10);
        v8 = "Shared Powersupply";
        goto LABEL_151;
      case 34:
        *__str = 2284;
        *__str = *(v7 + 570);
        *__str = 0;
        if (*(v7 + 570))
        {
          v62 = 0;
          v63 = v7;
          do
          {
            LODWORD(__p[0]) = *v63;
            LODWORD(__p[0]) = v63[1];
            LODWORD(__p[0]) = *(v63 + 1);
            LODWORD(__p[0]) = *(v63 + 2);
            LODWORD(__p[0]) = *(v63 + 3);
            LODWORD(__p[0]) = *(v63 + 4);
            LODWORD(__p[0]) = *(v63 + 5);
            LODWORD(__p[0]) = *(v63 + 6);
            LODWORD(__p[0]) = *(v63 + 7);
            LODWORD(__p[0]) = v63[16];
            LODWORD(__p[0]) = v63[17];
            LODWORD(__p[0]) = *(v63 + 9);
            LODWORD(__p[0]) = v63[20];
            LODWORD(__p[0]) = v63[21];
            LODWORD(__p[0]) = v63[22];
            LODWORD(__p[0]) = *(v63 + 164);
            LODWORD(__p[0]) = *(v63 + 51);
            LODWORD(__p[0]) = v63[24];
            LODWORD(__p[0]) = *(v63 + 13);
            LODWORD(__p[0]) = v63[28];
            LODWORD(__p[0]) = v63[29];
            LODWORD(__p[0]) = *(v63 + 15);
            LODWORD(__p[0]) = *(v63 + 16);
            LODWORD(__p[0]) = *(v63 + 17);
            LODWORD(__p[0]) = *(v63 + 18);
            LODWORD(__p[0]) = *(v63 + 19);
            LODWORD(__p[0]) = v63[40];
            LODWORD(__p[0]) = v63[327];
            *__str = ++v62;
            v63 += 380;
          }

          while (v62 < *(v7 + 570));
        }

        v8 = "Shared Multi Slave";
        goto LABEL_151;
      case 35:
        *__str = 10032;
        *__str = *v7;
        *__str = HIWORD(*v7) & 1;
        *__str = v7[2];
        v8 = "Shared FD DCN";
        goto LABEL_151;
      case 36:
        *__str = 4212;
        *__str = *v7;
        *__str = HIWORD(*v7) & 1;
        *__str = (*v7 >> 18) & 1;
        *__str = (*v7 >> 19) & 1;
        *__str = (*v7 >> 20) & 1;
        *__str = (*v7 >> 21) & 1;
        *__str = *(v7 + 1);
        *__str = *(v7 + 2);
        v8 = "Shared FID DCN";
        goto LABEL_151;
      case 37:
        *__str = 1036;
        *__str = *v7;
        *__str = v7[1];
        *__str = v7[2];
        *__str = v7[3];
        *__str = v7[4];
        *__str = v7[5];
        v8 = "Shared YCC Histogram";
        goto LABEL_151;
      case 38:
        *__str = 148024;
        *__str = *v7;
        v8 = "Shared FD DCN Debug";
        goto LABEL_151;
      case 39:
        *__str = 695440;
        *__str = *v7;
        v8 = "Shared FID DCN Debug";
        goto LABEL_151;
      case 40:
        *__str = 1788;
        *__str = *v7;
        *__str = HIWORD(*v7) & 1;
        *__str = (*v7 >> 17) & 1;
        *__str = *(v7 + 1);
        v8 = "Shared Attention";
        goto LABEL_151;
      case 41:
        *__str = 246036;
        *__str = *v7;
        v8 = "Shared Attention Debug";
        goto LABEL_151;
      case 42:
        *__str = 2945604;
        *__str = *v7;
        *__str = v7[1];
        v8 = "Shared IR PDP Debug";
        goto LABEL_151;
      case 43:
        *__str = 3848;
        *__str = *v7;
        *__str = v7[1];
        *__str = *(v7 + 1);
        v8 = "Shared MasterSlave AF";
        goto LABEL_151;
      case 44:
        *__str = 480;
        *__str = *v7;
        *__str = v7[1];
        *__str = v7[2];
        *__str = *(v7 + 2);
        *__str = v7[6];
        *__str = *(v7 + 6);
        *__str = v7[14];
        *__str = v7[15];
        *__str = v7[36];
        if (*(v7 + 91))
        {
          *__str = v7[186];
          *__str = v7[187];
          *__str = v7[208];
        }

        *__str = v7[38];
        *__str = v7[39];
        *__str = v7[40];
        *__str = v7[41];
        *__str = v7[7];
        *__str = v7[8];
        *__str = v7[42];
        *__str = *(v7 + 22);
        *__str = *(v7 + 23);
        *__str = *(v7 + 24);
        *__str = *(v7 + 25);
        *__str = *(v7 + 26);
        *__str = v7[37];
        v8 = "Shared PDE";
        goto LABEL_151;
      case 45:
        *__str = 134012;
        *__str = *v7;
        *__str = *(v7 + 9);
        *__str = *(v7 + 40);
        *__str = *(v7 + 49);
        *__str = *(v7 + 52);
        *__str = *(v7 + 212);
        *__str = *(v7 + 105);
        *__str = *(v7 + 824);
        *__str = *(v7 + 207);
        *__str = *(v7 + 208);
        *__str = *(v7 + 209);
        *__str = *(v7 + 210);
        *__str = *(v7 + 213);
        *__str = *(v7 + 215);
        *__str = *(v7 + 221);
        *__str = *(v7 + 222);
        *__str = *(v7 + 223);
        *__str = *(v7 + 224);
        *__str = *(v7 + 225);
        *__str = *(v7 + 226);
        *__str = *(v7 + 227);
        *__str = *(v7 + 912);
        *__str = v7[457];
        *__str = v7[458];
        *__str = v7[459];
        *__str = v7[460];
        *__str = v7[461];
        *__str = *(v7 + 940);
        *__str = *(v7 + 956);
        *__str = *(v7 + 957);
        *__str = *(v7 + 958);
        *__str = *(v7 + 959);
        *__str = *(v7 + 240);
        *__str = *(v7 + 964);
        *__str = *(v7 + 242);
        *__str = *(v7 + 243);
        *__str = *(v7 + 992);
        *__str = v7[497];
        *__str = *(v7 + 249);
        *__str = *(v7 + 250);
        *__str = v7[1182];
        *__str = *(v7 + 6052);
        *__str = *(v7 + 25556);
        *__str = *(v7 + 25557);
        *__str = *(v7 + 25558);
        *__str = *(v7 + 25559);
        *__str = *(v7 + 25560);
        *__str = *(v7 + 25561);
        *__str = *(v7 + 25562);
        *__str = *(v7 + 25563);
        *__str = *(v7 + 25564);
        *__str = *(v7 + 25565);
        *__str = *(v7 + 25566);
        *__str = *(v7 + 25567);
        *__str = *(v7 + 25568);
        *__str = *(v7 + 25569);
        *__str = *(v7 + 25570);
        *__str = *(v7 + 25571);
        *__str = *(v7 + 25572);
        *__str = *(v7 + 25573);
        *__str = *(v7 + 25574);
        *__str = *(v7 + 25575);
        *__str = *(v7 + 25656);
        *__str = *(v7 + 25664);
        *__str = *(v7 + 25665);
        *__str = *(v7 + 25666);
        *__str = *(v7 + 25667);
        *__str = *(v7 + 25668);
        *__str = *(v7 + 25669);
        *__str = *(v7 + 6422);
        *__str = *(v7 + 6711);
        *__str = *(v7 + 6985);
        *__str = *(v7 + 6986);
        *__str = *(v7 + 6987);
        *__str = *(v7 + 6988);
        *__str = *(v7 + 6994);
        *__str = *(v7 + 6995);
        *__str = *(v7 + 6997);
        *__str = *(v7 + 7000);
        *__str = *(v7 + 7005);
        *__str = *(v7 + 7014);
        *__str = *(v7 + 7015);
        *__str = *(v7 + 7020);
        *__str = *(v7 + 7021);
        *__str = *(v7 + 7025);
        *__str = *(v7 + 7026);
        *__str = *(v7 + 7027);
        *__str = *(v7 + 7028);
        *__str = *(v7 + 7534);
        *__str = *(v7 + 7535);
        v8 = "Shared CBAF Debug";
        goto LABEL_151;
      case 46:
        *__str = 131136;
        v8 = "Shared PDAFHW Debug";
        goto LABEL_151;
      case 47:
        *__str = 336;
        v8 = "Shared CRC Check";
        goto LABEL_151;
      case 48:
        *__str = 24;
        v8 = "Shared Calibration";
        goto LABEL_151;
      case 49:
        *__str = 32;
        *__str = *v7;
        *__str = *(v7 + 1);
        *__str = *(v7 + 2);
        *__str = *(v7 + 3);
        *__str = *(v7 + 4);
        *__str = *(v7 + 5);
        *__str = *(v7 + 6);
        v8 = "Shared Motion Stats";
        goto LABEL_151;
      case 50:
        *__str = 116;
        *__str = *v7;
        *__str = *(v7 + 1);
        *__str = *(v7 + 2);
        *__str = *(v7 + 3);
        v8 = "Shared APS Stats";
        goto LABEL_151;
      case 51:
        *__str = 256;
        *__str = *v7;
        *__str = *(v7 + 1);
        *__str = *(v7 + 4);
        *__str = *(v7 + 5);
        v8 = "Shared OIS Stats";
        goto LABEL_151;
      case 52:
        goto LABEL_151;
      case 53:
        v8 = "Shared AiCam Debug";
        goto LABEL_151;
      case 54:
        *__str = 64;
        *__str = *v7;
        *__str = *(v7 + 2);
        *__str = v7[1];
        *__str = *(v7 + 3);
        *__str = vcvtd_n_f64_u32(v7[8], 8uLL);
        *__str = vcvtd_n_f64_u32(*(v7 + 9), 8uLL);
        *__str = vcvtd_n_f64_u32(v7[10], 8uLL);
        *__str = vcvtd_n_f64_u32(v7[11], 0xCuLL);
        *__str = vcvtd_n_f64_u32(v7[12], 0xAuLL);
        *__str = v7[25];
        *__str = v7[26];
        *__str = *(v7 + 60);
        *__str = *(v7 + 59);
        *__str = *(v7 + 61);
        v8 = "Shared SIFR";
        goto LABEL_151;
      case 55:
        *__str = *v7;
        *__str = *(v7 + 1);
        v8 = "Shared FPC";
        goto LABEL_151;
      case 56:
        *__str = *v7;
        *__str = v7[1];
        v8 = "Shared Reduced APS";
        goto LABEL_151;
      case 62:
        *__str = 300;
        *__str = *v7;
        *__str = *(v7 + 2);
        *__str = *(v7 + 9);
        *__str = *(v7 + 10);
        *__str = *(v7 + 4);
        *__str = *(v7 + 5);
        *__str = *(v7 + 6);
        *__str = *(v7 + 17);
        *__str = *(v7 + 18);
        *__str = *(v7 + 19);
        *__str = *(v7 + 44);
        *__str = *(v7 + 88);
        *__str = *(v7 + 89);
        *__str = *(v7 + 45);
        *__str = *(v7 + 13);
        *__str = *(v7 + 12);
        *__str = *(v7 + 1);
        *__str = *(v7 + 8);
        *__str = *(v7 + 20);
        *__str = *(v7 + 21);
        *__str = *(v7 + 26);
        *__str = *(v7 + 27);
        *__str = *(v7 + 28);
        *__str = *(v7 + 101);
        *__str = v7[23];
        *__str = *(v7 + 12);
        *__str = v7[26];
        *__str = *(v7 + 14);
        *__str = *(v7 + 15);
        v8 = "Shared Auto Focus Assist Debug";
        goto LABEL_151;
      case 69:
        memset(v96, 0, 32);
        *__str = 0u;
        v95 = 0u;
        NamedValues::NamedValues(__p);
        for (i = 0; i != 256; ++i)
        {
          snprintf(__str, 0x40uLL, "ch0[%03d]", i);
          *v93 = *&v7[2 * i];
        }

        NamedValues::NamedValues(v93);
        for (j = 0; j != 256; ++j)
        {
          snprintf(__str, 0x40uLL, "ch1[%03d]", j);
          *v92 = *&v7[2 * j + 512];
        }

        NamedValues::NamedValues(v92);
        v57 = 0;
        v58 = v7 + 1024;
        do
        {
          snprintf(__str, 0x40uLL, "ch2[%03d]", v57);
          *v89 = *&v58[2 * v57];
          ++v57;
        }

        while (v57 != 256);
        NamedValues::~NamedValues(v92);
        NamedValues::~NamedValues(v93);
        NamedValues::~NamedValues(__p);
        v8 = "Shared Stats BE Histogram";
        goto LABEL_151;
      case 75:
        *__str = *v7;
        *__str = *(v7 + 4);
        v8 = "Shared LTC Data";
        goto LABEL_151;
      case 78:
        *__str = 288;
        v8 = "Shared Depth to Position Debug";
        goto LABEL_151;
      default:
        goto LABEL_152;
    }
  }

LABEL_154:
  v78 = cf;
  CFRetain(cf);
  NamedValues::~NamedValues(&v84);
  NamedValues::~NamedValues(&cf);
  return v78;
}

void sub_224929054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, int a35, __int16 a36, char a37, char a38, int a39, __int16 a40, char a41, char a42)
{
  NamedValues::~NamedValues(&a27);
  NamedValues::~NamedValues(&a16);
  NamedValues::~NamedValues(&a18);
  NamedValues::~NamedValues(&a22);
  _Unwind_Resume(a1);
}

void anonymous namespace::AppendMetadataList(__CFArray **this, NamedValues *a2, __CFArray **a3, NamedValues *a4)
{
  NamedValue::NamedValue(&v5, a2, 0, *a3);
  NamedValues::push_back(this, &v5);
  NamedValue::~NamedValue(&v5);
}

void sub_224929290(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  NamedValue::~NamedValue(va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<unsigned long>(__CFArray **a1, void *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  MEMORY[0x22AA55980](&v11, *a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v10, __p);
  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  NamedValue::NamedValue(&v9, "size", v4, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v9);
  NamedValue::~NamedValue(&v9);
  v10[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v5;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v15);
}

void sub_224929474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<unsigned int>(__CFArray **a1, const char *a2, _DWORD *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  if (a4 == 1)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "0x", 2);
    *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
LABEL_12:
    MEMORY[0x22AA55970](v10, *a3);
    goto LABEL_13;
  }

  if (a4 != 2)
  {
    v10 = &v18;
    goto LABEL_12;
  }

  if (*a3)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if (*a3)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v8, v9);
LABEL_13:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v17, __p);
  if (v15 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  NamedValue::NamedValue(&v16, a2, v11, 0);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v16);
  NamedValue::~NamedValue(&v16);
  v17[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v18 = v12;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v22);
}

void sub_224929714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<unsigned long long>(__CFArray **a1, const char *a2, void *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  if (a4 == 1)
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "0x", 2);
    *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  }

  else
  {
    v8 = &v16;
  }

  MEMORY[0x22AA559B0](v8, *a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, __p);
  if (v13 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  NamedValue::NamedValue(&v14, a2, v9, 0);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v14);
  NamedValue::~NamedValue(&v14);
  v15[0] = *MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v16 = v10;
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v20);
}

void sub_22492997C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_224929C38(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x22AA55B20](v1);
  _Unwind_Resume(a1);
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x22AA55B20](a1 + 128);
  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x22AA55AA0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_224929EF0(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x22AA55910](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x22AA55920](v13);
  return a1;
}

void sub_22492A160(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x22AA55920](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x22492A140);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_22492A394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::AppendMetadataItem<char const*>(__CFArray **a1, const char *a2, const char **a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
  v6 = *a3;
  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v6, v7);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v14, __p);
  if (v12 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  NamedValue::NamedValue(&v13, a2, v8, 0);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v13);
  NamedValue::~NamedValue(&v13);
  v14[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v15 = v9;
  v16 = MEMORY[0x277D82878] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v19);
}

void sub_22492A5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<unsigned short>(__CFArray **a1, const char *a2, _WORD *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  if (a4 == 1)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "0x", 2);
    *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
LABEL_12:
    MEMORY[0x22AA559A0](v10, *a3);
    goto LABEL_13;
  }

  if (a4 != 2)
  {
    v10 = &v18;
    goto LABEL_12;
  }

  if (*a3)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if (*a3)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v8, v9);
LABEL_13:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v17, __p);
  if (v15 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  NamedValue::NamedValue(&v16, a2, v11, 0);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v16);
  NamedValue::~NamedValue(&v16);
  v17[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v18 = v12;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v22);
}

void sub_22492A884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<unsigned char>(__CFArray **a1, const char *a2, _BYTE *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
  v8 = "on";
  if (!*a3)
  {
    v8 = "off";
  }

  v9 = "no";
  if (*a3)
  {
    v9 = "yes";
  }

  if (a4 == 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if ((*a3 == 0) != (a4 == 2))
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, v10, v11);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v18, __p);
  if (v16 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  NamedValue::NamedValue(&v17, a2, v12, 0);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v17);
  NamedValue::~NamedValue(&v17);
  v18[0] = *MEMORY[0x277D82818];
  v13 = *(MEMORY[0x277D82818] + 72);
  *(v18 + *(v18[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v19 = v13;
  v20 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v23);
}

void sub_22492AAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<int>(__CFArray **a1, const char *a2, unsigned int *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  if (a4 == 1)
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "0x", 2);
    *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  }

  else
  {
    v8 = &v16;
  }

  MEMORY[0x22AA55960](v8, *a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, __p);
  if (v13 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  NamedValue::NamedValue(&v14, a2, v9, 0);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v14);
  NamedValue::~NamedValue(&v14);
  v15[0] = *MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v16 = v10;
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v20);
}

void sub_22492AD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<double>(__CFArray **a1, const char *a2, double *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  MEMORY[0x22AA55940](&v13, *a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v12, __p);
  if (v10 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  NamedValue::NamedValue(&v11, a2, v6, 0);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v11);
  NamedValue::~NamedValue(&v11);
  v12[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v13 = v7;
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v17);
}

void sub_22492AF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<short>(__CFArray **a1, const char *a2, __int16 *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  if (a4 == 1)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "0x", 2);
    *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
LABEL_12:
    MEMORY[0x22AA55990](v10, *a3);
    goto LABEL_13;
  }

  if (a4 != 2)
  {
    v10 = &v18;
    goto LABEL_12;
  }

  if (*a3)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if (*a3)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v8, v9);
LABEL_13:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v17, __p);
  if (v15 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  NamedValue::NamedValue(&v16, a2, v11, 0);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v16);
  NamedValue::~NamedValue(&v16);
  v17[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v18 = v12;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v22);
}

void sub_22492B20C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<char [4]>(__CFArray **a1, const char *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "...", 3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v10, __p);
  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  NamedValue::NamedValue(&v9, a2, v4, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v9);
  NamedValue::~NamedValue(&v9);
  v10[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v5;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v15);
}

void sub_22492B428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<float>(__CFArray **a1, const char *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  std::ostream::operator<<();
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v10, __p);
  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  NamedValue::NamedValue(&v9, a2, v4, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v9);
  NamedValue::~NamedValue(&v9);
  v10[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v10[2] = v5;
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v14);
}

void sub_22492B640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<eCIspFocusingMethod>(__CFArray **a1, unsigned int *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  MEMORY[0x22AA55960](&v11, *a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v10, __p);
  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  NamedValue::NamedValue(&v9, "lastFocusingMethod", v4, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v9);
  NamedValue::~NamedValue(&v9);
  v10[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v5;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v15);
}

void sub_22492B850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem(__CFArray **this, NamedValues *a2, const char *a3, double a4, double a5, double a6)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v21);
  *(&v24[0].__locale_ + *(v22 - 24)) = 5;
  v11 = MEMORY[0x22AA55940](&v22, a4);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", ", 2);
  v13 = MEMORY[0x22AA55940](v12, a5);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", ", 2);
  MEMORY[0x22AA55940](v14, a6);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v21, __p);
  if (v19 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  NamedValue::NamedValue(&v20, a2, v15, 0);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(this, &v20);
  NamedValue::~NamedValue(&v20);
  v21[0] = *MEMORY[0x277D82818];
  v16 = *(MEMORY[0x277D82818] + 72);
  *(v21 + *(v21[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v22 = v16;
  v23 = MEMORY[0x277D82878] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v24);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v26);
}

void sub_22492BAD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t PDAF::PixelEngine::SetupBuffers(uint64_t result)
{
  if (!result)
  {
    PDAF::PixelEngine::SetupBuffers();
  }

  v1 = 0;
  v2 = 0;
  *(result + 487296) = 0u;
  *(result + 487280) = 0u;
  *(result + 487264) = 0u;
  *(result + 487308) = 0u;
  v3 = (result + 168);
  v4 = 112;
  do
  {
    v5 = *(v3 - 2);
    v6 = (2 * (v5 + 271)) & 0x1FFFFFFF0;
    if (v6 <= v1)
    {
      v6 = v1;
    }

    if (v5)
    {
      v1 = v6;
    }

    if (*v3 && ((2 * (*v3 + 4 * *(v3 - 1) + 263)) & 0x1FFFFFFF0uLL) > v2)
    {
      v2 = (2 * (*v3 + 4 * *(v3 - 1) + 263)) & 0x1FFFFFFF0;
    }

    v3 += 14;
    v4 -= 56;
  }

  while (v4);
  v7 = 16 - ((result - 96) & 0xF);
  if (v1)
  {
    *(result + 487264) = v7;
    *(result + 487268) = v1;
    *(result + 487272) = v1;
    v8 = v7 + v1;
    *(result + 487276) = v8;
    *(result + 487280) = v1;
    *(result + 487284) = v1;
    v9 = v8 + v1;
    *(result + 487288) = v9;
    *(result + 487292) = v1;
    v7 = v9 + v1;
    *(result + 487296) = v1;
  }

  if (v2)
  {
    *(result + 487300) = v7;
    *(result + 487304) = v2;
    *(result + 487308) = v2;
    *(result + 487312) = v7 + v2;
    *(result + 487316) = v2;
    v7 += v2 + v2;
    *(result + 487320) = v2;
  }

  if (v7 > 0x8000)
  {
    PDAF::PixelEngine::SetupBuffers();
  }

  return result;
}

void PDAF::PixelEngine::Process_x1(uint64_t a1, uint64_t a2)
{
  v31[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    PDAF::PixelEngine::Process_x1();
  }

  if (!a2)
  {
    PDAF::PixelEngine::Process_x1();
  }

  bzero((a2 + 469820), 0x4424uLL);
  *(a2 + 469816) = *(a2 + 292);
  v4 = *(a2 + 4);
  if (v4 <= 3)
  {
    if (v4 == 2)
    {
      v31[0] = a1;
      v31[1] = 0;
      return;
    }

    if (v4 == 3)
    {
      PDAF::PixelEngine::Process_x1();
    }

LABEL_44:
    PDAF::PixelEngine::Process_x1();
  }

  if (v4 != 4)
  {
    if (v4 == 5)
    {
      PDAF::PixelEngine::Process_x1();
    }

    goto LABEL_44;
  }

  if (*(a2 + 700))
  {
    v5 = *(a2 + 32);
    if (*(a2 + 34) * v5 >= 0x81)
    {
      PDAF::PixelEngine::Process_x1();
    }

    v6 = *(a2 + 260);
    bzero((a2 + 427320), 0x3800uLL);
    v7 = *(a2 + 250) - *(a2 + 246);
    if (v7)
    {
      v8 = 0;
      v9 = *(a2 + 264);
      v10 = *(a2 + 266);
      v11 = *(a2 + 256);
      v12 = *(a2 + 248) - *(a2 + 244);
      v13 = a1 + v6 + *(a2 + 246) * v11 + 2 * *(a2 + 244);
      v14 = a2 + 427320 + 112 * -v5;
      v15 = *(a2 + 720);
      do
      {
        if (v8)
        {
          v16 = 0;
        }

        else
        {
          v16 = v5;
        }

        v14 += 112 * v16;
        if (!v8)
        {
          v8 = v10;
        }

        if (v12 >= 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = v14 - 112;
          v20 = v12 + 1;
          do
          {
            if (v18)
            {
              v21 = 0;
            }

            else
            {
              v18 = v9;
              v21 = 112;
            }

            v19 += v21;
            v22 = *(v13 + v17);
            if (v22 != 0x3FFF)
            {
              v23 = v22 + v15;
              v24 = 32 - __clz(v23 ^ (v23 >> 31));
              if (v23 == v23 >> 31)
              {
                v24 = 0;
              }

              v25 = v24 ^ (v23 >> 31);
              if (v25 >= 6)
              {
                v26 = 6;
              }

              else
              {
                v26 = v25;
              }

              v27 = v26 + 7;
              if (v25 >= -7)
              {
                v28 = v27;
              }

              else
              {
                v28 = 0;
              }

              v29 = v22;
              v30 = v19 + 8 * v28;
              *v30 = *v30 + v29;
              ++*(v30 + 4);
            }

            --v18;
            --v20;
            v17 += 2;
          }

          while (v20 > 1);
        }

        v13 += v11;
        --v8;
        --v7;
      }

      while (v7);
    }
  }
}

uint64_t PDAF::PixelEngine::anonymous namespace::Process(uint64_t a1, uint64_t a2)
{
  v459 = *MEMORY[0x277D85DE8];
  if (*(a2 + 34) * *(a2 + 32) >= 0x81)
  {
  }

  v429 = *(a2 + 8);
  if (v429 >= 2)
  {
  }

  v3 = *(a2 + 4);
  if ((v3 - 2) >= 2)
  {
    if ((v3 - 4) < 2)
    {
    }
  }

  v376 = (a2 + 486716);
  v377 = (a2 + 620);
  if (!*(a2 + 620))
  {
    goto LABEL_246;
  }

  v9 = *(a2 + 12);
  if (v9 <= 3)
  {
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        if (*(a2 + 16) != *(a2 + 160))
        {
        }

        if (*(a2 + 156))
        {
          v124 = 0;
          v125 = a2 + 487328;
          v126 = *(a2 + 487264);
          v127 = *(a2 + 487276);
          v425 = *(a2 + 487300);
          v413 = *(a2 + 487312);
          v128 = *(a2 + 20);
          do
          {
            v129 = *(a2 + 140 + 4 * (v124 % *(a2 + 132)));
            v130 = (a2 + 487268);
            v131 = 5;
            do
            {
              bzero((v125 + *(v130 - 1)), *v130);
              v130 += 3;
              --v131;
            }

            while (v131);
            if (v128 >= v129)
            {
              v132 = v129;
            }

            else
            {
              v132 = v128;
            }

            LOWORD(v128) = v128 - v129;
            ++v124;
          }

          while (v124 < *(a2 + 156));
        }
      }

      else
      {
        if (*(a2 + 16) != *(a2 + 160))
        {
        }

        v51 = a2 + 487328;
        v52 = *(a2 + 487264);
        v53 = *(a2 + 487276);
        v420 = *(a2 + 487300);
        v408 = *(a2 + 487312);
        v398 = *(a2 + 487288);
        if (*(a2 + 156))
        {
          v54 = 0;
          v55 = *(a2 + 20);
          do
          {
            v56 = *(a2 + 140 + 4 * (v54 % *(a2 + 132)));
            v57 = (a2 + 487268);
            v58 = 5;
            do
            {
              bzero((v51 + *(v57 - 1)), *v57);
              v57 += 3;
              --v58;
            }

            while (v58);
            if (v55 >= v56)
            {
              v59 = v56;
            }

            else
            {
              v59 = v55;
            }

            LOWORD(v55) = v55 - v56;
            ++v54;
          }

          while (v54 < *(a2 + 156));
          v52 = *(a2 + 487264);
          v53 = *(a2 + 487276);
          v420 = *(a2 + 487300);
          v398 = *(a2 + 487288);
          v408 = *(a2 + 487312);
        }

        if (*(a2 + 20) != *(a2 + 216))
        {
        }

        if (*(a2 + 212))
        {
          v60 = 0;
          v61 = 0;
          v62 = *(a2 + 16);
          do
          {
            v63 = *(a2 + 196 + 4 * (v61 % *(a2 + 188)));
            v64 = (a2 + 487268);
            v65 = 5;
            do
            {
              bzero((v51 + *(v64 - 1)), *v64);
              v64 += 3;
              --v65;
            }

            while (v65);
            if (v62 >= v63)
            {
              v66 = v63;
            }

            else
            {
              v66 = v62;
            }

            v60 += v63;
            LOWORD(v62) = v62 - v63;
            ++v61;
          }

          while (v61 < *(a2 + 212));
        }
      }
    }

    else if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_489;
      }

      if (*(a2 + 16) != *(a2 + 160))
      {
      }

      v19 = a2 + 487328;
      v20 = *(a2 + 487264);
      v21 = *(a2 + 487276);
      v418 = *(a2 + 487300);
      v406 = *(a2 + 487312);
      v397 = *(a2 + 487288);
      if (*(a2 + 156))
      {
        v22 = 0;
        v23 = *(a2 + 20);
        do
        {
          v24 = *(a2 + 140 + 4 * (v22 % *(a2 + 132)));
          v25 = (a2 + 487268);
          v26 = 5;
          do
          {
            bzero((v19 + *(v25 - 1)), *v25);
            v25 += 3;
            --v26;
          }

          while (v26);
          if (v23 >= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v23;
          }

          LOWORD(v23) = v23 - v24;
          ++v22;
        }

        while (v22 < *(a2 + 156));
        v20 = *(a2 + 487264);
        v21 = *(a2 + 487276);
        v418 = *(a2 + 487300);
        v397 = *(a2 + 487288);
        v406 = *(a2 + 487312);
      }

      if (*(a2 + 20) != *(a2 + 216))
      {
      }

      if (*(a2 + 212))
      {
        v28 = 0;
        v29 = 0;
        v30 = *(a2 + 16);
        do
        {
          v31 = *(a2 + 196 + 4 * (v29 % *(a2 + 188)));
          v32 = (a2 + 487268);
          v33 = 5;
          do
          {
            bzero((v19 + *(v32 - 1)), *v32);
            v32 += 3;
            --v33;
          }

          while (v33);
          if (v30 >= v31)
          {
            v34 = v31;
          }

          else
          {
            v34 = v30;
          }

          v28 += v31;
          LOWORD(v30) = v30 - v31;
          ++v29;
        }

        while (v29 < *(a2 + 212));
      }
    }

    else
    {
      if (*(a2 + 16) != *(a2 + 160))
      {
      }

      if (*(a2 + 156))
      {
        v99 = 0;
        v100 = a2 + 487328;
        v101 = *(a2 + 487264);
        v102 = *(a2 + 487276);
        v423 = *(a2 + 487300);
        v411 = *(a2 + 487312);
        v395 = *(a2 + 487288);
        v103 = *(a2 + 20);
        do
        {
          v104 = *(a2 + 140 + 4 * (v99 % *(a2 + 132)));
          v105 = (a2 + 487268);
          v106 = 5;
          do
          {
            bzero((v100 + *(v105 - 1)), *v105);
            v105 += 3;
            --v106;
          }

          while (v106);
          if (v103 >= v104)
          {
            v107 = v104;
          }

          else
          {
            v107 = v103;
          }

          LOWORD(v103) = v103 - v104;
          ++v99;
        }

        while (v99 < *(a2 + 156));
      }
    }
  }

  else if (v9 <= 5)
  {
    if (v9 == 4)
    {
      if (*(a2 + 16) != *(a2 + 160))
      {
      }

      v108 = a2 + 487328;
      v109 = *(a2 + 487264);
      v110 = *(a2 + 487276);
      v424 = *(a2 + 487300);
      v412 = *(a2 + 487312);
      v400 = *(a2 + 487288);
      if (*(a2 + 156))
      {
        v111 = 0;
        v112 = *(a2 + 20);
        do
        {
          v113 = *(a2 + 140 + 4 * (v111 % *(a2 + 132)));
          v114 = (a2 + 487268);
          v115 = 5;
          do
          {
            bzero((v108 + *(v114 - 1)), *v114);
            v114 += 3;
            --v115;
          }

          while (v115);
          if (v112 >= v113)
          {
            v116 = v113;
          }

          else
          {
            v116 = v112;
          }

          LOWORD(v112) = v112 - v113;
          ++v111;
        }

        while (v111 < *(a2 + 156));
        v109 = *(a2 + 487264);
        v110 = *(a2 + 487276);
        v424 = *(a2 + 487300);
        v400 = *(a2 + 487288);
        v412 = *(a2 + 487312);
      }

      if (*(a2 + 20) != *(a2 + 216))
      {
      }

      if (*(a2 + 212))
      {
        v117 = 0;
        v118 = 0;
        v119 = *(a2 + 16);
        do
        {
          v120 = *(a2 + 196 + 4 * (v118 % *(a2 + 188)));
          v121 = (a2 + 487268);
          v122 = 5;
          do
          {
            bzero((v108 + *(v121 - 1)), *v121);
            v121 += 3;
            --v122;
          }

          while (v122);
          if (v119 >= v120)
          {
            v123 = v120;
          }

          else
          {
            v123 = v119;
          }

          v117 += v120;
          LOWORD(v119) = v119 - v120;
          ++v118;
        }

        while (v118 < *(a2 + 212));
      }
    }

    else
    {
      if (*(a2 + 16) != *(a2 + 160))
      {
      }

      v35 = a2 + 487328;
      v36 = *(a2 + 487264);
      v37 = *(a2 + 487276);
      v419 = *(a2 + 487300);
      v407 = *(a2 + 487312);
      if (*(a2 + 156))
      {
        v38 = 0;
        v39 = *(a2 + 20);
        do
        {
          v40 = *(a2 + 140 + 4 * (v38 % *(a2 + 132)));
          v41 = (a2 + 487268);
          v42 = 5;
          do
          {
            bzero((v35 + *(v41 - 1)), *v41);
            v41 += 3;
            --v42;
          }

          while (v42);
          if (v39 >= v40)
          {
            v43 = v40;
          }

          else
          {
            v43 = v39;
          }

          LOWORD(v39) = v39 - v40;
          ++v38;
        }

        while (v38 < *(a2 + 156));
        v36 = *(a2 + 487264);
        v37 = *(a2 + 487276);
        v407 = *(a2 + 487312);
        v419 = *(a2 + 487300);
      }

      if (*(a2 + 20) != *(a2 + 216))
      {
      }

      if (*(a2 + 212))
      {
        v44 = 0;
        v45 = 0;
        v46 = *(a2 + 16);
        do
        {
          v47 = *(a2 + 196 + 4 * (v45 % *(a2 + 188)));
          v48 = (a2 + 487268);
          v49 = 5;
          do
          {
            bzero((v35 + *(v48 - 1)), *v48);
            v48 += 3;
            --v49;
          }

          while (v49);
          if (v46 >= v47)
          {
            v50 = v47;
          }

          else
          {
            v50 = v46;
          }

          v44 += v47;
          LOWORD(v46) = v46 - v47;
          ++v45;
        }

        while (v45 < *(a2 + 212));
      }
    }
  }

  else
  {
    switch(v9)
    {
      case 6:
        if (*(a2 + 16) != *(a2 + 160))
        {
        }

        v67 = a2 + 487328;
        v68 = *(a2 + 487264);
        v69 = *(a2 + 487276);
        v421 = *(a2 + 487300);
        v409 = *(a2 + 487312);
        if (*(a2 + 156))
        {
          v70 = 0;
          v71 = *(a2 + 20);
          do
          {
            v72 = *(a2 + 140 + 4 * (v70 % *(a2 + 132)));
            v73 = (a2 + 487268);
            v74 = 5;
            do
            {
              bzero((v67 + *(v73 - 1)), *v73);
              v73 += 3;
              --v74;
            }

            while (v74);
            if (v71 >= v72)
            {
              v75 = v72;
            }

            else
            {
              v75 = v71;
            }

            LOWORD(v71) = v71 - v72;
            ++v70;
          }

          while (v70 < *(a2 + 156));
          v68 = *(a2 + 487264);
          v69 = *(a2 + 487276);
          v409 = *(a2 + 487312);
          v421 = *(a2 + 487300);
        }

        if (*(a2 + 20) != *(a2 + 216))
        {
        }

        if (*(a2 + 212))
        {
          v76 = 0;
          v77 = 0;
          v78 = *(a2 + 16);
          do
          {
            v79 = *(a2 + 196 + 4 * (v77 % *(a2 + 188)));
            v80 = (a2 + 487268);
            v81 = 5;
            do
            {
              bzero((v67 + *(v80 - 1)), *v80);
              v80 += 3;
              --v81;
            }

            while (v81);
            if (v78 >= v79)
            {
              v82 = v79;
            }

            else
            {
              v82 = v78;
            }

            v76 += v79;
            LOWORD(v78) = v78 - v79;
            ++v77;
          }

          while (v77 < *(a2 + 212));
        }

        break;
      case 7:
        if (*(a2 + 16) != *(a2 + 160))
        {
        }

        v83 = a2 + 487328;
        v84 = *(a2 + 487264);
        v85 = *(a2 + 487276);
        v422 = *(a2 + 487300);
        v410 = *(a2 + 487312);
        v399 = *(a2 + 487288);
        if (*(a2 + 156))
        {
          v86 = 0;
          v87 = *(a2 + 20);
          do
          {
            v88 = *(a2 + 140 + 4 * (v86 % *(a2 + 132)));
            v89 = (a2 + 487268);
            v90 = 5;
            do
            {
              bzero((v83 + *(v89 - 1)), *v89);
              v89 += 3;
              --v90;
            }

            while (v90);
            if (v87 >= v88)
            {
              v91 = v88;
            }

            else
            {
              v91 = v87;
            }

            LOWORD(v87) = v87 - v88;
            ++v86;
          }

          while (v86 < *(a2 + 156));
          v84 = *(a2 + 487264);
          v85 = *(a2 + 487276);
          v422 = *(a2 + 487300);
          v399 = *(a2 + 487288);
          v410 = *(a2 + 487312);
        }

        if (*(a2 + 20) != *(a2 + 216))
        {
        }

        if (*(a2 + 212))
        {
          v92 = 0;
          v93 = 0;
          v94 = *(a2 + 16);
          do
          {
            v95 = *(a2 + 196 + 4 * (v93 % *(a2 + 188)));
            v96 = (a2 + 487268);
            v97 = 5;
            do
            {
              bzero((v83 + *(v96 - 1)), *v96);
              v96 += 3;
              --v97;
            }

            while (v97);
            if (v94 >= v95)
            {
              v98 = v95;
            }

            else
            {
              v98 = v94;
            }

            v92 += v95;
            LOWORD(v94) = v94 - v95;
            ++v93;
          }

          while (v93 < *(a2 + 212));
        }

        break;
      case 8:
        if (*(a2 + 16) != *(a2 + 160))
        {
        }

        if (*(a2 + 156))
        {
          v10 = 0;
          v11 = a2 + 487328;
          v12 = *(a2 + 487264);
          v13 = *(a2 + 487276);
          v417 = *(a2 + 487300);
          v405 = *(a2 + 487312);
          v394 = *(a2 + 487288);
          v14 = *(a2 + 20);
          do
          {
            v15 = *(a2 + 140 + 4 * (v10 % *(a2 + 132)));
            v16 = (a2 + 487268);
            v17 = 5;
            do
            {
              bzero((v11 + *(v16 - 1)), *v16);
              v16 += 3;
              --v17;
            }

            while (v17);
            if (v14 >= v15)
            {
              v18 = v15;
            }

            else
            {
              v18 = v14;
            }

            LOWORD(v14) = v14 - v15;
            ++v10;
          }

          while (v10 < *(a2 + 156));
        }

        break;
      default:
LABEL_489:
    }
  }

  if (*v377)
  {
    v133 = *(a2 + 12);
    if (v133 >= 9)
    {
    }

    v381 = *(a2 + 688);
    v134 = *(a2 + 696);
    v135 = *(a2 + 296);
    v136 = *(a2 + 300);
    v137 = *(a2 + 304);
    v138 = 8;
    v139 = 1 << v133;
    if ((v139 & 0x62) == 0)
    {
      v140 = 0;
      if ((v139 & 0x98) == 0)
      {
LABEL_171:
        v379 = 8u / *(a2 + 164);
        v382 = *(a2 + 668);
        v386 = v140;
        v383 = *(a2 + 692);
        v434 = 0.0;
        v435 = 0.0;
        __asm { FMOV            V11.2S, #1.0 }

        v144 = *(a2 + 676);
        if (*(a2 + 676))
        {
          v145 = 0;
          v146 = *(a2 + 680);
          v147 = *(a2 + 684);
          do
          {
            v401 = v145;
            v148 = a2 + 132 + 56 * v145;
            v426 = *(v148 + 24);
            if (v426)
            {
              v149 = 0;
              v150 = a2 + 58680 + 184320 * v145;
              v414 = *(v148 + 52);
              do
              {
                if (v414)
                {
                  v151 = 0;
                  v430 = *(a2 + 632);
                  do
                  {
                    v152 = (v150 + v151);
                    v436 = 0;
                    LODWORD(v437) = 0;
                    v153 = *(v150 + v151 + 340);
                    if (v153)
                    {
                      *v7.i32 = v153;
                    }

                    else
                    {
                      *v7.i32 = 1.0;
                    }

                    v154.i32[1] = *(v150 + v151 + 168);
                    v154.i32[0] = *(v150 + v151 + 160);
                    v155 = vdiv_f32(v154, vdup_lane_s32(v7, 0));
                    v156 = vmul_n_f32(v155, v153);
                    v157.i32[1] = *(v150 + v151 + 176);
                    v158 = vmul_n_f32(v156, v430);
                    v157.i32[0] = *(v150 + v151 + 164);
                    v152[88] = fmaxf(vaddv_f32(vdiv_f32(vmls_f32(v157, v155, v156), vbsl_s8(vceqz_f32(v158), _D11, v158))) * 65536.0, 0.0);
                    v159 = *&v437;
                    v152[86] = v437;
                    v152[87] = v436;
                    if (v159 >= v147 && v152[88] >= v146)
                    {
                      *(v150 + v151 + 356) = 1;
                    }

                    v151 += 360;
                  }

                  while (360 * v414 != v151);
                  v150 += v151;
                }

                ++v149;
              }

              while (v149 != v426);
            }

            v145 = v401 + 1;
          }

          while (v401 != v386);
        }

        *(a2 + 648) = 0;
        v402 = *(a2 + 34);
        if (*(a2 + 34))
        {
          v388 = 0;
          v160 = v379 >> 1;
          v415 = *(a2 + 32);
          v161 = (v382 + (v382 >> 15));
          v162 = -(v161 >> 1);
          v380 = (v381 - v383);
          v163 = 1.0 - v134;
          if (v134 == 1.0)
          {
            v163 = 1.0;
          }

          v378 = v163;
          v164 = v160;
          v165 = -v135;
          v384 = v161 >> 1;
          if (v162 <= v161 >> 1)
          {
            v166 = v161 >> 1;
          }

          else
          {
            v166 = -(v161 >> 1);
          }

          v431 = v166;
          v390 = -(v161 >> 1);
          do
          {
            if (v415)
            {
              v427 = 0;
              do
              {
                v458 = 0;
                v456 = 0u;
                v457 = 0u;
                v454 = 0u;
                v455 = 0u;
                v452 = 0u;
                v453 = 0u;
                v450 = 0u;
                v451 = 0u;
                v448 = 0u;
                v449 = 0u;
                v447 = 0u;
                v445 = 0u;
                memset(v446, 0, sizeof(v446));
                v443 = 0u;
                v444 = 0u;
                v441 = 0u;
                v442 = 0u;
                v439 = 0u;
                v440 = 0u;
                v437 = 0u;
                v438 = 0u;
                if (v162 <= v384)
                {
                  v168 = 0;
                  v167 = 0;
                  v169 = v162;
                  do
                  {
                    v392 = v169;
                    v170 = v169 + v388;
                    do
                    {
                      if (v162 + v427 < v415 && v170 < v402)
                      {
                        v172 = 0;
                        v173 = *(a2 + 672);
                        v174 = a2 + 58696;
                        do
                        {
                          v175 = a2 + 132 + 56 * v172;
                          if (v172)
                          {
                            v176 = v162 + v427;
                          }

                          else
                          {
                            v176 = v170;
                          }

                          v177 = v176 * *v175;
                          if ((*v175 + v177) >= *(v175 + 24))
                          {
                            v178 = *(v175 + 24);
                          }

                          else
                          {
                            v178 = (*v175 + v177);
                          }

                          if (v178 > v177)
                          {
                            if (v172)
                            {
                              v179 = v170;
                            }

                            else
                            {
                              v179 = v162 + v427;
                            }

                            v180 = *(v175 + 52);
                            if ((v179 + 1) >= v180)
                            {
                              v181 = v180;
                            }

                            else
                            {
                              v181 = (v179 + 1);
                            }

                            v182 = v177;
                            v183 = v180 * v177 + v179;
                            v184 = a2 + 58680 + 184320 * v172 + 360 * v183;
                            v185 = v174 + 360 * v183;
                            do
                            {
                              v186 = v185;
                              v187 = v179;
                              v188 = v184;
                              if (v179 < v181)
                              {
                                do
                                {
                                  if (!v144 || *(v188 + 356) == 1)
                                  {
                                    v189 = 0;
                                    v190 = *(v188 + 340);
                                    do
                                    {
                                      v191 = (&v437 + v189);
                                      *v191 = vaddq_f32(*(v188 + v189), *(&v437 + v189));
                                      v191[1].f32[0] = *(v186 + v189) + *(&v437 + v189 + 16);
                                      v189 += 20;
                                    }

                                    while (v189 != 340);
                                    v168 += v190;
                                    if (v190)
                                    {
                                      v8.f32[0] = v190;
                                    }

                                    else
                                    {
                                      v8.f32[0] = 1.0;
                                    }

                                    v8 = vdup_lane_s32(v8, 0);
                                    v192.i32[1] = *(v188 + 168);
                                    v192.i32[0] = *(v188 + 160);
                                    v193 = vdiv_f32(v192, v8);
                                    v194 = vmul_n_f32(v193, v190);
                                    v195 = vmul_n_f32(v194, *(a2 + 632));
                                    v196.i32[1] = *(v188 + 176);
                                    v196.i32[0] = *(v188 + 164);
                                    v167 += fmaxf(vaddv_f32(vdiv_f32(vmls_f32(v196, v193, v194), vbsl_s8(vceqz_f32(v195), _D11, v195))) * v173, 0.0);
                                  }

                                  v188 += 360;
                                  ++v187;
                                  v186 += 360;
                                }

                                while (v187 != v181);
                              }

                              v184 += 360 * v180;
                              ++v182;
                              v185 += 360 * v180;
                            }

                            while (v182 != v178);
                          }

                          ++v172;
                          v174 += 184320;
                        }

                        while (v172 != v386 + 1);
                      }

                      _ZF = v162++ == v431;
                    }

                    while (!_ZF);
                    v169 = v392 + 1;
                    v162 = v390;
                  }

                  while (v392 != v431);
                  DWORD1(v457) = v168;
                }

                else
                {
                  v167 = 0;
                }

                v197 = v435 <= v134 || v167 <= v381 - (((v435 - v134) * v380) / v378);
                v162 = v390;
                v198 = v136 * (v165 + (v164 * v434));
                v199 = v427;
                _ZF = !v197;
                if (v197)
                {
                  v201 = 0;
                }

                else
                {
                  v201 = v167;
                }

                v202 = a2 + 480060 + 52 * (v427 + v388 * v415);
                *(v202 + 24) = (v435 * 1000.0);
                *(v202 + 28) = v201;
                if (_ZF)
                {
                  v203 = -96;
                }

                else
                {
                  v203 = -120;
                }

                *(v202 + 32) = v137 * v198;
                *(v202 + 36) = 0;
                *(v202 + 40) = 0;
                *(v202 + 44) = v203;
                ++v427;
              }

              while (v199 + 1 != v415);
            }

            ++v388;
          }

          while (v388 != v402);
        }

        goto LABEL_246;
      }

      v138 = 4;
    }

    if (8u / *(a2 + 164) != v138 / *(a2 + 220))
    {
    }

    v140 = 1;
    goto LABEL_171;
  }

LABEL_246:
  v204 = *(a2 + 32);
  v205 = *(a2 + 34);
  v206 = v205 * v204;
  if (v205 * v204)
  {
    v207 = a2 + 6968;
    v208 = a2 + 7112;
    v209 = vcvts_n_s32_f32(*(a2 + 296), 0xCuLL);
    v210 = (a2 + 6984);
    do
    {
      v211 = 0;
      v212 = v207;
      v213 = v208;
      do
      {
        for (i = 0; i != 24; i += 8)
        {
          v215 = *(v212 + i);
          *(v212 + i) = *(v213 + i);
          *(v213 + i) = v215;
        }

        ++v211;
        v213 -= 24;
        v212 += 24;
      }

      while (v211 != 3);
      v216 = 0;
      v217 = v210;
      do
      {
        v218 = *(v217 - 1);
        *(v217 - 1) = v218 << v219;
        *v217 = v220;
        ++v216;
        v217 += 3;
      }

      while (v216 != 14);
      v207 += 404;
      v208 += 404;
      v210 = (v210 + 404);
      --v206;
    }

    while (v206);
  }

  bzero((a2 + 441656), 0x6E00uLL);
  if (v205)
  {
    v221 = *(a2 + 300) * *(a2 + 304);
    v222 = a2 + 463672;
    v223 = a2 + 6968;
    v224 = *(a2 + 316);
    v225 = a2 + 441656;
    do
    {
      if (v204)
      {
        v226 = (v223 + 16);
        v227 = (v223 + 344);
        v228 = v225;
        v229 = v222;
        v230 = v204;
        do
        {
          v231 = 0;
          v232 = 0;
          v233 = 0;
          v234 = (v223 + 388);
          v235 = v226;
          do
          {
            v236 = *(v235 - 1);
            v237 = (v236 / v224);
            if (v237)
            {
              v238 = v221 * vcvts_n_f32_s64((*v235 << 8) / v236, 8uLL);
              if (v238 < 0.0)
              {
                v239 = -0.5;
              }

              else
              {
                v239 = 0.5;
              }

              v240 = (v238 + v239);
              v241 = *(v235 - 4);
            }

            else
            {
              v240 = 0;
              v241 = 0;
            }

            v242 = (v228 + v231 * 4);
            *v242 = v241;
            v242[14] = v237;
            v242[28] = v240;
            v233 += v241;
            ++v231;
            v235 += 3;
          }

          while (v231 != 14);
          v243 = *(v223 + 384);
          if (v243 && *v234)
          {
            v244 = 0;
            v245 = *v234 * *v234;
            v246 = 16 * v232;
            if (v233 <= 1)
            {
              v247 = 1;
            }

            else
            {
              v247 = v233;
            }

            v248 = (a2 + 334);
            v249 = v246 / v247;
            do
            {
              v251 = *v248;
              v248 += 2;
              v250 = v251;
              if (v244 > 2)
              {
                break;
              }

              ++v244;
              v252 = v250 == 0xFFFF || v249 < v250;
            }

            while (!v252);
            v253 = 10000 * (*(v223 + 396) * v243 - v245) / v245 > *(v248 - 1);
          }

          else
          {
            v253 = 0;
          }

          v254 = 0;
          *(v228 + 168) = v253;
          v255 = v227;
          do
          {
            v256 = (v229 + v254);
            *v256 = *(v255 - 2);
            v256[4] = *(v255 - 1);
            v257 = *v255;
            v255 += 3;
            v256[8] = v257;
            v254 += 4;
          }

          while (v254 != 16);
          v223 += 404;
          v228 += 172;
          v229 += 48;
          v226 = (v226 + 404);
          v227 += 101;
          --v230;
        }

        while (v230);
      }

      v225 += 172 * v204;
      v222 += 48 * v204;
      --v205;
    }

    while (v205);
  }

  if (*(a2 + 320) != 1)
  {
  }

  v258 = 0;
  v391 = a2 + 320;
  v385 = a2 + 469820;
  v259 = &v440 + 8;
  v260 = 1;
  do
  {
    v403 = v260;
    v261 = *(v391 + 4 * v258);
    if (v261 >= 1)
    {
      v262 = v385 + (v258 << 11);
      v263 = *(a2 + 32);
      v264 = *(a2 + 34);
      if (v261 == 1)
      {
        v265 = v264 * v263;
        if (v265)
        {
          v266 = a2 + 441656;
          do
          {
            v266 += 172;
            v262 += 16;
            --v265;
          }

          while (v265);
        }
      }

      else
      {
        v267 = 0;
        if (v263 >= v261)
        {
          v268 = *(v391 + 4 * v258);
        }

        else
        {
          v268 = *(a2 + 32);
        }

        if (v264 >= v261)
        {
          v269 = *(v391 + 4 * v258);
        }

        else
        {
          v269 = *(a2 + 34);
        }

        v432 = v269;
        v270 = *(a2 + 34);
        v271 = *(a2 + 32);
        do
        {
          if (v268 <= v271)
          {
            v273 = 0;
            LODWORD(v272) = v271;
            do
            {
              v274 = v273 + v272 * v267;
              v445 = 0u;
              memset(v446, 0, 28);
              v443 = 0u;
              v444 = 0u;
              v441 = 0u;
              v442 = 0u;
              v439 = 0u;
              v440 = 0u;
              v437 = 0u;
              v438 = 0u;
              if (v264)
              {
                v275 = 0;
                v276 = 0;
                v277 = a2 + 441656 + 172 * v274;
                v278 = a2 + 441712 + 172 * (v273 + v267 * v272);
                v279 = v432;
                do
                {
                  v280 = v278;
                  v281 = v268;
                  v282 = v277;
                  if (v263)
                  {
                    do
                    {
                      if (*(v282 + 168))
                      {
                        v283 = v280;
                        v284 = &v440 + 2;
                        v285 = 14;
                        do
                        {
                          *(v284 - 14) += *(v283 - 14);
                          v286 = *v283;
                          *v284 += *v283;
                          v284[14] += v283[14] * v286;
                          ++v284;
                          ++v283;
                          --v285;
                        }

                        while (v285);
                        v275 = ++v276;
                      }

                      v282 += 172;
                      v280 += 43;
                      --v281;
                    }

                    while (v281);
                  }

                  v277 += 172 * v271;
                  v278 += 172 * v271;
                  --v279;
                }

                while (v279);
                v446[24] = v275;
              }

              v287 = 0;
              v288 = v262 + 16 * v274;
              do
              {
                v289 = &v437 + v287;
                v290 = *(&v440 + v287 + 8);
                if (v290)
                {
                  v291 = *(v289 + 28);
                  v292 = v290 >> 1;
                  if (v291 < 0)
                  {
                    v292 = -v292;
                  }

                  *(v289 + 28) = (v292 + v291) / v290;
                }

                v287 += 4;
              }

              while (v287 != 56);
              v272 = *(a2 + 32);
              LOWORD(v271) = *(a2 + 32);
              v252 = v273++ < (v272 - v268);
            }

            while (v252);
            v270 = *(a2 + 34);
          }

          else
          {
            v272 = v271;
          }

          v271 = v272;
          v252 = v267++ < v270 - v432;
        }

        while (v252);
      }
    }

    v260 = 0;
    v258 = 1;
  }

  while ((v403 & 1) != 0);
  v293 = *(a2 + 12);
  if (v293 >= 9)
  {
  }

  v294 = *(a2 + 34);
  v295 = v294 * *(a2 + 32);
  v296 = (a2 + 463672);
  if (v295)
  {
    v297 = qword_2249D2408[v293];
    v298 = v294 * *(a2 + 32);
    do
    {
      v299 = v296;
      v300 = v297;
      do
      {
        v299[2561] = *v299;
        v299[2565] = v299[4];
        v299[2569] = v299[8];
        ++v299;
        --v300;
      }

      while (v300);
      v296 += 12;
      --v298;
    }

    while (v298);
  }

  *(a2 + 487252) = *(a2 + 6881);
  *(a2 + 487256) = *(a2 + 6885);
  if (*(a2 + 6880))
  {
    v301 = a2 + 486720;
    v302 = *v376;
    if (v295 && v302 <= 0x7F)
    {
      v303 = (v301 + 4 * v302);
      v304 = v295 - 1;
      v305 = (a2 + 473916);
      do
      {
        LOWORD(v302) = *v376;
        if (v306 >= 0.0)
        {
          *v303++ = v306;
          LOWORD(v302) = v302 + 1;
          *v376 = v302;
        }

        if (!v304)
        {
          break;
        }

        v305 += 12;
        --v304;
      }

      while (v302 < 0x80u);
    }

    if (v302)
    {
      v307 = 0;
      v308 = *v376;
      do
      {
        v309 = (42949673 * (*(a2 + 487252 + v307) * v308 + 50)) >> 32;
        if (v309 >= v308)
        {
          LODWORD(v309) = v308 - 1;
        }

        *(a2 + 487232 + 4 * v307++) = *(v301 + 4 * v309);
      }

      while (v307 != 5);
    }

    v310 = 0;
    v311 = a2 + 6888;
    while (2)
    {
      v312 = 0;
      do
      {
        v313 = *(v311 + 4 * v312);
        if (v313 < 0.0)
        {
          goto LABEL_350;
        }

        v314 = *(a2 + 487232 + 4 * v312);
        if (v312 > 3)
        {
          break;
        }

        ++v312;
      }

      while (v313 <= v314);
      if (v313 > v314)
      {
LABEL_350:
        if (*(a2 + 487260) >= 5u)
        {
        }

        break;
      }

      *(a2 + 487260) = ++v310;
      v311 += 20;
      if (v310 != 4)
      {
        continue;
      }

      break;
    }
  }

  if (*(a2 + 412))
  {
    v315 = *(a2 + 416);
    if (*(a2 + 487260) && v315 > *(a2 + 420))
    {
      v315 = *(a2 + 420);
    }
  }

  else
  {
    v315 = 0.0;
  }

  v316 = 0;
  v317 = ((*(a2 + 300) * *(a2 + 296)) * *(a2 + 304)) * -0.5;
  v318 = 1;
  do
  {
    v433 = v318;
    v319 = *(v391 + 4 * v316);
    if (v319 >= 1)
    {
      v320 = *(a2 + 34);
      v321 = v320 - v319;
      if (v320 >= v319)
      {
        v322 = 0;
        v323 = a2 + 480060;
        v324 = *(a2 + 469816);
        v325 = (a2 + 473916);
        v326 = v385 + (v316 << 11);
        v327 = a2 + 372 + 20 * v316;
        v328 = v316 << 6;
        v329 = *(a2 + 32);
        v428 = v329 - v319;
        v330 = *(a2 + 32);
        v389 = v320 - v319;
        v387 = v329;
        while (v329 < v319)
        {
LABEL_428:
          v325 += 12 * v330;
          v326 += 16 * v330;
          v323 += 52 * v330;
          _ZF = v322++ == v321;
          if (_ZF)
          {
            goto LABEL_430;
          }
        }

        v416 = v322;
        v331 = 0;
        v396 = v325;
        v404 = v326;
        v393 = v323;
        while (1)
        {
          if (*(a2 + 352))
          {
            v333 = v259 & 0xFFFFFFFE;
            if (!*(v326 + 12))
            {
              ++v333;
            }
          }

          else
          {
            v333 = v259 & 0xFFFFFFFE;
          }

          if (*(a2 + 356))
          {
            v334 = *(v326 + 8);
            v335 = vcvts_n_f32_s32(v334, 4uLL) + v324;
            v336 = *(a2 + 368);
            v337 = v335 >= v336 || v334 < *(a2 + 360);
            v338 = v337 ? v333 & 0xFFFFFFFB | (4 * (v335 >= v336)) : v333 & 0xFFFFFFFB | (4 * (v335 <= *(a2 + 364)));
          }

          else
          {
            v338 = v333 & 0xFFFFFFFB;
          }

          if (*v327)
          {
            v339 = *(v327 + 4);
            if (v339 <= 1)
            {
              v339 = 1;
            }

            v340 = *(v326 + 4);
            v341 = *v326 / v339;
            v342 = (*(v326 + 8) * 0.0625) - v317;
            if (v342 < 0.0)
            {
              v342 = -v342;
            }

            v343 = ((1.0 - ((v342 + -16.0) * 0.0625)) * 20.0) + (((v342 + -16.0) * 0.0625) * 10.0);
            if (v342 > 32.0)
            {
              v343 = 10.0;
            }

            if (v342 <= 16.0)
            {
              v343 = ((1.0 - ((v342 + -8.0) * 0.125)) * 40.0) + (((v342 + -8.0) * 0.125) * 20.0);
            }

            v344 = v342 > 8.0 ? v343 : 40.0;
            v345 = (*(v327 + 8) * ((sqrtf(v341) * v344) + 0.5)) >> 8;
            v346 = v341 >= *(v327 + 16) || v340 >= *(v327 + 12);
            v347 = v346 && v340 >= v345;
            v348 = v347 ? 0 : 8;
            v349 = v348 | v338 & 0xFFFFFFF7;
          }

          else
          {
            v349 = v338 & 0xFFFFFFF7;
          }

          v350 = *(a2 + 412) ? v349 & 0xFFFFFFEF | (16 * (v332 >= v315)) : v349 & 0xFFFFFFEF;
          LODWORD(v259) = v350 & 0xFFFFFFDD;
          v351 = *(v326 + 8) * 0.0625;
          if (v319 != 1)
          {
            break;
          }

          if ((v433 & 1) == 0)
          {
          }

          *v323 = *v326;
          *(v323 + 8) = v351;
          *(v323 + 12) = v332;
          *(v323 + 16) = 0;
          *(v323 + 20) = v350 & 0xDD;
          v352 = ~(2 * v350) & 0x20;
          if ((v350 & 0xD) != 0)
          {
            v352 = 0;
          }

          *(v323 + 20) = v352 | v350 & 0x1D;
LABEL_425:
          v326 += 16;
          v325 += 12;
          v323 += 52;
          _ZF = v331++ == v428;
          if (_ZF)
          {
            v330 = *(a2 + 32);
            v321 = v389;
            v322 = v416;
            v325 = v396;
            v326 = v404;
            v329 = v387;
            v323 = v393;
            goto LABEL_428;
          }
        }

        if (v433)
        {
        }

        if ((v350 & 0xD) != 0)
        {
          goto LABEL_425;
        }

        v353 = *(v326 + 12);
        v354 = v319;
        v355 = v323;
LABEL_410:
        v356 = (v355 + 20);
        v357 = v319;
        while (1)
        {
          v358 = *v356;
          if (((*v356 & 0x10) != 0 || (*v356 & 1) != 0 && (v319 * v319) >> 1 >= v353) && !*(a2 + 332))
          {
            goto LABEL_423;
          }

          if (*(a2 + 350) == 1)
          {
            if ((*v356 & 0x20) != 0 && *(v356 - 3) <= v351)
            {
              goto LABEL_423;
            }
          }

          else
          {
            if (*(a2 + 350))
            {
            }

            if ((*v356 & 0x20) != 0 && *(v356 - 3) >= v351)
            {
              goto LABEL_423;
            }
          }

          *(v356 - 5) = *v326;
          *(v356 - 3) = v351;
          *v356 = v358 & 0x33 | v328 | 0x20;
LABEL_423:
          v356 += 13;
          if (!--v357)
          {
            v355 += 52 * *(a2 + 32);
            if (!--v354)
            {
              goto LABEL_425;
            }

            goto LABEL_410;
          }
        }
      }
    }

LABEL_430:
    v318 = 0;
    v316 = 1;
  }

  while ((v433 & 1) != 0);
  if (*(a2 + 424))
  {
    if (*v377)
    {
      v359 = *(a2 + 34) * *(a2 + 32);
      if (v359)
      {
        v360 = (a2 + 480104);
        do
        {
          if (*(a2 + 425) && (*v360 & 0x20) == 0)
          {
            *(v360 - 24) = *(v360 - 6) & 0xDD | 2;
          }

          v361 = *(v360 - 24);
          if ((v361 & 0x20) != 0)
          {
            if (*(a2 + 426))
            {
              v366 = *(v360 - 9);
              if ((v366 <= 0.0 || *(v360 - 3) >= 0.0) && (v366 >= 0.0 || *(v360 - 3) <= 0.0))
              {
                v367 = v366 >= 0.0 ? *(v360 - 9) : -v366;
                if (v367 > 1.0)
                {
                  v368 = *(v360 - 3);
                  if (v368 >= 0.0)
                  {
                    v369 = *(v360 - 3);
                  }

                  else
                  {
                    v369 = -v368;
                  }

                  if (v369 <= v367)
                  {
                    if (v368 == 0.0)
                    {
                      v372 = 1.0;
                    }

                    else
                    {
                      v372 = v369;
                    }

                    v371 = v367 / v372;
                  }

                  else
                  {
                    v371 = v369 / v367;
                  }

                  v373 = powf(v371, v370);
                  *(v360 - 9) = (v368 * v374) + (v366 * (1.0 - v374));
                  *(v360 - 7) = v374;
                }
              }
            }
          }

          else if (*(a2 + 427) && (*v360 & 0x20) != 0)
          {
            v362 = *(v360 - 5);
            v364 = *(v360 - 4);
            *(v360 - 11) = v362;
            *(v360 - 10) = v365;
            *(v360 - 9) = *(v360 - 3);
            *(v360 - 7) = 1.0;
            *(v360 - 24) = v361 | (32 * (v365 != 0)) | 0xC0;
          }

          v360 += 13;
          --v359;
        }

        while (v359);
      }
    }
  }
}

_DWORD *PDAF::PixelEngine::anonymous namespace::ShiftMapPostProcess(_DWORD *result)
{
  v44 = *MEMORY[0x277D85DE8];
  v33 = *(result + 17);
  if (*(result + 17))
  {
    v1 = result;
    v2 = 0;
    result = v41;
    v34 = *(v1 + 32);
    do
    {
      if (v34)
      {
        v3 = 0;
        v4 = *(v1 + 296);
        v5 = *(v1 + 300);
        v6 = *(v1 + 304);
        v7 = *(v1 + 712);
        do
        {
          v8 = 0;
          do
          {
            v39 = 0;
            v35 = v8;
            if (v8 == 1)
            {
              v9 = 0;
              v10 = 0;
              v11 = 0;
              v12 = 1;
              v13 = -255.0;
              do
              {
                v14 = 0;
                v36 = v12;
                v15 = 1;
                do
                {
                  v16 = v15;
                  v15 = 0;
                  if (v13 < (v6 * (v5 * (*(&v39 + 1) - v4))) && v39 >= v7)
                  {
                    v13 = v6 * (v5 * (*(&v39 + 1) - v4));
                    v11 = v39;
                    v10 = v39 >= v7;
                  }

                  v14 = 1;
                }

                while ((v16 & 1) != 0);
                v12 = 0;
                v9 = 1;
              }

              while ((v36 & 1) != 0);
            }

            else
            {
              if (v8 == 2)
              {
                v17 = -1;
              }

              else
              {
                v17 = 0;
              }

              v13 = v6 * (v5 * (*(&v39 + 1) - v4));
              v11 = v39;
              v10 = v39 >= v7;
            }

            *&v42[4 * v35] = v13;
            v40[v35] = v11;
            v38[v35 - 1] = v10;
            v8 = v35 + 1;
          }

          while (v35 != 2);
          v18 = *&v43[1];
          v19 = v41[1];
          v20 = v38[1];
          if (*(v1 + 726))
          {
            v21 = 0;
            v22 = 2;
            v23 = v42;
            v24 = v40;
            v25 = &v37;
            v26 = 1;
            result = v41;
            do
            {
              v27 = v26;
              if (*v25 == 1 && v18 < *v23)
              {
                v19 = *v24;
                v20 = 1;
                v22 = v21;
                v18 = *v23;
              }

              v26 = 0;
              v21 = 1;
              v25 = v38;
              v24 = v41;
              v23 = v43;
            }

            while ((v27 & 1) != 0);
            v28 = v22 << 6;
          }

          else
          {
            v28 = 0x80;
          }

          v29 = v1 + 480060 + 52 * (v2 * v34 + v3);
          v30 = (v20 & 1) == 0;
          if (v20)
          {
            v31 = 0xFFFF;
          }

          else
          {
            v31 = 0;
          }

          *v29 = v19;
          *(v29 + 4) = v31;
          if (v30)
          {
            v32 = 8;
          }

          else
          {
            v32 = 32;
          }

          *(v29 + 8) = v18;
          *(v29 + 12) = 0;
          *(v29 + 16) = 0;
          *(v29 + 20) = v32 | v28;
          ++v3;
        }

        while (v3 != v34);
      }

      ++v2;
    }

    while (v2 != v33);
  }

  return result;
}

uint64_t PDAF::PixelEngine::anonymous namespace::WeightMapProcess(uint64_t result)
{
  if (*(result + 732))
  {
    v1 = *(result + 733);
    v2 = *(result + 734) == v1 ? 1 : *(result + 734) - v1;
    v3 = *(result + 34);
    if (*(result + 34))
    {
      v4 = 0;
      v5 = *(result + 280);
      v6 = result + 480060;
      v7 = *(result + 288);
      v8 = *(result + 270);
      v35 = *(result + 276);
      v9 = *(result + 32);
      v10 = (((v2 + ((v2 & 0x8000) >> 15)) >> 1) + 0x10000) / v2;
      do
      {
        v11 = v5 >> 8;
        v12 = v7 + v5;
        v13 = (v7 + v5 + 255) >> 8;
        v14 = (v5 >> 8) & ~(v5 >> 31);
        if (v11 > v8)
        {
          v14 = v8;
        }

        v15 = v13 & ~((v12 + 255) >> 31);
        if (v13 > v8)
        {
          v15 = v8;
        }

        v16 = v15 - v14;
        if (v15 < v14)
        {
          v16 = 0;
        }

        if (v9)
        {
          v17 = 0;
          v18 = *(result + 284);
          v19 = *(result + 268);
          v20 = *(result + 272);
          v21 = v35;
          do
          {
            v22 = 0;
            v23 = v21 >> 8;
            v24 = v18 + v21;
            v25 = (v18 + v21 + 255) >> 8;
            v26 = (v21 >> 8) & ~(v21 >> 31);
            if (v23 > v19)
            {
              v26 = v19;
            }

            v27 = v25 & ~((v24 + 255) >> 31);
            if (v25 > v19)
            {
              v27 = v19;
            }

            LODWORD(v28) = v27 - v26;
            if (v27 >= v26)
            {
              v28 = v28;
            }

            else
            {
              v28 = 0;
            }

            if (v15 > v14)
            {
              v22 = 0;
              v29 = result + 735 + v14 * v20 + v26;
              v30 = v16;
              do
              {
                if (v27 > v26)
                {
                  v31 = 0;
                  do
                  {
                    v32 = *(v29 + v31);
                    if (v32 <= v1)
                    {
                      v32 = v1;
                    }

                    v22 += v32;
                    ++v31;
                  }

                  while (v31 < v28);
                }

                v29 += v20;
                v33 = __OFSUB__(v30--, 1);
              }

              while (!((v30 < 0) ^ v33 | (v30 == 0)));
            }

            if (v28 * v16)
            {
              v22 /= v28 * v16;
            }

            v34 = (((v22 - v1) * v10) >> 8) & ~(((v22 - v1) * v10) >> 31);
            if (v34 >= 255)
            {
              LOBYTE(v34) = -1;
            }

            *(v6 + 48) = v34;
            v6 += 52;
            ++v17;
            v21 = v24;
          }

          while (v17 != v9);
        }

        ++v4;
        v5 = v12;
      }

      while (v4 != v3);
    }
  }

  return result;
}

void PDAF::PixelEngine::Process_x2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    PDAF::PixelEngine::Process_x2();
  }

  if (!a2)
  {
    PDAF::PixelEngine::Process_x2();
  }

  if (!a3)
  {
    PDAF::PixelEngine::Process_x2();
  }

  bzero((a3 + 469820), 0x4424uLL);
  *(a3 + 469816) = *(a3 + 292);
  v6 = *(a3 + 4);
  if (v6 <= 3)
  {
    if (v6 == 3)
    {
      v44[0] = a1;
      v44[1] = a2;
      return;
    }

    if (v6 == 2)
    {
      PDAF::PixelEngine::Process_x2();
    }

LABEL_48:
    PDAF::PixelEngine::Process_x2();
  }

  if (v6 != 5)
  {
    if (v6 == 4)
    {
      PDAF::PixelEngine::Process_x2();
    }

    goto LABEL_48;
  }

  if (*(a3 + 700) && *(a3 + 704))
  {
    v7 = *(a3 + 32);
    if (*(a3 + 34) * v7 >= 0x81)
    {
      PDAF::PixelEngine::Process_x2();
    }

    bzero((a3 + 427320), 0x3800uLL);
    v9 = *(a3 + 250) - *(a3 + 246);
    if (v9)
    {
      v10 = 0;
      v11 = *(a3 + 264);
      v12 = *(a3 + 266);
      v13 = *(a3 + 248) - *(a3 + 244);
      v14 = *(a3 + 720);
      LOWORD(v8) = *(a3 + 722);
      v15 = v8;
      v16 = *(a3 + 728);
      v17 = a3 + 427320 + 112 * -v7;
      v18 = *(a3 + 246) * *(a3 + 256);
      v19 = a1 + 2 * v18 + 2 * *(a3 + 244);
      v20 = a2 + 2 * v18 + 2 * *(a3 + 244);
      v21 = 2 * *(a3 + 256);
      do
      {
        if (v10)
        {
          v22 = 0;
        }

        else
        {
          v22 = v7;
        }

        v17 += 112 * v22;
        if (!v10)
        {
          v10 = v12;
        }

        if (v13 >= 1)
        {
          v23 = 0;
          v24 = 0;
          v25 = v17 - 112;
          v26 = v13 + 1;
          do
          {
            if (v24)
            {
              v27 = 0;
            }

            else
            {
              v24 = v11;
              v27 = 112;
            }

            v25 += v27;
            _H4 = *(v20 + v23);
            __asm { FCVT            S4, H4 }

            if (v16 >= _S4)
            {
              _H4 = *(v19 + v23);
              __asm { FCVT            S4, H4 }

              v36 = (((v14 + _S4) * v15) + 0.0);
              v37 = 32 - __clz(v36 ^ (v36 >> 31));
              if (v36 >> 31 == v36)
              {
                v38 = 0;
              }

              else
              {
                v38 = v37;
              }

              v39 = v38 ^ (v36 >> 31);
              if (v39 >= 6)
              {
                v40 = 6;
              }

              else
              {
                v40 = v39;
              }

              v41 = v40 + 7;
              if (v39 >= -7)
              {
                v42 = v41;
              }

              else
              {
                v42 = 0;
              }

              v43 = v25 + 8 * v42;
              *v43 = *v43 + _S4;
              ++*(v43 + 4);
            }

            --v24;
            --v26;
            v23 += 2;
          }

          while (v26 > 1);
        }

        --v10;
        v20 += v21;
        v19 += v21;
        --v9;
      }

      while (v9);
    }
  }
}

void PDAF::PixelEngine::Process_x3(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          bzero(a4 + 117455, 0x4424uLL);
          a4[117454] = a4[73];
          v5 = a4[1];
          if (v5 > 3)
          {
            if (v5 == 4)
            {
              __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 4557, "false");
            }

            if (v5 == 5)
            {
              __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 4561, "false");
            }
          }

          else
          {
            if (v5 == 2)
            {
              __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 4549, "false");
            }

            if (v5 == 3)
            {
              __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 4553, "false");
            }
          }

          __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 4565, "false");
        }

        __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 4544, "pContext != nullptr");
      }

      __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 4543, "pIn2 != nullptr");
    }

    __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 4542, "pIn1 != nullptr");
  }

  __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 4541, "pIn0 != nullptr");
}

void PDAF::PixelEngine::Process_x4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            bzero(a5 + 117455, 0x4424uLL);
            a5[117454] = a5[73];
            v6 = a5[1];
            if (v6 > 3)
            {
              if (v6 == 4)
              {
                __assert_rtn("Process_x4", "PDAFPixelEngine.cpp", 4596, "false");
              }

              if (v6 == 5)
              {
                __assert_rtn("Process_x4", "PDAFPixelEngine.cpp", 4600, "false");
              }
            }

            else
            {
              if (v6 == 2)
              {
                __assert_rtn("Process_x4", "PDAFPixelEngine.cpp", 4588, "false");
              }

              if (v6 == 3)
              {
                __assert_rtn("Process_x4", "PDAFPixelEngine.cpp", 4592, "false");
              }
            }

            __assert_rtn("Process_x4", "PDAFPixelEngine.cpp", 4604, "false");
          }

          __assert_rtn("Process_x4", "PDAFPixelEngine.cpp", 4583, "pContext != nullptr");
        }

        __assert_rtn("Process_x4", "PDAFPixelEngine.cpp", 4582, "pIn3 != nullptr");
      }

      __assert_rtn("Process_x4", "PDAFPixelEngine.cpp", 4581, "pIn2 != nullptr");
    }

    __assert_rtn("Process_x4", "PDAFPixelEngine.cpp", 4580, "pIn1 != nullptr");
  }

  __assert_rtn("Process_x4", "PDAFPixelEngine.cpp", 4579, "pIn0 != nullptr");
}

unsigned int *PDAF::PixelEngine::anonymous namespace::AFEGetInputs(unsigned int *result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = result + 6;
  v8 = 1;
  v48 = result + 6;
  v49 = a2;
  v50 = result;
  do
  {
    v9 = v8;
    v10 = v3 + 80 * v5;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *v10 = 0u;
    v11 = *result;
    v12 = &v7[12 * v5];
    v13 = *(a2 + 8 * v5);
    *v10 = v11;
    *(v10 + 20) = -1;
    *(v10 + 52) = -1;
    v14 = v12[4];
    v15 = v12[5];
    v17 = v12[2];
    v16 = v12[3];
    v18 = v14 >= v17;
    v19 = v14 - v17;
    if (v19 == 0 || !v18 || v15 <= v16)
    {
      goto LABEL_57;
    }

    if (!v13)
    {
    }

    *(v10 + 4) = v15 - v16;
    if (v11 <= 2)
    {
      if (!v11)
      {
        goto LABEL_25;
      }

      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_78;
        }

        if (v12[6])
        {
        }

        if (v12[7] != -1)
        {
        }

        v21 = 0;
LABEL_29:
        *(v10 + 16) = v19;
        *(v10 + 20) = 0;
        *(v10 + 24) = v21;
        *(v10 + 48) = 0xFFFFFFFF00000000;
        *(v10 + 56) = -1;
        goto LABEL_32;
      }
    }

    else
    {
      if (v11 > 8)
      {
        goto LABEL_78;
      }

      if (((1 << v11) & 0x98) == 0)
      {
        if (((1 << v11) & 0x60) != 0)
        {
          if (v12[6])
          {
          }

          if (v12[7] != 2)
          {
          }

          v21 = 0;
          v22 = 2;
          goto LABEL_27;
        }

        if (v11 != 8)
        {
LABEL_78:
        }

LABEL_25:
        v21 = v12[6];
        if (v21 >= 2)
        {
        }

        v22 = v12[7];
        if (v22 != -1)
        {
        }

        goto LABEL_27;
      }
    }

    v21 = v12[6];
    if (v21 >= 2)
    {
    }

    v22 = v12[7];
    if ((v22 - 4) <= 0xFFFFFFFD)
    {
    }

LABEL_27:
    if (((1 << v11) & 0xD2) != 0)
    {
      *(v10 + 16) = v19;
      *(v10 + 20) = 0;
      *(v10 + 24) = v21;
      *(v10 + 48) = v19;
      *(v10 + 52) = 1;
      *(v10 + 56) = v22;
    }

    else
    {
      if (((1 << v11) & 0x105) != 0)
      {
        goto LABEL_29;
      }

      *(v10 + 48) = v19;
      *(v10 + 52) = 0;
      *(v10 + 56) = v22;
      *(v10 + 16) = v19;
      *(v10 + 20) = 1;
      *(v10 + 24) = v21;
    }

LABEL_32:
    v24 = 1 << v11;
    if (((1 << v11) & 0xFA) != 0)
    {
      v25 = v12[1];
      if (AFEDelayV >= v25)
      {
      }

      v26 = v12[3];
      if (v26 >= v25)
      {
      }

      v27 = v11 - 1;
      if ((v11 - 1) >= 7 || ((0x7Du >> v27) & 1) == 0)
      {
      }

      v28 = qword_2249D23D0[v27];
      v29 = v28 * *v12;
      v30 = 2 * v26 - AFEDelayV;
      if (AFEDelayV > v26)
      {
        v30 = v12[3];
      }

      v31 = (v25 + ~v26);
      v32 = (2 * v25 - 1);
      v33 = AFEDelayV + v32 - 2 * v31;
      v34 = v32 - v31;
      if (AFEDelayV <= v31)
      {
        v34 = v33;
      }

      v35 = v28 * v12[2];
      v36 = v35 + v29 * v30;
      v37 = v35 + v29 * v34;
    }

    else
    {
      if ((v24 & 0x101) == 0)
      {
        v43 = *v12;
        v44 = 16 * v43 * v12[3];
        v45 = 2 * v12[2];
        *(v10 + 8) = 8 * v43;
        v36 = v44 + 8 * v45;
        *(v10 + 32) = 0;
        *(v10 + 64) = 0;
        goto LABEL_53;
      }

      v37 = 0;
      v29 = 8 * *v12;
      v36 = v29 * 2 * v12[3] + 8 * v12[2];
    }

    *(v10 + 8) = v29 >> 1;
    *(v10 + 32) = 0;
    *(v10 + 64) = 0;
    if ((v24 & 0xFA) != 0)
    {
      v39 = v12[3];
      if (v38 > v39)
      {
        *(v10 + 32) = v38 - v39;
      }

      v40 = v12[1] + ~v38;
      v18 = v40 >= v39;
      v41 = v40 - v39;
      if (v18)
      {
        *(v10 + 64) = v41;
      }

      *(v10 + 40) = v13 + v36;
      v42 = v13 + v37;
      v3 = a3;
      goto LABEL_54;
    }

    v3 = a3;
LABEL_53:
    v42 = 0;
    *(v10 + 40) = v13 + v36;
LABEL_54:
    *(v10 + 72) = v42;
    a2 = v49;
    result = v50;
    v7 = v48;
    if (!*(v10 + 8))
    {
    }

    if (*(v10 + 4) != v50[2])
    {
    }

    v6 += *(v10 + 48);
    v4 += *(v10 + 16);
LABEL_57:
    v8 = 0;
    v5 = 1;
  }

  while ((v9 & 1) != 0);
  v46 = result[1];
  if (v4 && v4 != v46)
  {
  }

  if (v6)
  {
    if (v6 != v46)
    {
    }
  }

  return result;
}

uint64_t PDAF::PixelEngine::anonymous namespace::FlowAccumulate(uint64_t result, uint64_t a2, uint64_t a3, int32x4_t a4, int32x4_t a5)
{
  v774 = *MEMORY[0x277D85DE8];
  v9 = a2 + 12;
  v8 = *(a2 + 12);
  v763 = *(a2 + 32);
  v10 = a2 + 6968;
  v11 = (v8 - 3) >= 6 && v8 >= 2;
  if (!result)
  {
    if (v11)
    {
      if (v8 != 2)
      {
      }

      v46 = *(a2 + 20);
      v761 = *(a2 + 28);
      v765.i32[0] = 0;
    }

    else
    {
      v45 = *(a2 + 20);
      v46 = 2 * v45;
      v761 = 2 * *(a2 + 28);
      v765.i32[0] = 0;
      if (v8 > 3)
      {
        if (v8 > 5)
        {
          if (v8 != 8)
          {
            if (v8 == 7)
            {
              if (!v46)
              {
                return result;
              }

              v47 = v761;
              v48 = -2 * v45;
              while (1)
              {
                if (*a3 > 8u)
                {
                }

                v49 = 1 << *a3;
                if ((v49 & 0x9A) != 0)
                {
                  v50 = *(a3 + 64);
                  if (v50)
                  {
                    *(a3 + 64) = v50 - 1;
                    v51 = *(a3 + 72) + 4 * *(a3 + 8);
                  }

                  else
                  {
                    v51 = *(a3 + 72) + 2 * *(a3 + 8);
                  }

                  *(a3 + 72) = v51;
                  v54 = *(a3 + 52);
                  LODWORD(v55) = vadd_s32(v54, 0x200000002).u32[0];
                  HIDWORD(v55) = veor_s8(*&v54, 0x100000001).i32[1];
                  *(a3 + 52) = v55;
                }

                else
                {
                  if ((v49 & 0x60) == 0)
                  {
                  }

                  v52 = *(a3 + 64);
                  if (v52)
                  {
                    *(a3 + 64) = v52 - 1;
                    v53 = *(a3 + 72) + 4 * *(a3 + 8);
                  }

                  else
                  {
                    v53 = *(a3 + 72) + 2 * *(a3 + 8);
                  }

                  *(a3 + 72) = v53;
                  *(a3 + 52) += 2;
                }

                v56 = *(a3 + 80);
                if (v56 > 8)
                {
                }

                v57 = 1 << v56;
                if ((v57 & 0x9A) != 0)
                {
                  v58 = *(a3 + 144);
                  if (v58)
                  {
                    *(a3 + 144) = v58 - 1;
                    v59 = *(a3 + 152) + 4 * *(a3 + 88);
                  }

                  else
                  {
                    v59 = *(a3 + 152) + 2 * *(a3 + 88);
                  }

                  *(a3 + 152) = v59;
                  v62 = *(a3 + 132);
                  LODWORD(v63) = vadd_s32(v62, 0x200000002).u32[0];
                  HIDWORD(v63) = veor_s8(*&v62, 0x100000001).i32[1];
                  *(a3 + 132) = v63;
                }

                else
                {
                  if ((v57 & 0x60) == 0)
                  {
                  }

                  v60 = *(a3 + 144);
                  if (v60)
                  {
                    *(a3 + 144) = v60 - 1;
                    v61 = *(a3 + 152) + 4 * *(a3 + 88);
                  }

                  else
                  {
                    v61 = *(a3 + 152) + 2 * *(a3 + 88);
                  }

                  *(a3 + 152) = v61;
                  *(a3 + 132) += 2;
                }

                if (*a3 > 8u)
                {
                }

                v64 = 1 << *a3;
                if ((v64 & 0xFA) != 0)
                {
                  v65 = *(a3 + 32);
                  if (v65)
                  {
                    *(a3 + 32) = v65 - 1;
                    v66 = *(a3 + 40) + 2 * *(a3 + 8);
                  }

                  else
                  {
                    v66 = *(a3 + 40) + 4 * *(a3 + 8);
                  }

                  *(a3 + 40) = v66;
                  v69 = *(a3 + 20) + 2;
                }

                else
                {
                  if ((v64 & 0x101) != 0)
                  {
                    *(a3 + 40) += 2 * *(a3 + 8);
                    v67 = *(a3 + 20);
                    LODWORD(v68) = vadd_s32(v67, 0x100000001).u32[0];
                    HIDWORD(v68) = veor_s8(*&v67, 0x100000001).i32[1];
                    *(a3 + 20) = v68;
                    goto LABEL_99;
                  }

                  *(a3 + 40) += 2 * *(a3 + 8);
                  v69 = *(a3 + 20) + 1;
                }

                *(a3 + 20) = v69;
LABEL_99:
                v70 = *(a3 + 80);
                if (v70 > 8)
                {
                }

                v71 = 1 << v70;
                if ((v71 & 0xFA) != 0)
                {
                  v72 = *(a3 + 112);
                  if (v72)
                  {
                    *(a3 + 112) = v72 - 1;
                    v73 = *(a3 + 120) + 2 * *(a3 + 88);
                  }

                  else
                  {
                    v73 = *(a3 + 120) + 4 * *(a3 + 88);
                  }

                  *(a3 + 120) = v73;
                  v76 = *(a3 + 100) + 2;
                  goto LABEL_107;
                }

                if ((v71 & 0x101) == 0)
                {
                  *(a3 + 120) += 2 * *(a3 + 88);
                  v76 = *(a3 + 100) + 1;
LABEL_107:
                  *(a3 + 100) = v76;
                  goto LABEL_108;
                }

                *(a3 + 120) += 2 * *(a3 + 88);
                v74 = *(a3 + 100);
                LODWORD(v75) = vadd_s32(v74, 0x100000001).u32[0];
                HIDWORD(v75) = veor_s8(*&v74, 0x100000001).i32[1];
                *(a3 + 100) = v75;
LABEL_108:
                v77 = v763;
                if (v47 != 2)
                {
                  v77 = 0;
                }

                v10 += 404 * v77;
                if (v47 == 2)
                {
                  v47 = v761;
                }

                else
                {
                  v47 -= 2;
                }

                v48 += 2;
                if (!v48)
                {
                  return result;
                }
              }
            }

            if (!v46)
            {
              return result;
            }

            v686 = v761;
            v687 = -2 * v45;
            while (1)
            {
              if (*a3 > 8u)
              {
              }

              v688 = 1 << *a3;
              if ((v688 & 0x9A) != 0)
              {
                v689 = *(a3 + 64);
                if (v689)
                {
                  *(a3 + 64) = v689 - 1;
                  v690 = *(a3 + 72) + 4 * *(a3 + 8);
                }

                else
                {
                  v690 = *(a3 + 72) + 2 * *(a3 + 8);
                }

                *(a3 + 72) = v690;
                v693 = *(a3 + 52);
                LODWORD(v694) = vadd_s32(v693, 0x200000002).u32[0];
                HIDWORD(v694) = veor_s8(*&v693, 0x100000001).i32[1];
                *(a3 + 52) = v694;
              }

              else
              {
                if ((v688 & 0x60) == 0)
                {
                }

                v691 = *(a3 + 64);
                if (v691)
                {
                  *(a3 + 64) = v691 - 1;
                  v692 = *(a3 + 72) + 4 * *(a3 + 8);
                }

                else
                {
                  v692 = *(a3 + 72) + 2 * *(a3 + 8);
                }

                *(a3 + 72) = v692;
                *(a3 + 52) += 2;
              }

              v695 = *(a3 + 80);
              if (v695 > 8)
              {
              }

              v696 = 1 << v695;
              if ((v696 & 0x9A) != 0)
              {
                v697 = *(a3 + 144);
                if (v697)
                {
                  *(a3 + 144) = v697 - 1;
                  v698 = *(a3 + 152) + 4 * *(a3 + 88);
                }

                else
                {
                  v698 = *(a3 + 152) + 2 * *(a3 + 88);
                }

                *(a3 + 152) = v698;
                v701 = *(a3 + 132);
                LODWORD(v702) = vadd_s32(v701, 0x200000002).u32[0];
                HIDWORD(v702) = veor_s8(*&v701, 0x100000001).i32[1];
                *(a3 + 132) = v702;
              }

              else
              {
                if ((v696 & 0x60) == 0)
                {
                }

                v699 = *(a3 + 144);
                if (v699)
                {
                  *(a3 + 144) = v699 - 1;
                  v700 = *(a3 + 152) + 4 * *(a3 + 88);
                }

                else
                {
                  v700 = *(a3 + 152) + 2 * *(a3 + 88);
                }

                *(a3 + 152) = v700;
                *(a3 + 132) += 2;
              }

              if (*a3 > 8u)
              {
              }

              v703 = 1 << *a3;
              if ((v703 & 0xFA) != 0)
              {
                v704 = *(a3 + 32);
                if (v704)
                {
                  *(a3 + 32) = v704 - 1;
                  v705 = *(a3 + 40) + 2 * *(a3 + 8);
                }

                else
                {
                  v705 = *(a3 + 40) + 4 * *(a3 + 8);
                }

                *(a3 + 40) = v705;
                v708 = *(a3 + 20) + 2;
              }

              else
              {
                if ((v703 & 0x101) != 0)
                {
                  *(a3 + 40) += 2 * *(a3 + 8);
                  v706 = *(a3 + 20);
                  LODWORD(v707) = vadd_s32(v706, 0x100000001).u32[0];
                  HIDWORD(v707) = veor_s8(*&v706, 0x100000001).i32[1];
                  *(a3 + 20) = v707;
                  goto LABEL_941;
                }

                *(a3 + 40) += 2 * *(a3 + 8);
                v708 = *(a3 + 20) + 1;
              }

              *(a3 + 20) = v708;
LABEL_941:
              v709 = *(a3 + 80);
              if (v709 > 8)
              {
              }

              v710 = 1 << v709;
              if ((v710 & 0xFA) != 0)
              {
                v711 = *(a3 + 112);
                if (v711)
                {
                  *(a3 + 112) = v711 - 1;
                  v712 = *(a3 + 120) + 2 * *(a3 + 88);
                }

                else
                {
                  v712 = *(a3 + 120) + 4 * *(a3 + 88);
                }

                *(a3 + 120) = v712;
                v715 = *(a3 + 100) + 2;
                goto LABEL_949;
              }

              if ((v710 & 0x101) == 0)
              {
                *(a3 + 120) += 2 * *(a3 + 88);
                v715 = *(a3 + 100) + 1;
LABEL_949:
                *(a3 + 100) = v715;
                goto LABEL_950;
              }

              *(a3 + 120) += 2 * *(a3 + 88);
              v713 = *(a3 + 100);
              LODWORD(v714) = vadd_s32(v713, 0x100000001).u32[0];
              HIDWORD(v714) = veor_s8(*&v713, 0x100000001).i32[1];
              *(a3 + 100) = v714;
LABEL_950:
              v716 = v763;
              if (v686 != 2)
              {
                v716 = 0;
              }

              v10 += 404 * v716;
              if (v686 == 2)
              {
                v686 = v761;
              }

              else
              {
                v686 -= 2;
              }

              v687 += 2;
              if (!v687)
              {
                return result;
              }
            }
          }

          if (!v46)
          {
            return result;
          }

          v605 = *(a2 + 24);
          v606 = *(a2 + 16);
          v607 = *(a3 + 16);
          v608 = v761;
          while (1)
          {
            v609 = v607;
            if (v606 >= 1)
            {
              v610 = 0;
              v611 = v10 - 404;
              v612 = *(a3 + 24);
              v613 = *(a3 + 40);
              v614 = v606 + 1;
              v609 = v607;
              v615 = *(a2 + 312);
              do
              {
                if (!v609)
                {
                  v609 = *(a3 + 96);
                  v612 = *(a3 + 104);
                  v613 = *(a3 + 120);
                }

                if (v610)
                {
                  v616 = 0;
                }

                else
                {
                  v610 = v605;
                  v616 = 404;
                }

                v611 += v616;
                v617 = *v613;
                v618 = v617 >> 3;
                v619 = v613[3];
                if (v612)
                {
                  v620 = -v618;
                }

                else
                {
                  LOWORD(v620) = v617 >> 3;
                }

                v621 = v620 + v619;
                ++*(v611 + 384);
                *(v611 + 388) += (v620 + v619);
                *(v611 + 396) += (v620 + v619) * (v620 + v619);
                if ((v617 & 4) == 0)
                {
                  v622 = v613[1];
                  v623 = v622 & 7;
                  if ((v617 & 1) != 0 || (((v622 & 7u) < 6) & (v617 >> 1)) != 0)
                  {
                    v639 = (v611 + 12 * v612);
                    v640.i32[0] = 1;
                    v640.i32[1] = v621;
                    v639[42] = vadd_s32(v639[42], v640);
                    v639[43].i32[0] += v619;
                  }

                  else
                  {
                    v624 = v623 > 5;
                    v625 = v613[2];
                    v626 = (v625 & 0xF) + 1;
                    v627 = v625 >> 4;
                    v628 = v613[1];
                    v629 = v628 >> 3;
                    if (v628 >> 3 < 0)
                    {
                      v629 = -v629;
                    }

                    if (v618 >= 0)
                    {
                      LOWORD(v630) = v618;
                    }

                    else
                    {
                      v630 = -v618;
                    }

                    v631 = v623 - v624;
                    v632 = (16 * (v629 & 0xFFFu)) >> v624 >> 1;
                    v633 = ((v626 >> 1) * v627 * v632) >> 15 << v615;
                    if (v633 <= -32768)
                    {
                      v633 = -32768;
                    }

                    if (v633 >= 0x7FFF)
                    {
                      v633 = 0x7FFF;
                    }

                    v634 = ((v633 * v632) >> 15);
                    v635 = ((v633 * 8 * (v630 & 0xFFF)) >> 15);
                    if ((v618 ^ (v628 >> 3)) >= 0)
                    {
                      v636 = v631 + 7;
                    }

                    else
                    {
                      v636 = v631;
                    }

                    v637 = (v611 + 24 * v636);
                    v638 = v637[1];
                    *v637 += v626;
                    v637[1] = v638 + v634;
                    v637[2] += v635;
                  }
                }

                v613 += 4;
                --v609;
                --v610;
                ++v765.i32[0];
                --v614;
              }

              while (v614 > 1);
            }

            if (v609)
            {
            }

            if (*a3 > 8u)
            {
            }

            v641 = 1 << *a3;
            if ((v641 & 0xFA) != 0)
            {
              v642 = *(a3 + 32);
              if (v642)
              {
                *(a3 + 32) = v642 - 1;
                v643 = *(a3 + 40) + 2 * *(a3 + 8);
              }

              else
              {
                v643 = *(a3 + 40) + 4 * *(a3 + 8);
              }

              *(a3 + 40) = v643;
              v646 = *(a3 + 20) + 2;
            }

            else
            {
              if ((v641 & 0x101) != 0)
              {
                *(a3 + 40) += 2 * *(a3 + 8);
                v644 = *(a3 + 20);
                LODWORD(v645) = vadd_s32(v644, 0x100000001).u32[0];
                HIDWORD(v645) = veor_s8(*&v644, 0x100000001).i32[1];
                *(a3 + 20) = v645;
                goto LABEL_839;
              }

              *(a3 + 40) += 2 * *(a3 + 8);
              v646 = *(a3 + 20) + 1;
            }

            *(a3 + 20) = v646;
LABEL_839:
            v647 = *(a3 + 80);
            if (v647 > 8)
            {
            }

            v648 = 1 << v647;
            if ((v648 & 0xFA) != 0)
            {
              v649 = *(a3 + 112);
              if (v649)
              {
                *(a3 + 112) = v649 - 1;
                v650 = *(a3 + 120) + 2 * *(a3 + 88);
              }

              else
              {
                v650 = *(a3 + 120) + 4 * *(a3 + 88);
              }

              *(a3 + 120) = v650;
              v653 = *(a3 + 100) + 2;
              goto LABEL_847;
            }

            if ((v648 & 0x101) == 0)
            {
              *(a3 + 120) += 2 * *(a3 + 88);
              v653 = *(a3 + 100) + 1;
LABEL_847:
              *(a3 + 100) = v653;
              goto LABEL_848;
            }

            *(a3 + 120) += 2 * *(a3 + 88);
            v651 = *(a3 + 100);
            LODWORD(v652) = vadd_s32(v651, 0x100000001).u32[0];
            HIDWORD(v652) = veor_s8(*&v651, 0x100000001).i32[1];
            *(a3 + 100) = v652;
LABEL_848:
            v654 = v763;
            if (v608 != 1)
            {
              v654 = 0;
            }

            v10 += 404 * v654;
            result = v761;
            if (v608 == 1)
            {
              v608 = v761;
            }

            else
            {
              --v608;
            }

            if (!--v46)
            {
              return result;
            }
          }
        }

        if (v8 == 4)
        {
          if (!v46)
          {
            return result;
          }

          v282 = v761;
          v283 = -2 * v45;
          while (1)
          {
            if (*a3 > 8u)
            {
            }

            v284 = 1 << *a3;
            if ((v284 & 0x9A) != 0)
            {
              v285 = *(a3 + 64);
              if (v285)
              {
                *(a3 + 64) = v285 - 1;
                v286 = *(a3 + 72) + 4 * *(a3 + 8);
              }

              else
              {
                v286 = *(a3 + 72) + 2 * *(a3 + 8);
              }

              *(a3 + 72) = v286;
              v289 = *(a3 + 52);
              LODWORD(v290) = vadd_s32(v289, 0x200000002).u32[0];
              HIDWORD(v290) = veor_s8(*&v289, 0x100000001).i32[1];
              *(a3 + 52) = v290;
            }

            else
            {
              if ((v284 & 0x60) == 0)
              {
              }

              v287 = *(a3 + 64);
              if (v287)
              {
                *(a3 + 64) = v287 - 1;
                v288 = *(a3 + 72) + 4 * *(a3 + 8);
              }

              else
              {
                v288 = *(a3 + 72) + 2 * *(a3 + 8);
              }

              *(a3 + 72) = v288;
              *(a3 + 52) += 2;
            }

            v291 = *(a3 + 80);
            if (v291 > 8)
            {
            }

            v292 = 1 << v291;
            if ((v292 & 0x9A) != 0)
            {
              v293 = *(a3 + 144);
              if (v293)
              {
                *(a3 + 144) = v293 - 1;
                v294 = *(a3 + 152) + 4 * *(a3 + 88);
              }

              else
              {
                v294 = *(a3 + 152) + 2 * *(a3 + 88);
              }

              *(a3 + 152) = v294;
              v297 = *(a3 + 132);
              LODWORD(v298) = vadd_s32(v297, 0x200000002).u32[0];
              HIDWORD(v298) = veor_s8(*&v297, 0x100000001).i32[1];
              *(a3 + 132) = v298;
            }

            else
            {
              if ((v292 & 0x60) == 0)
              {
              }

              v295 = *(a3 + 144);
              if (v295)
              {
                *(a3 + 144) = v295 - 1;
                v296 = *(a3 + 152) + 4 * *(a3 + 88);
              }

              else
              {
                v296 = *(a3 + 152) + 2 * *(a3 + 88);
              }

              *(a3 + 152) = v296;
              *(a3 + 132) += 2;
            }

            if (*a3 > 8u)
            {
            }

            v299 = 1 << *a3;
            if ((v299 & 0xFA) != 0)
            {
              v300 = *(a3 + 32);
              if (v300)
              {
                *(a3 + 32) = v300 - 1;
                v301 = *(a3 + 40) + 2 * *(a3 + 8);
              }

              else
              {
                v301 = *(a3 + 40) + 4 * *(a3 + 8);
              }

              *(a3 + 40) = v301;
              v304 = *(a3 + 20) + 2;
            }

            else
            {
              if ((v299 & 0x101) != 0)
              {
                *(a3 + 40) += 2 * *(a3 + 8);
                v302 = *(a3 + 20);
                LODWORD(v303) = vadd_s32(v302, 0x100000001).u32[0];
                HIDWORD(v303) = veor_s8(*&v302, 0x100000001).i32[1];
                *(a3 + 20) = v303;
                goto LABEL_433;
              }

              *(a3 + 40) += 2 * *(a3 + 8);
              v304 = *(a3 + 20) + 1;
            }

            *(a3 + 20) = v304;
LABEL_433:
            v305 = *(a3 + 80);
            if (v305 > 8)
            {
            }

            v306 = 1 << v305;
            if ((v306 & 0xFA) != 0)
            {
              v307 = *(a3 + 112);
              if (v307)
              {
                *(a3 + 112) = v307 - 1;
                v308 = *(a3 + 120) + 2 * *(a3 + 88);
              }

              else
              {
                v308 = *(a3 + 120) + 4 * *(a3 + 88);
              }

              *(a3 + 120) = v308;
              v311 = *(a3 + 100) + 2;
              goto LABEL_441;
            }

            if ((v306 & 0x101) == 0)
            {
              *(a3 + 120) += 2 * *(a3 + 88);
              v311 = *(a3 + 100) + 1;
LABEL_441:
              *(a3 + 100) = v311;
              goto LABEL_442;
            }

            *(a3 + 120) += 2 * *(a3 + 88);
            v309 = *(a3 + 100);
            LODWORD(v310) = vadd_s32(v309, 0x100000001).u32[0];
            HIDWORD(v310) = veor_s8(*&v309, 0x100000001).i32[1];
            *(a3 + 100) = v310;
LABEL_442:
            v312 = v763;
            if (v282 != 2)
            {
              v312 = 0;
            }

            v10 += 404 * v312;
            if (v282 == 2)
            {
              v282 = v761;
            }

            else
            {
              v282 -= 2;
            }

            v283 += 2;
            if (!v283)
            {
              return result;
            }
          }
        }

        if (!v46)
        {
          return result;
        }

        v717 = v761;
        v718 = -2 * v45;
        while (1)
        {
          if (*a3 > 8u)
          {
          }

          v719 = 1 << *a3;
          if ((v719 & 0x9A) != 0)
          {
            v720 = *(a3 + 64);
            if (v720)
            {
              *(a3 + 64) = v720 - 1;
              v721 = *(a3 + 72) + 4 * *(a3 + 8);
            }

            else
            {
              v721 = *(a3 + 72) + 2 * *(a3 + 8);
            }

            *(a3 + 72) = v721;
            v724 = *(a3 + 52);
            LODWORD(v725) = vadd_s32(v724, 0x200000002).u32[0];
            HIDWORD(v725) = veor_s8(*&v724, 0x100000001).i32[1];
            *(a3 + 52) = v725;
          }

          else
          {
            if ((v719 & 0x60) == 0)
            {
            }

            v722 = *(a3 + 64);
            if (v722)
            {
              *(a3 + 64) = v722 - 1;
              v723 = *(a3 + 72) + 4 * *(a3 + 8);
            }

            else
            {
              v723 = *(a3 + 72) + 2 * *(a3 + 8);
            }

            *(a3 + 72) = v723;
            *(a3 + 52) += 2;
          }

          v726 = *(a3 + 80);
          if (v726 > 8)
          {
          }

          v727 = 1 << v726;
          if ((v727 & 0x9A) != 0)
          {
            v728 = *(a3 + 144);
            if (v728)
            {
              *(a3 + 144) = v728 - 1;
              v729 = *(a3 + 152) + 4 * *(a3 + 88);
            }

            else
            {
              v729 = *(a3 + 152) + 2 * *(a3 + 88);
            }

            *(a3 + 152) = v729;
            v732 = *(a3 + 132);
            LODWORD(v733) = vadd_s32(v732, 0x200000002).u32[0];
            HIDWORD(v733) = veor_s8(*&v732, 0x100000001).i32[1];
            *(a3 + 132) = v733;
          }

          else
          {
            if ((v727 & 0x60) == 0)
            {
            }

            v730 = *(a3 + 144);
            if (v730)
            {
              *(a3 + 144) = v730 - 1;
              v731 = *(a3 + 152) + 4 * *(a3 + 88);
            }

            else
            {
              v731 = *(a3 + 152) + 2 * *(a3 + 88);
            }

            *(a3 + 152) = v731;
            *(a3 + 132) += 2;
          }

          if (*a3 > 8u)
          {
          }

          v734 = 1 << *a3;
          if ((v734 & 0xFA) != 0)
          {
            v735 = *(a3 + 32);
            if (v735)
            {
              *(a3 + 32) = v735 - 1;
              v736 = *(a3 + 40) + 2 * *(a3 + 8);
            }

            else
            {
              v736 = *(a3 + 40) + 4 * *(a3 + 8);
            }

            *(a3 + 40) = v736;
            v739 = *(a3 + 20) + 2;
          }

          else
          {
            if ((v734 & 0x101) != 0)
            {
              *(a3 + 40) += 2 * *(a3 + 8);
              v737 = *(a3 + 20);
              LODWORD(v738) = vadd_s32(v737, 0x100000001).u32[0];
              HIDWORD(v738) = veor_s8(*&v737, 0x100000001).i32[1];
              *(a3 + 20) = v738;
              goto LABEL_992;
            }

            *(a3 + 40) += 2 * *(a3 + 8);
            v739 = *(a3 + 20) + 1;
          }

          *(a3 + 20) = v739;
LABEL_992:
          v740 = *(a3 + 80);
          if (v740 > 8)
          {
          }

          v741 = 1 << v740;
          if ((v741 & 0xFA) != 0)
          {
            v742 = *(a3 + 112);
            if (v742)
            {
              *(a3 + 112) = v742 - 1;
              v743 = *(a3 + 120) + 2 * *(a3 + 88);
            }

            else
            {
              v743 = *(a3 + 120) + 4 * *(a3 + 88);
            }

            *(a3 + 120) = v743;
            v746 = *(a3 + 100) + 2;
            goto LABEL_1000;
          }

          if ((v741 & 0x101) == 0)
          {
            *(a3 + 120) += 2 * *(a3 + 88);
            v746 = *(a3 + 100) + 1;
LABEL_1000:
            *(a3 + 100) = v746;
            goto LABEL_1001;
          }

          *(a3 + 120) += 2 * *(a3 + 88);
          v744 = *(a3 + 100);
          LODWORD(v745) = vadd_s32(v744, 0x100000001).u32[0];
          HIDWORD(v745) = veor_s8(*&v744, 0x100000001).i32[1];
          *(a3 + 100) = v745;
LABEL_1001:
          v747 = v763;
          if (v717 != 2)
          {
            v747 = 0;
          }

          v10 += 404 * v747;
          if (v717 == 2)
          {
            v717 = v761;
          }

          else
          {
            v717 -= 2;
          }

          v718 += 2;
          if (!v718)
          {
            return result;
          }
        }
      }

      if (v8 <= 1)
      {
        if (!v8)
        {
          if (!v46)
          {
            return result;
          }

          v143 = *(a2 + 24);
          v144 = *(a2 + 16);
          v145 = *(a3 + 16);
          v146 = v761;
          while (1)
          {
            v147 = v145;
            if (v144 >= 1)
            {
              v148 = 0;
              v149 = v10 - 404;
              v150 = *(a3 + 24);
              v151 = *(a3 + 40);
              v152 = v144 + 1;
              v147 = v145;
              v153 = *(a2 + 312);
              do
              {
                if (!v147)
                {
                  v147 = *(a3 + 96);
                  v150 = *(a3 + 104);
                  v151 = *(a3 + 120);
                }

                if (v148)
                {
                  v154 = 0;
                }

                else
                {
                  v148 = v143;
                  v154 = 404;
                }

                v149 += v154;
                v155 = *v151;
                v156 = v155 >> 3;
                v157 = v151[3];
                if (v150)
                {
                  v158 = -v156;
                }

                else
                {
                  LOWORD(v158) = v155 >> 3;
                }

                v159 = v158 + v157;
                ++*(v149 + 384);
                *(v149 + 388) += (v158 + v157);
                *(v149 + 396) += (v158 + v157) * (v158 + v157);
                if ((v155 & 4) == 0)
                {
                  v160 = v151[1];
                  v161 = v160 & 7;
                  if ((v155 & 1) != 0 || (((v160 & 7u) < 6) & (v155 >> 1)) != 0)
                  {
                    v177 = (v149 + 12 * v150);
                    v178.i32[0] = 1;
                    v178.i32[1] = v159;
                    v177[42] = vadd_s32(v177[42], v178);
                    v177[43].i32[0] += v157;
                  }

                  else
                  {
                    v162 = v161 > 5;
                    v163 = v151[2];
                    v164 = (v163 & 0xF) + 1;
                    v165 = v163 >> 4;
                    v166 = v151[1];
                    v167 = v166 >> 3;
                    if (v166 >> 3 < 0)
                    {
                      v167 = -v167;
                    }

                    if (v156 >= 0)
                    {
                      LOWORD(v168) = v156;
                    }

                    else
                    {
                      v168 = -v156;
                    }

                    v169 = v161 - v162;
                    v170 = (16 * (v167 & 0xFFFu)) >> v162 >> 1;
                    v171 = ((v164 >> 1) * v165 * v170) >> 15 << v153;
                    if (v171 <= -32768)
                    {
                      v171 = -32768;
                    }

                    if (v171 >= 0x7FFF)
                    {
                      v171 = 0x7FFF;
                    }

                    v172 = ((v171 * v170) >> 15);
                    v173 = ((v171 * 8 * (v168 & 0xFFF)) >> 15);
                    if ((v156 ^ (v166 >> 3)) >= 0)
                    {
                      v174 = v169 + 7;
                    }

                    else
                    {
                      v174 = v169;
                    }

                    v175 = (v149 + 24 * v174);
                    v176 = v175[1];
                    *v175 += v164;
                    v175[1] = v176 + v172;
                    v175[2] += v173;
                  }
                }

                v151 += 4;
                --v147;
                --v148;
                ++v765.i32[0];
                v150 ^= 1u;
                --v152;
              }

              while (v152 > 1);
            }

            if (v147)
            {
            }

            if (*a3 > 8u)
            {
            }

            v179 = 1 << *a3;
            if ((v179 & 0xFA) != 0)
            {
              v180 = *(a3 + 32);
              if (v180)
              {
                *(a3 + 32) = v180 - 1;
                v181 = *(a3 + 40) + 2 * *(a3 + 8);
              }

              else
              {
                v181 = *(a3 + 40) + 4 * *(a3 + 8);
              }

              *(a3 + 40) = v181;
              v184 = *(a3 + 20) + 2;
            }

            else
            {
              if ((v179 & 0x101) != 0)
              {
                *(a3 + 40) += 2 * *(a3 + 8);
                v182 = *(a3 + 20);
                LODWORD(v183) = vadd_s32(v182, 0x100000001).u32[0];
                HIDWORD(v183) = veor_s8(*&v182, 0x100000001).i32[1];
                *(a3 + 20) = v183;
                goto LABEL_225;
              }

              *(a3 + 40) += 2 * *(a3 + 8);
              v184 = *(a3 + 20) + 1;
            }

            *(a3 + 20) = v184;
LABEL_225:
            v185 = *(a3 + 80);
            if (v185 > 8)
            {
            }

            v186 = 1 << v185;
            if ((v186 & 0xFA) != 0)
            {
              v187 = *(a3 + 112);
              if (v187)
              {
                *(a3 + 112) = v187 - 1;
                v188 = *(a3 + 120) + 2 * *(a3 + 88);
              }

              else
              {
                v188 = *(a3 + 120) + 4 * *(a3 + 88);
              }

              *(a3 + 120) = v188;
              v191 = *(a3 + 100) + 2;
              goto LABEL_233;
            }

            if ((v186 & 0x101) == 0)
            {
              *(a3 + 120) += 2 * *(a3 + 88);
              v191 = *(a3 + 100) + 1;
LABEL_233:
              *(a3 + 100) = v191;
              goto LABEL_234;
            }

            *(a3 + 120) += 2 * *(a3 + 88);
            v189 = *(a3 + 100);
            LODWORD(v190) = vadd_s32(v189, 0x100000001).u32[0];
            HIDWORD(v190) = veor_s8(*&v189, 0x100000001).i32[1];
            *(a3 + 100) = v190;
LABEL_234:
            v192 = v763;
            if (v146 != 1)
            {
              v192 = 0;
            }

            v10 += 404 * v192;
            result = v761;
            if (v146 == 1)
            {
              v146 = v761;
            }

            else
            {
              --v146;
            }

            if (!--v46)
            {
              return result;
            }
          }
        }

        if (!v46)
        {
          return result;
        }

        v655 = v761;
        v656 = -2 * v45;
        while (1)
        {
          if (*a3 > 8u)
          {
          }

          v657 = 1 << *a3;
          if ((v657 & 0xFA) != 0)
          {
            v658 = *(a3 + 32);
            if (v658)
            {
              *(a3 + 32) = v658 - 1;
              v659 = *(a3 + 40) + 2 * *(a3 + 8);
            }

            else
            {
              v659 = *(a3 + 40) + 4 * *(a3 + 8);
            }

            *(a3 + 40) = v659;
            v662 = *(a3 + 20) + 2;
          }

          else
          {
            if ((v657 & 0x101) != 0)
            {
              *(a3 + 40) += 2 * *(a3 + 8);
              v660 = *(a3 + 20);
              LODWORD(v661) = vadd_s32(v660, 0x100000001).u32[0];
              HIDWORD(v661) = veor_s8(*&v660, 0x100000001).i32[1];
              *(a3 + 20) = v661;
              goto LABEL_868;
            }

            *(a3 + 40) += 2 * *(a3 + 8);
            v662 = *(a3 + 20) + 1;
          }

          *(a3 + 20) = v662;
LABEL_868:
          v663 = *(a3 + 80);
          if (v663 > 8)
          {
          }

          v664 = 1 << v663;
          if ((v664 & 0xFA) != 0)
          {
            v665 = *(a3 + 112);
            if (v665)
            {
              *(a3 + 112) = v665 - 1;
              v666 = *(a3 + 120) + 2 * *(a3 + 88);
            }

            else
            {
              v666 = *(a3 + 120) + 4 * *(a3 + 88);
            }

            *(a3 + 120) = v666;
            v669 = *(a3 + 100) + 2;
            goto LABEL_876;
          }

          if ((v664 & 0x101) == 0)
          {
            *(a3 + 120) += 2 * *(a3 + 88);
            v669 = *(a3 + 100) + 1;
LABEL_876:
            *(a3 + 100) = v669;
            goto LABEL_877;
          }

          *(a3 + 120) += 2 * *(a3 + 88);
          v667 = *(a3 + 100);
          LODWORD(v668) = vadd_s32(v667, 0x100000001).u32[0];
          HIDWORD(v668) = veor_s8(*&v667, 0x100000001).i32[1];
          *(a3 + 100) = v668;
LABEL_877:
          if (*a3 > 8u)
          {
          }

          v670 = 1 << *a3;
          if ((v670 & 0x9A) != 0)
          {
            v671 = *(a3 + 64);
            if (v671)
            {
              *(a3 + 64) = v671 - 1;
              v672 = *(a3 + 72) + 4 * *(a3 + 8);
            }

            else
            {
              v672 = *(a3 + 72) + 2 * *(a3 + 8);
            }

            *(a3 + 72) = v672;
            v675 = *(a3 + 52);
            LODWORD(v676) = vadd_s32(v675, 0x200000002).u32[0];
            HIDWORD(v676) = veor_s8(*&v675, 0x100000001).i32[1];
            *(a3 + 52) = v676;
          }

          else
          {
            if ((v670 & 0x60) == 0)
            {
            }

            v673 = *(a3 + 64);
            if (v673)
            {
              *(a3 + 64) = v673 - 1;
              v674 = *(a3 + 72) + 4 * *(a3 + 8);
            }

            else
            {
              v674 = *(a3 + 72) + 2 * *(a3 + 8);
            }

            *(a3 + 72) = v674;
            *(a3 + 52) += 2;
          }

          v677 = *(a3 + 80);
          if (v677 > 8)
          {
          }

          v678 = 1 << v677;
          if ((v678 & 0x9A) != 0)
          {
            v679 = *(a3 + 144);
            if (v679)
            {
              *(a3 + 144) = v679 - 1;
              v680 = *(a3 + 152) + 4 * *(a3 + 88);
            }

            else
            {
              v680 = *(a3 + 152) + 2 * *(a3 + 88);
            }

            *(a3 + 152) = v680;
            v683 = *(a3 + 132);
            LODWORD(v684) = vadd_s32(v683, 0x200000002).u32[0];
            HIDWORD(v684) = veor_s8(*&v683, 0x100000001).i32[1];
            *(a3 + 132) = v684;
          }

          else
          {
            if ((v678 & 0x60) == 0)
            {
            }

            v681 = *(a3 + 144);
            if (v681)
            {
              *(a3 + 144) = v681 - 1;
              v682 = *(a3 + 152) + 4 * *(a3 + 88);
            }

            else
            {
              v682 = *(a3 + 152) + 2 * *(a3 + 88);
            }

            *(a3 + 152) = v682;
            *(a3 + 132) += 2;
          }

          v685 = v763;
          if (v655 != 2)
          {
            v685 = 0;
          }

          v10 += 404 * v685;
          if (v655 == 2)
          {
            v655 = v761;
          }

          else
          {
            v655 -= 2;
          }

          v656 += 2;
          if (!v656)
          {
            return result;
          }
        }
      }

      if (v8 != 2)
      {
        if (!v46)
        {
          return result;
        }

        v251 = v761;
        v252 = -2 * v45;
        while (1)
        {
          if (*a3 > 8u)
          {
          }

          v253 = 1 << *a3;
          if ((v253 & 0x9A) != 0)
          {
            v254 = *(a3 + 64);
            if (v254)
            {
              *(a3 + 64) = v254 - 1;
              v255 = *(a3 + 72) + 4 * *(a3 + 8);
            }

            else
            {
              v255 = *(a3 + 72) + 2 * *(a3 + 8);
            }

            *(a3 + 72) = v255;
            v258 = *(a3 + 52);
            LODWORD(v259) = vadd_s32(v258, 0x200000002).u32[0];
            HIDWORD(v259) = veor_s8(*&v258, 0x100000001).i32[1];
            *(a3 + 52) = v259;
          }

          else
          {
            if ((v253 & 0x60) == 0)
            {
            }

            v256 = *(a3 + 64);
            if (v256)
            {
              *(a3 + 64) = v256 - 1;
              v257 = *(a3 + 72) + 4 * *(a3 + 8);
            }

            else
            {
              v257 = *(a3 + 72) + 2 * *(a3 + 8);
            }

            *(a3 + 72) = v257;
            *(a3 + 52) += 2;
          }

          v260 = *(a3 + 80);
          if (v260 > 8)
          {
          }

          v261 = 1 << v260;
          if ((v261 & 0x9A) != 0)
          {
            v262 = *(a3 + 144);
            if (v262)
            {
              *(a3 + 144) = v262 - 1;
              v263 = *(a3 + 152) + 4 * *(a3 + 88);
            }

            else
            {
              v263 = *(a3 + 152) + 2 * *(a3 + 88);
            }

            *(a3 + 152) = v263;
            v266 = *(a3 + 132);
            LODWORD(v267) = vadd_s32(v266, 0x200000002).u32[0];
            HIDWORD(v267) = veor_s8(*&v266, 0x100000001).i32[1];
            *(a3 + 132) = v267;
          }

          else
          {
            if ((v261 & 0x60) == 0)
            {
            }

            v264 = *(a3 + 144);
            if (v264)
            {
              *(a3 + 144) = v264 - 1;
              v265 = *(a3 + 152) + 4 * *(a3 + 88);
            }

            else
            {
              v265 = *(a3 + 152) + 2 * *(a3 + 88);
            }

            *(a3 + 152) = v265;
            *(a3 + 132) += 2;
          }

          if (*a3 > 8u)
          {
          }

          v268 = 1 << *a3;
          if ((v268 & 0xFA) != 0)
          {
            v269 = *(a3 + 32);
            if (v269)
            {
              *(a3 + 32) = v269 - 1;
              v270 = *(a3 + 40) + 2 * *(a3 + 8);
            }

            else
            {
              v270 = *(a3 + 40) + 4 * *(a3 + 8);
            }

            *(a3 + 40) = v270;
            v273 = *(a3 + 20) + 2;
          }

          else
          {
            if ((v268 & 0x101) != 0)
            {
              *(a3 + 40) += 2 * *(a3 + 8);
              v271 = *(a3 + 20);
              LODWORD(v272) = vadd_s32(v271, 0x100000001).u32[0];
              HIDWORD(v272) = veor_s8(*&v271, 0x100000001).i32[1];
              *(a3 + 20) = v272;
              goto LABEL_381;
            }

            *(a3 + 40) += 2 * *(a3 + 8);
            v273 = *(a3 + 20) + 1;
          }

          *(a3 + 20) = v273;
LABEL_381:
          v274 = *(a3 + 80);
          if (v274 > 8)
          {
          }

          v275 = 1 << v274;
          if ((v275 & 0xFA) != 0)
          {
            v276 = *(a3 + 112);
            if (v276)
            {
              *(a3 + 112) = v276 - 1;
              v277 = *(a3 + 120) + 2 * *(a3 + 88);
            }

            else
            {
              v277 = *(a3 + 120) + 4 * *(a3 + 88);
            }

            *(a3 + 120) = v277;
            v280 = *(a3 + 100) + 2;
            goto LABEL_389;
          }

          if ((v275 & 0x101) == 0)
          {
            *(a3 + 120) += 2 * *(a3 + 88);
            v280 = *(a3 + 100) + 1;
LABEL_389:
            *(a3 + 100) = v280;
            goto LABEL_390;
          }

          *(a3 + 120) += 2 * *(a3 + 88);
          v278 = *(a3 + 100);
          LODWORD(v279) = vadd_s32(v278, 0x100000001).u32[0];
          HIDWORD(v279) = veor_s8(*&v278, 0x100000001).i32[1];
          *(a3 + 100) = v279;
LABEL_390:
          v281 = v763;
          if (v251 != 2)
          {
            v281 = 0;
          }

          v10 += 404 * v281;
          if (v251 == 2)
          {
            v251 = v761;
          }

          else
          {
            v251 -= 2;
          }

          v252 += 2;
          if (!v252)
          {
            return result;
          }
        }
      }
    }

    if (!v46)
    {
      return result;
    }

    v554 = a3 + 16;
    v555 = *(a3 + 16);
    v556 = 2 * *(a2 + 24);
    v557 = 2 * v555;
    if (!v555)
    {
      v554 = a3 + 96;
    }

    v755 = v554;
    v759 = 2 * *(a2 + 16);
    result = 24;
    v558 = v761;
    while (1)
    {
      v559 = v557;
      if (v759 >= 1)
      {
        v560 = 0;
        v561 = v10 - 404;
        v562 = *(v755 + 8);
        v563 = (*(a3 + 40) + 8);
        v564 = *(a2 + 312);
        v565 = v759 + 2;
        v559 = v557;
        do
        {
          if (!v559)
          {
            v559 = 2 * *(a3 + 96);
            v563 = (*(a3 + 120) + 8);
          }

          if (v560)
          {
            v566 = 0;
          }

          else
          {
            v560 = v556;
            v566 = 404;
          }

          v561 += v566;
          v567 = *(v563 - 1);
          v568 = v563[3];
          v569 = v567 + (*(v563 - 4) >> 3);
          v570 = *v563;
          ++*(v561 + 384);
          *(v561 + 388) += v569;
          *(v561 + 396) += v569 * v569;
          if ((v570 & 4) == 0)
          {
            v571 = v563[1];
            v572 = v571 & 7;
            if ((v570 & 1) != 0 || (((v571 & 7u) < 6) & (v570 >> 1)) != 0)
            {
              v588 = (v561 + 336 + 12 * v562);
              v589.i32[0] = 1;
              v589.i32[1] = v569;
              *v588 = vadd_s32(*v588, v589);
              v588[1].i32[0] += v567;
              v590 = (v561 + 336 + 12 * (v562 + 1));
              *v590 = vadd_s32(*v590, v589);
              v590[1].i32[0] += v568;
            }

            else
            {
              v573 = v572 > 5;
              v574 = v570;
              v575 = v563[2];
              v576 = (v575 & 0xF) + 1;
              v577 = v575 >> 4;
              v578 = v570 >> 3;
              v579 = v571 >> 3;
              if (v579 >= 0)
              {
                LOWORD(v580) = v579;
              }

              else
              {
                v580 = -v579;
              }

              if (v578 < 0)
              {
                v578 = -v578;
              }

              v581 = v572 - v573;
              v582 = (16 * (v580 & 0xFFFu)) >> v573 >> 1;
              v583 = ((v576 >> 1) * v577 * v582) >> 15 << v564;
              if (v583 <= -32768)
              {
                v583 = -32768;
              }

              if (v583 >= 0x7FFF)
              {
                v583 = 0x7FFF;
              }

              v584 = ((v583 * v582) >> 15);
              v585 = ((v583 * 8 * (v578 & 0xFFF)) >> 15);
              if ((v579 ^ (v574 >> 3)) >= 0)
              {
                v581 += 7;
              }

              v586 = (v561 + 24 * v581);
              v587 = v586[1];
              *v586 += v576;
              v586[1] = v587 + v584;
              v586[2] += v585;
            }
          }

          v563 += 8;
          v559 -= 2;
          v560 -= 2;
          ++v765.i32[0];
          v565 -= 2;
        }

        while (v565 > 2);
      }

      if (v559)
      {
      }

      if (*a3 > 8u)
      {
      }

      v591 = 1 << *a3;
      if ((v591 & 0xFA) != 0)
      {
        v592 = *(a3 + 32);
        if (v592)
        {
          *(a3 + 32) = v592 - 1;
          v593 = *(a3 + 40) + 2 * *(a3 + 8);
        }

        else
        {
          v593 = *(a3 + 40) + 4 * *(a3 + 8);
        }

        *(a3 + 40) = v593;
        v596 = *(a3 + 20) + 2;
      }

      else
      {
        if ((v591 & 0x101) != 0)
        {
          *(a3 + 40) += 2 * *(a3 + 8);
          v594 = *(a3 + 20);
          LODWORD(v595) = vadd_s32(v594, 0x100000001).u32[0];
          HIDWORD(v595) = veor_s8(*&v594, 0x100000001).i32[1];
          *(a3 + 20) = v595;
          goto LABEL_781;
        }

        *(a3 + 40) += 2 * *(a3 + 8);
        v596 = *(a3 + 20) + 1;
      }

      *(a3 + 20) = v596;
LABEL_781:
      v597 = *(a3 + 80);
      if (v597 > 8)
      {
      }

      v598 = 1 << v597;
      if ((v598 & 0xFA) != 0)
      {
        v599 = *(a3 + 112);
        if (v599)
        {
          *(a3 + 112) = v599 - 1;
          v600 = *(a3 + 120) + 2 * *(a3 + 88);
        }

        else
        {
          v600 = *(a3 + 120) + 4 * *(a3 + 88);
        }

        *(a3 + 120) = v600;
        v603 = *(a3 + 100) + 2;
        goto LABEL_789;
      }

      if ((v598 & 0x101) == 0)
      {
        *(a3 + 120) += 2 * *(a3 + 88);
        v603 = *(a3 + 100) + 1;
LABEL_789:
        *(a3 + 100) = v603;
        goto LABEL_790;
      }

      *(a3 + 120) += 2 * *(a3 + 88);
      v601 = *(a3 + 100);
      LODWORD(v602) = vadd_s32(v601, 0x100000001).u32[0];
      HIDWORD(v602) = veor_s8(*&v601, 0x100000001).i32[1];
      *(a3 + 100) = v602;
LABEL_790:
      v604 = v763;
      if (v558 != 1)
      {
        v604 = 0;
      }

      v10 += 404 * v604;
      if (v558 == 1)
      {
        v558 = v761;
      }

      else
      {
        --v558;
      }

      if (!--v46)
      {
        return result;
      }
    }
  }

  if (v11)
  {
    if (v8 != 2)
    {
    }

    v13 = *(a2 + 20);
    v15 = *(a2 + 28);
    v764 = 0;
LABEL_453:
    if (!v13)
    {
      return result;
    }

    v313 = vdupq_n_s16(*(a2 + 312));
    v314 = 2 * *(a2 + 24);
    v315 = 2 * *(a2 + 16);
    v753 = a3 + 16;
    v757 = a3 + 96;
    v751 = v315 - 2;
    v316.i64[0] = 0x2000200020002;
    v316.i64[1] = 0x2000200020002;
    v317.i64[0] = 0x4000400040004;
    v317.i64[1] = 0x4000400040004;
    v318.i64[0] = 0x7000700070007;
    v318.i64[1] = 0x7000700070007;
    result = 12;
    v319.i64[0] = 0xF000F000F000FLL;
    v319.i64[1] = 0xF000F000F000FLL;
    v320.i64[0] = 0x5000500050005;
    v320.i64[1] = 0x5000500050005;
    v321.i64[0] = 0x1000100010001;
    v321.i64[1] = 0x1000100010001;
    v322 = v15;
    v762 = v15;
    v749 = v315;
    while (1)
    {
      if (v315 < 1)
      {
        goto LABEL_497;
      }

      v323 = 0;
      v324 = *(a3 + 16);
      v325 = v753;
      if (!v324)
      {
        v325 = v757;
      }

      v326 = *(v325 + 8);
      v327 = 2 * v324;
      v328 = v10 - 404;
      v329 = *(a3 + 40);
      v330 = v751;
      v331 = v315;
LABEL_459:
      v332 = *(a3 + 120);
      v333 = *(a3 + 96);
      v334 = v327 ? v327 : 2 * v333;
      v335 = v327 ? v329 : *(a3 + 120);
      if (v334 >= 16)
      {
        break;
      }

      v336 = v331;
      if (v334 == v331)
      {
        goto LABEL_468;
      }

      if (v334 <= 0)
      {
      }

      v344 = v334 >> 1;
      if (v334 != 1)
      {
        if (v344 <= 1)
        {
          v345 = 1;
        }

        else
        {
          v345 = v344;
        }

        v346 = v335 + 4;
        v347 = &v770;
        v348 = &v769;
        v349 = &v771;
        v350 = &v772;
        v351 = &v773;
        v352 = &v765;
        do
        {
          v352->i16[0] = *v346;
          v352 = (v352 + 2);
          v351->i16[0] = v346[1];
          v351 = (v351 + 2);
          v350->i16[0] = v346[2];
          v350 = (v350 + 2);
          v349->i16[0] = v346[3];
          v349 = (v349 + 2);
          v353 = *(v346 - 1);
          v348->i16[0] = v353;
          v348 = (v348 + 2);
          v347->i16[0] = v353 - (*(v346 - 4) >> 3);
          v347 = (v347 + 2);
          v346 += 8;
          --v345;
        }

        while (v345);
      }

      LODWORD(v354) = v331 >> 1;
      if (v331 <= 15)
      {
        v354 = v354;
      }

      else
      {
        v354 = 8;
      }

      if (v344 >= v354)
      {
        v15 = v762;
        v315 = v749;
      }

      else
      {
        v355 = v344;
        v15 = v762;
        v315 = v749;
        do
        {
          v765.i16[v355] = v332[4];
          v773.i16[v355] = v332[5];
          v772.i16[v355] = v332[6];
          v771.i16[v355] = v332[7];
          v356 = v332[3];
          v769.i16[v355] = v356;
          v770.i16[v355] = v356 - (*v332 >> 3);
          v332 += 8;
          ++v355;
        }

        while (v354 != v355);
      }

      v338 = v765;
      v339 = v773;
      v342 = v771;
      v340 = v772;
      v341 = v769;
      v343 = v770;
      v327 = 2 * (v333 - v354 + v344);
      v329 = v332;
LABEL_485:
      v357 = 0;
      v358 = vceqzq_s16(vandq_s8(v338, v317));
      v359 = vandq_s8(v339, v318);
      v360 = vshrq_n_s16(v339, 3uLL);
      v361 = vqshlq_n_u16(vabsq_s16(vshrq_n_s16(v338, 3uLL)), 4uLL);
      v362 = vcgtq_u16(v359, v320);
      v363 = vshlq_u16(vqshlq_n_u16(vabsq_s16(v360), 4uLL), v362);
      v364 = vandq_s8(vaddq_s16(vandq_s8(v340, v319), vbicq_s8(v321, v338)), vorrq_s8(v362, vceqzq_s16(vandq_s8(v338, v316))));
      v365 = vaddq_s16(vaddq_s16(v359, v362), vandq_s8(veorq_s8(vcltzq_s16(v338), vcgezq_s16(v360)), v318));
      v366 = vmulq_s16(vshrq_n_u16(v364, 1uLL), vshrq_n_u16(v340, 4uLL));
      v367 = vshrq_n_u16(v363, 1uLL);
      v368 = vqshlq_s16(vqdmulhq_s16(v367, v366), v313);
      v369 = vceqzq_s16(v364);
      v773 = v343;
      v765 = vornq_s8(vandq_s8(v364, v358), v358);
      v766 = vbslq_s8(v369, v343, vqdmulhq_s16(v368, v367));
      v767 = vbslq_s8(v369, v341, vqdmulhq_s16(v368, vshrq_n_u16(v361, 1uLL)));
      v768 = vbslq_s8(v369, v342, v365);
      while (1)
      {
        if (v323)
        {
          v370 = 0;
        }

        else
        {
          v323 = v314;
          v370 = 404;
        }

        v328 += v370;
        v371 = v765.u16[v357];
        ++*(v328 + 384);
        v372 = v773.u16[v357];
        *(v328 + 388) += v372;
        *(v328 + 396) += v372 * v372;
        if (v371)
        {
          if (v371 != 0xFFFF)
          {
            v373 = v767.u16[v357];
            v374 = (v328 + 24 * v768.u16[v357]);
            v375 = v374[1] + *(&v765 + v357 * 2 + 16);
            *v374 += v371;
            v374[1] = v375;
            v374[2] += v373;
          }
        }

        else
        {
          v376 = v767.u16[v357];
          v377 = v768.u16[v357];
          v378 = (v328 + 336 + 12 * v326);
          v379.i32[0] = 1;
          v379.i32[1] = *(&v765 + v357 * 2 + 16);
          *v378 = vadd_s32(*v378, v379);
          v378[1].i32[0] += v376;
          v380 = (v328 + 336 + 12 * (v326 + 1));
          *v380 = vadd_s32(*v380, v379);
          v380[1].i32[0] += v377;
        }

        ++v764;
        if (v330 == (v357 * 2))
        {
          break;
        }

        v323 -= 2;
        if (++v357 == 8)
        {
          v330 -= 16;
          v381 = v331 <= 16;
          v331 -= 16;
          if (v381)
          {
            break;
          }

          goto LABEL_459;
        }
      }

LABEL_497:
      if (*a3 > 8u)
      {
      }

      v382 = 1 << *a3;
      if ((v382 & 0xFA) != 0)
      {
        v383 = *(a3 + 32);
        if (v383)
        {
          *(a3 + 32) = v383 - 1;
          v384 = *(a3 + 40) + 2 * *(a3 + 8);
        }

        else
        {
          v384 = *(a3 + 40) + 4 * *(a3 + 8);
        }

        *(a3 + 40) = v384;
        v387 = *(a3 + 20) + 2;
      }

      else
      {
        if ((v382 & 0x101) != 0)
        {
          *(a3 + 40) += 2 * *(a3 + 8);
          v385 = *(a3 + 20);
          LODWORD(v386) = vadd_s32(v385, 0x100000001).u32[0];
          HIDWORD(v386) = veor_s8(*&v385, 0x100000001).i32[1];
          *(a3 + 20) = v386;
          goto LABEL_506;
        }

        *(a3 + 40) += 2 * *(a3 + 8);
        v387 = *(a3 + 20) + 1;
      }

      *(a3 + 20) = v387;
LABEL_506:
      v388 = *(a3 + 80);
      if (v388 > 8)
      {
      }

      v389 = 1 << v388;
      if ((v389 & 0xFA) != 0)
      {
        v390 = *(a3 + 112);
        if (v390)
        {
          *(a3 + 112) = v390 - 1;
          v391 = *(a3 + 120) + 2 * *(a3 + 88);
        }

        else
        {
          v391 = *(a3 + 120) + 4 * *(a3 + 88);
        }

        *(a3 + 120) = v391;
        v394 = *(a3 + 100) + 2;
        goto LABEL_514;
      }

      if ((v389 & 0x101) == 0)
      {
        *(a3 + 120) += 2 * *(a3 + 88);
        v394 = *(a3 + 100) + 1;
LABEL_514:
        *(a3 + 100) = v394;
        goto LABEL_515;
      }

      *(a3 + 120) += 2 * *(a3 + 88);
      v392 = *(a3 + 100);
      LODWORD(v393) = vadd_s32(v392, 0x100000001).u32[0];
      HIDWORD(v393) = veor_s8(*&v392, 0x100000001).i32[1];
      *(a3 + 100) = v393;
LABEL_515:
      v395 = v763;
      if (v322 != 1)
      {
        v395 = 0;
      }

      v10 += 404 * v395;
      if (v322 == 1)
      {
        v322 = v15;
      }

      else
      {
        --v322;
      }

      if (!--v13)
      {
        return result;
      }
    }

    v336 = 16;
LABEL_468:
    v337 = v335;
    v777 = vld4q_s16(v337);
    v337 += 32;
    v778 = vld4q_s16(v337);
    v338 = vuzp2q_s16(v777.val[0], v778.val[0]);
    v339 = vuzp2q_s16(v777.val[1], v778.val[1]);
    v340 = vuzp2q_s16(v777.val[2], v778.val[2]);
    v341 = vuzp1q_s16(v777.val[3], v778.val[3]);
    v342 = vuzp2q_s16(v777.val[3], v778.val[3]);
    v343 = vsraq_n_s16(v341, vuzp1q_s16(v777.val[0], v778.val[0]), 3uLL);
    v329 = v335 + 64;
    v327 = v334 - v336;
    goto LABEL_485;
  }

  v12 = *(a2 + 20);
  v13 = 2 * v12;
  v14 = *(a2 + 28);
  v15 = 2 * v14;
  v764 = 0;
  v760 = 2 * v14;
  if (v8 <= 3)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        if (!v13)
        {
          return result;
        }

        v78 = vdupq_n_s16(*(a2 + 312));
        v79 = *(a2 + 24);
        v752 = *(a2 + 16);
        v756 = *(a3 + 16);
        if (v756)
        {
          v80 = a3 + 16;
        }

        else
        {
          v80 = a3 + 96;
        }

        v748 = v80;
        v81.i64[0] = 0x2000200020002;
        v81.i64[1] = 0x2000200020002;
        v82.i64[0] = 0x4000400040004;
        v82.i64[1] = 0x4000400040004;
        v83.i64[0] = 0x7000700070007;
        v83.i64[1] = 0x7000700070007;
        result = 12;
        v84.i64[0] = 0xF000F000F000FLL;
        v84.i64[1] = 0xF000F000F000FLL;
        v85.i64[0] = 0x5000500050005;
        v85.i64[1] = 0x5000500050005;
        v86.i64[0] = 0x1000100010001;
        v86.i64[1] = 0x1000100010001;
        v87 = v15;
        while (1)
        {
          v88 = v756;
          if (v752 < 1)
          {
            goto LABEL_155;
          }

          v5.i32[0] = 0;
          v89 = 0;
          v90 = *(v748 + 8);
          v6.i32[0] = v90 & 1;
          v91 = vdup_lane_s32(vceq_s32(*v6.i8, *v5.i8), 0);
          v92 = v10 - 404;
          v93 = *(a3 + 40);
          v5 = vcltzq_s16(vshlq_n_s16(vmovl_u8(vorr_s8((*&v91 & 0xFF00FF00FF00FF00), (*&vmvn_s8(v91) & 0xFF00FF00FF00FFLL))), 0xFuLL));
          v88 = v756;
          v94 = v752;
LABEL_126:
          v95 = *(a3 + 120);
          v96 = *(a3 + 96);
          if (!v88)
          {
            v88 = *(a3 + 96);
            v93 = *(a3 + 120);
          }

          if (v88 > 7)
          {
            break;
          }

          v97 = v94;
          if (v88 == v94)
          {
            goto LABEL_131;
          }

          if (v88 < 1)
          {
          }

          v98 = 0;
          v99 = 2 * v88;
          do
          {
            v765.i16[v98 / 2] = *v93;
            v773.i16[v98 / 2] = v93[1];
            v772.i16[v98 / 2] = v93[2];
            v771.i16[v98 / 2] = v93[3];
            v93 += 4;
            v98 += 2;
          }

          while (v99 != v98);
          if (v94 >= 8)
          {
            v100 = 8;
          }

          else
          {
            v100 = v94;
          }

          if (v88 < v100)
          {
            v101 = &v771.i16[v99 / 2];
            v102 = &v772.i16[v99 / 2];
            v103 = &v773.i16[v99 / 2];
            v104 = &v765.i16[v99 / 2];
            v105 = v88;
            do
            {
              *v104++ = *v95;
              *v103++ = v95[1];
              *v102++ = v95[2];
              *v101++ = v95[3];
              v95 += 4;
              ++v105;
            }

            while (v100 > v105);
          }

          v6 = v765;
          v775.val[1] = v773;
          v775.val[3] = v771;
          v775.val[2] = v772;
          v88 += v96 - v100;
          v93 = v95;
LABEL_142:
          v106 = 0;
          v107 = vceqzq_s16(vandq_s8(v6, v82));
          v108 = vandq_s8(v775.val[1], v83);
          v109 = vshrq_n_s16(v6, 3uLL);
          v110 = vaddq_s16(v775.val[3], vbslq_s8(v5, vnegq_s16(v109), v109));
          v111 = vshrq_n_s16(v775.val[1], 3uLL);
          v112 = vcgtq_u16(v108, v85);
          v113 = vandq_s8(vaddq_s16(vandq_s8(v775.val[2], v84), vbicq_s8(v86, v6)), vorrq_s8(v112, vceqzq_s16(vandq_s8(v6, v81))));
          v114 = vaddq_s16(vaddq_s16(v108, v112), vandq_s8(veorq_s8(vcltzq_s16(v6), vcgezq_s16(v111)), v83));
          v115 = vshrq_n_u16(vshlq_u16(vqshlq_n_u16(vabsq_s16(v111), 4uLL), v112), 1uLL);
          v116 = vqshlq_s16(vqdmulhq_s16(v115, vmulq_s16(vshrq_n_u16(v113, 1uLL), vshrq_n_u16(v775.val[2], 4uLL))), v78);
          v117 = vqdmulhq_s16(v116, v115);
          v118 = vqdmulhq_s16(v116, vshrq_n_u16(vqshlq_n_u16(vabsq_s16(v109), 4uLL), 1uLL));
          v119 = vceqzq_s16(v113);
          v765 = v114;
          v766 = vornq_s8(vandq_s8(v113, v107), v107);
          v767 = vbslq_s8(v119, v110, v117);
          v768 = vbslq_s8(v119, v775.val[3], v118);
          v773 = v110;
          v120 = &v767;
          do
          {
            if (v89)
            {
              v121 = 0;
            }

            else
            {
              v89 = v79;
              v121 = 404;
            }

            v92 += v121;
            v122 = v120[-2].u16[0];
            v123 = v120[-1].u16[0];
            v124 = v120->u16[0];
            v125 = v120[1].u16[0];
            ++*(v92 + 384);
            v126 = v773.u16[v106];
            *(v92 + 388) += v126;
            *(v92 + 396) += v126 * v126;
            if (v123)
            {
              if (v123 != 0xFFFF)
              {
                v127 = (v92 + 24 * v122);
                v128 = v127[1];
                *v127 += v123;
                v127[1] = v128 + v124;
                v127[2] += v125;
              }
            }

            else
            {
              v129 = (v92 + 12 * v90);
              v130.i32[0] = 1;
              v130.i32[1] = v124;
              *v6.i8 = vadd_s32(v129[42], v130);
              v129[42] = *v6.i8;
              v129[43].i32[0] += v125;
            }

            ++v764;
            if (v94 - 1 == v106)
            {
              v15 = v760;
              goto LABEL_155;
            }

            v120 = (v120 + 2);
            v90 ^= 1u;
            --v89;
            ++v106;
          }

          while (v106 != 8);
          v94 -= 8;
          v15 = v760;
          if (v94 + 1 > 1)
          {
            goto LABEL_126;
          }

LABEL_155:
          if (v88)
          {
          }

          if (*a3 > 8u)
          {
          }

          v131 = 1 << *a3;
          if ((v131 & 0xFA) != 0)
          {
            v132 = *(a3 + 32);
            if (v132)
            {
              *(a3 + 32) = v132 - 1;
              v133 = *(a3 + 40) + 2 * *(a3 + 8);
            }

            else
            {
              v133 = *(a3 + 40) + 4 * *(a3 + 8);
            }

            *(a3 + 40) = v133;
            v135 = *(a3 + 20) + 2;
          }

          else
          {
            if ((v131 & 0x101) != 0)
            {
              *(a3 + 40) += 2 * *(a3 + 8);
              v134 = *(a3 + 20);
              v6.i32[0] = vadd_s32(v134, 0x100000001).u32[0];
              *v5.i8 = veor_s8(v134, 0x100000001);
              v6.i32[1] = v5.i32[1];
              *(a3 + 20) = v6.i64[0];
              goto LABEL_165;
            }

            *(a3 + 40) += 2 * *(a3 + 8);
            v135 = *(a3 + 20) + 1;
          }

          *(a3 + 20) = v135;
LABEL_165:
          v136 = *(a3 + 80);
          if (v136 > 8)
          {
          }

          v137 = 1 << v136;
          if ((v137 & 0xFA) != 0)
          {
            v138 = *(a3 + 112);
            if (v138)
            {
              *(a3 + 112) = v138 - 1;
              v139 = *(a3 + 120) + 2 * *(a3 + 88);
            }

            else
            {
              v139 = *(a3 + 120) + 4 * *(a3 + 88);
            }

            *(a3 + 120) = v139;
            v141 = *(a3 + 100) + 2;
            goto LABEL_173;
          }

          if ((v137 & 0x101) == 0)
          {
            *(a3 + 120) += 2 * *(a3 + 88);
            v141 = *(a3 + 100) + 1;
LABEL_173:
            *(a3 + 100) = v141;
            goto LABEL_174;
          }

          *(a3 + 120) += 2 * *(a3 + 88);
          v140 = *(a3 + 100);
          v6.i32[0] = vadd_s32(v140, 0x100000001).u32[0];
          *v5.i8 = veor_s8(v140, 0x100000001);
          v6.i32[1] = v5.i32[1];
          *(a3 + 100) = v6.i64[0];
LABEL_174:
          v142 = v763;
          if (v87 != 1)
          {
            v142 = 0;
          }

          v10 += 404 * v142;
          if (v87 == 1)
          {
            v87 = v15;
          }

          else
          {
            --v87;
          }

          if (!--v13)
          {
            return result;
          }
        }

        v97 = 8;
LABEL_131:
        v88 -= v97;
        *v6.i8 = vld4q_s16(v93);
        v93 += 32;
        goto LABEL_142;
      }

      if (!v13)
      {
        return result;
      }

      v463 = 2 * v14;
      v464 = -2 * v12;
      while (1)
      {
        if (*a3 > 8u)
        {
        }

        v467 = 1 << *a3;
        if ((v467 & 0xFA) != 0)
        {
          v468 = *(a3 + 32);
          if (v468)
          {
            *(a3 + 32) = v468 - 1;
            v469 = *(a3 + 40) + 2 * *(a3 + 8);
          }

          else
          {
            v469 = *(a3 + 40) + 4 * *(a3 + 8);
          }

          *(a3 + 40) = v469;
          v471 = *(a3 + 20) + 2;
        }

        else
        {
          if ((v467 & 0x101) != 0)
          {
            *(a3 + 40) += 2 * *(a3 + 8);
            v470 = *(a3 + 20);
            v466.i32[0] = vadd_s32(v470, 0x100000001).u32[0];
            *v465.i8 = veor_s8(v470, 0x100000001);
            v466.i32[1] = v465.i32[1];
            *(a3 + 20) = v466.i64[0];
            goto LABEL_599;
          }

          *(a3 + 40) += 2 * *(a3 + 8);
          v471 = *(a3 + 20) + 1;
        }

        *(a3 + 20) = v471;
LABEL_599:
        v472 = *(a3 + 80);
        if (v472 > 8)
        {
        }

        v473 = 1 << v472;
        if ((v473 & 0xFA) != 0)
        {
          v474 = *(a3 + 112);
          if (v474)
          {
            *(a3 + 112) = v474 - 1;
            v475 = *(a3 + 120) + 2 * *(a3 + 88);
          }

          else
          {
            v475 = *(a3 + 120) + 4 * *(a3 + 88);
          }

          *(a3 + 120) = v475;
          v477 = *(a3 + 100) + 2;
          goto LABEL_607;
        }

        if ((v473 & 0x101) == 0)
        {
          *(a3 + 120) += 2 * *(a3 + 88);
          v477 = *(a3 + 100) + 1;
LABEL_607:
          *(a3 + 100) = v477;
          goto LABEL_608;
        }

        *(a3 + 120) += 2 * *(a3 + 88);
        v476 = *(a3 + 100);
        v466.i32[0] = vadd_s32(v476, 0x100000001).u32[0];
        *v465.i8 = veor_s8(v476, 0x100000001);
        v466.i32[1] = v465.i32[1];
        *(a3 + 100) = v466.i64[0];
LABEL_608:
        if (*a3 > 8u)
        {
        }

        v478 = 1 << *a3;
        if ((v478 & 0x9A) != 0)
        {
          v479 = *(a3 + 64);
          if (v479)
          {
            *(a3 + 64) = v479 - 1;
            v480 = *(a3 + 72) + 4 * *(a3 + 8);
          }

          else
          {
            v480 = *(a3 + 72) + 2 * *(a3 + 8);
          }

          *(a3 + 72) = v480;
          v483 = *(a3 + 52);
          a5.i32[0] = vadd_s32(v483, 0x200000002).u32[0];
          *a4.i8 = veor_s8(v483, 0x100000001);
          a5.i32[1] = a4.i32[1];
          *(a3 + 52) = a5.i64[0];
        }

        else
        {
          if ((v478 & 0x60) == 0)
          {
          }

          v481 = *(a3 + 64);
          if (v481)
          {
            *(a3 + 64) = v481 - 1;
            v482 = *(a3 + 72) + 4 * *(a3 + 8);
          }

          else
          {
            v482 = *(a3 + 72) + 2 * *(a3 + 8);
          }

          *(a3 + 72) = v482;
          *(a3 + 52) += 2;
        }

        v484 = *(a3 + 80);
        if (v484 > 8)
        {
        }

        v485 = 1 << v484;
        if ((v485 & 0x9A) != 0)
        {
          v486 = *(a3 + 144);
          if (v486)
          {
            *(a3 + 144) = v486 - 1;
            v487 = *(a3 + 152) + 4 * *(a3 + 88);
          }

          else
          {
            v487 = *(a3 + 152) + 2 * *(a3 + 88);
          }

          *(a3 + 152) = v487;
          v490 = *(a3 + 132);
          a5.i32[0] = vadd_s32(v490, 0x200000002).u32[0];
          *a4.i8 = veor_s8(v490, 0x100000001);
          a5.i32[1] = a4.i32[1];
          *(a3 + 132) = a5.i64[0];
        }

        else
        {
          if ((v485 & 0x60) == 0)
          {
          }

          v488 = *(a3 + 144);
          if (v488)
          {
            *(a3 + 144) = v488 - 1;
            v489 = *(a3 + 152) + 4 * *(a3 + 88);
          }

          else
          {
            v489 = *(a3 + 152) + 2 * *(a3 + 88);
          }

          *(a3 + 152) = v489;
          *(a3 + 132) += 2;
        }

        v491 = v763;
        if (v463 != 2)
        {
          v491 = 0;
        }

        v10 += 404 * v491;
        if (v463 == 2)
        {
          v463 = v15;
        }

        else
        {
          v463 -= 2;
        }

        v464 += 2;
        if (!v464)
        {
          return result;
        }
      }
    }

    if (v8 != 2)
    {
      if (!v13)
      {
        return result;
      }

      v193 = 2 * v14;
      v194 = -2 * v12;
      while (1)
      {
        if (*a3 > 8u)
        {
        }

        v197 = 1 << *a3;
        if ((v197 & 0x9A) != 0)
        {
          v198 = *(a3 + 64);
          if (v198)
          {
            *(a3 + 64) = v198 - 1;
            v199 = *(a3 + 72) + 4 * *(a3 + 8);
          }

          else
          {
            v199 = *(a3 + 72) + 2 * *(a3 + 8);
          }

          *(a3 + 72) = v199;
          v202 = *(a3 + 52);
          v196.i32[0] = vadd_s32(v202, 0x200000002).u32[0];
          *v195.i8 = veor_s8(v202, 0x100000001);
          v196.i32[1] = v195.i32[1];
          *(a3 + 52) = v196.i64[0];
        }

        else
        {
          if ((v197 & 0x60) == 0)
          {
          }

          v200 = *(a3 + 64);
          if (v200)
          {
            *(a3 + 64) = v200 - 1;
            v201 = *(a3 + 72) + 4 * *(a3 + 8);
          }

          else
          {
            v201 = *(a3 + 72) + 2 * *(a3 + 8);
          }

          *(a3 + 72) = v201;
          *(a3 + 52) += 2;
        }

        v203 = *(a3 + 80);
        if (v203 > 8)
        {
        }

        v204 = 1 << v203;
        if ((v204 & 0x9A) != 0)
        {
          v205 = *(a3 + 144);
          if (v205)
          {
            *(a3 + 144) = v205 - 1;
            v206 = *(a3 + 152) + 4 * *(a3 + 88);
          }

          else
          {
            v206 = *(a3 + 152) + 2 * *(a3 + 88);
          }

          *(a3 + 152) = v206;
          v209 = *(a3 + 132);
          v196.i32[0] = vadd_s32(v209, 0x200000002).u32[0];
          *v195.i8 = veor_s8(v209, 0x100000001);
          v196.i32[1] = v195.i32[1];
          *(a3 + 132) = v196.i64[0];
        }

        else
        {
          if ((v204 & 0x60) == 0)
          {
          }

          v207 = *(a3 + 144);
          if (v207)
          {
            *(a3 + 144) = v207 - 1;
            v208 = *(a3 + 152) + 4 * *(a3 + 88);
          }

          else
          {
            v208 = *(a3 + 152) + 2 * *(a3 + 88);
          }

          *(a3 + 152) = v208;
          *(a3 + 132) += 2;
        }

        if (*a3 > 8u)
        {
        }

        v210 = 1 << *a3;
        if ((v210 & 0xFA) != 0)
        {
          v211 = *(a3 + 32);
          if (v211)
          {
            *(a3 + 32) = v211 - 1;
            v212 = *(a3 + 40) + 2 * *(a3 + 8);
          }

          else
          {
            v212 = *(a3 + 40) + 4 * *(a3 + 8);
          }

          *(a3 + 40) = v212;
          v214 = *(a3 + 20) + 2;
        }

        else
        {
          if ((v210 & 0x101) != 0)
          {
            *(a3 + 40) += 2 * *(a3 + 8);
            v213 = *(a3 + 20);
            a5.i32[0] = vadd_s32(v213, 0x100000001).u32[0];
            *a4.i8 = veor_s8(v213, 0x100000001);
            a5.i32[1] = a4.i32[1];
            *(a3 + 20) = a5.i64[0];
            goto LABEL_277;
          }

          *(a3 + 40) += 2 * *(a3 + 8);
          v214 = *(a3 + 20) + 1;
        }

        *(a3 + 20) = v214;
LABEL_277:
        v215 = *(a3 + 80);
        if (v215 > 8)
        {
        }

        v216 = 1 << v215;
        if ((v216 & 0xFA) != 0)
        {
          v217 = *(a3 + 112);
          if (v217)
          {
            *(a3 + 112) = v217 - 1;
            v218 = *(a3 + 120) + 2 * *(a3 + 88);
          }

          else
          {
            v218 = *(a3 + 120) + 4 * *(a3 + 88);
          }

          *(a3 + 120) = v218;
          v220 = *(a3 + 100) + 2;
          goto LABEL_285;
        }

        if ((v216 & 0x101) == 0)
        {
          *(a3 + 120) += 2 * *(a3 + 88);
          v220 = *(a3 + 100) + 1;
LABEL_285:
          *(a3 + 100) = v220;
          goto LABEL_286;
        }

        *(a3 + 120) += 2 * *(a3 + 88);
        v219 = *(a3 + 100);
        a5.i32[0] = vadd_s32(v219, 0x100000001).u32[0];
        *a4.i8 = veor_s8(v219, 0x100000001);
        a5.i32[1] = a4.i32[1];
        *(a3 + 100) = a5.i64[0];
LABEL_286:
        v221 = v763;
        if (v193 != 2)
        {
          v221 = 0;
        }

        v10 += 404 * v221;
        if (v193 == 2)
        {
          v193 = v15;
        }

        else
        {
          v193 -= 2;
        }

        v194 += 2;
        if (!v194)
        {
          return result;
        }
      }
    }

    goto LABEL_453;
  }

  if (v8 <= 5)
  {
    if (v8 == 4)
    {
      if (!v13)
      {
        return result;
      }

      v222 = 2 * v14;
      v223 = -2 * v12;
      while (1)
      {
        if (*a3 > 8u)
        {
        }

        v226 = 1 << *a3;
        if ((v226 & 0x9A) != 0)
        {
          v227 = *(a3 + 64);
          if (v227)
          {
            *(a3 + 64) = v227 - 1;
            v228 = *(a3 + 72) + 4 * *(a3 + 8);
          }

          else
          {
            v228 = *(a3 + 72) + 2 * *(a3 + 8);
          }

          *(a3 + 72) = v228;
          v231 = *(a3 + 52);
          v225.i32[0] = vadd_s32(v231, 0x200000002).u32[0];
          *v224.i8 = veor_s8(v231, 0x100000001);
          v225.i32[1] = v224.i32[1];
          *(a3 + 52) = v225.i64[0];
        }

        else
        {
          if ((v226 & 0x60) == 0)
          {
          }

          v229 = *(a3 + 64);
          if (v229)
          {
            *(a3 + 64) = v229 - 1;
            v230 = *(a3 + 72) + 4 * *(a3 + 8);
          }

          else
          {
            v230 = *(a3 + 72) + 2 * *(a3 + 8);
          }

          *(a3 + 72) = v230;
          *(a3 + 52) += 2;
        }

        v232 = *(a3 + 80);
        if (v232 > 8)
        {
        }

        v233 = 1 << v232;
        if ((v233 & 0x9A) != 0)
        {
          v234 = *(a3 + 144);
          if (v234)
          {
            *(a3 + 144) = v234 - 1;
            v235 = *(a3 + 152) + 4 * *(a3 + 88);
          }

          else
          {
            v235 = *(a3 + 152) + 2 * *(a3 + 88);
          }

          *(a3 + 152) = v235;
          v238 = *(a3 + 132);
          v225.i32[0] = vadd_s32(v238, 0x200000002).u32[0];
          *v224.i8 = veor_s8(v238, 0x100000001);
          v225.i32[1] = v224.i32[1];
          *(a3 + 132) = v225.i64[0];
        }

        else
        {
          if ((v233 & 0x60) == 0)
          {
          }

          v236 = *(a3 + 144);
          if (v236)
          {
            *(a3 + 144) = v236 - 1;
            v237 = *(a3 + 152) + 4 * *(a3 + 88);
          }

          else
          {
            v237 = *(a3 + 152) + 2 * *(a3 + 88);
          }

          *(a3 + 152) = v237;
          *(a3 + 132) += 2;
        }

        if (*a3 > 8u)
        {
        }

        v239 = 1 << *a3;
        if ((v239 & 0xFA) != 0)
        {
          v240 = *(a3 + 32);
          if (v240)
          {
            *(a3 + 32) = v240 - 1;
            v241 = *(a3 + 40) + 2 * *(a3 + 8);
          }

          else
          {
            v241 = *(a3 + 40) + 4 * *(a3 + 8);
          }

          *(a3 + 40) = v241;
          v243 = *(a3 + 20) + 2;
        }

        else
        {
          if ((v239 & 0x101) != 0)
          {
            *(a3 + 40) += 2 * *(a3 + 8);
            v242 = *(a3 + 20);
            a5.i32[0] = vadd_s32(v242, 0x100000001).u32[0];
            *a4.i8 = veor_s8(v242, 0x100000001);
            a5.i32[1] = a4.i32[1];
            *(a3 + 20) = a5.i64[0];
            goto LABEL_329;
          }

          *(a3 + 40) += 2 * *(a3 + 8);
          v243 = *(a3 + 20) + 1;
        }

        *(a3 + 20) = v243;
LABEL_329:
        v244 = *(a3 + 80);
        if (v244 > 8)
        {
        }

        v245 = 1 << v244;
        if ((v245 & 0xFA) != 0)
        {
          v246 = *(a3 + 112);
          if (v246)
          {
            *(a3 + 112) = v246 - 1;
            v247 = *(a3 + 120) + 2 * *(a3 + 88);
          }

          else
          {
            v247 = *(a3 + 120) + 4 * *(a3 + 88);
          }

          *(a3 + 120) = v247;
          v249 = *(a3 + 100) + 2;
          goto LABEL_337;
        }

        if ((v245 & 0x101) == 0)
        {
          *(a3 + 120) += 2 * *(a3 + 88);
          v249 = *(a3 + 100) + 1;
LABEL_337:
          *(a3 + 100) = v249;
          goto LABEL_338;
        }

        *(a3 + 120) += 2 * *(a3 + 88);
        v248 = *(a3 + 100);
        a5.i32[0] = vadd_s32(v248, 0x100000001).u32[0];
        *a4.i8 = veor_s8(v248, 0x100000001);
        a5.i32[1] = a4.i32[1];
        *(a3 + 100) = a5.i64[0];
LABEL_338:
        v250 = v763;
        if (v222 != 2)
        {
          v250 = 0;
        }

        v10 += 404 * v250;
        if (v222 == 2)
        {
          v222 = v15;
        }

        else
        {
          v222 -= 2;
        }

        v223 += 2;
        if (!v223)
        {
          return result;
        }
      }
    }

    if (!v13)
    {
      return result;
    }

    v523 = 2 * v14;
    v524 = -2 * v12;
    while (1)
    {
      if (*a3 > 8u)
      {
      }

      v525 = 1 << *a3;
      if ((v525 & 0x9A) != 0)
      {
        v526 = *(a3 + 64);
        if (v526)
        {
          *(a3 + 64) = v526 - 1;
          v527 = *(a3 + 72) + 4 * *(a3 + 8);
        }

        else
        {
          v527 = *(a3 + 72) + 2 * *(a3 + 8);
        }

        *(a3 + 72) = v527;
        v530 = *(a3 + 52);
        LODWORD(v531) = vadd_s32(v530, 0x200000002).u32[0];
        HIDWORD(v531) = veor_s8(*&v530, 0x100000001).i32[1];
        *(a3 + 52) = v531;
      }

      else
      {
        if ((v525 & 0x60) == 0)
        {
        }

        v528 = *(a3 + 64);
        if (v528)
        {
          *(a3 + 64) = v528 - 1;
          v529 = *(a3 + 72) + 4 * *(a3 + 8);
        }

        else
        {
          v529 = *(a3 + 72) + 2 * *(a3 + 8);
        }

        *(a3 + 72) = v529;
        *(a3 + 52) += 2;
      }

      v532 = *(a3 + 80);
      if (v532 > 8)
      {
      }

      v533 = 1 << v532;
      if ((v533 & 0x9A) != 0)
      {
        v534 = *(a3 + 144);
        if (v534)
        {
          *(a3 + 144) = v534 - 1;
          v535 = *(a3 + 152) + 4 * *(a3 + 88);
        }

        else
        {
          v535 = *(a3 + 152) + 2 * *(a3 + 88);
        }

        *(a3 + 152) = v535;
        v538 = *(a3 + 132);
        LODWORD(v539) = vadd_s32(v538, 0x200000002).u32[0];
        HIDWORD(v539) = veor_s8(*&v538, 0x100000001).i32[1];
        *(a3 + 132) = v539;
      }

      else
      {
        if ((v533 & 0x60) == 0)
        {
        }

        v536 = *(a3 + 144);
        if (v536)
        {
          *(a3 + 144) = v536 - 1;
          v537 = *(a3 + 152) + 4 * *(a3 + 88);
        }

        else
        {
          v537 = *(a3 + 152) + 2 * *(a3 + 88);
        }

        *(a3 + 152) = v537;
        *(a3 + 132) += 2;
      }

      if (*a3 > 8u)
      {
      }

      v540 = 1 << *a3;
      if ((v540 & 0xFA) != 0)
      {
        v541 = *(a3 + 32);
        if (v541)
        {
          *(a3 + 32) = v541 - 1;
          v542 = *(a3 + 40) + 2 * *(a3 + 8);
        }

        else
        {
          v542 = *(a3 + 40) + 4 * *(a3 + 8);
        }

        *(a3 + 40) = v542;
        v545 = *(a3 + 20) + 2;
      }

      else
      {
        if ((v540 & 0x101) != 0)
        {
          *(a3 + 40) += 2 * *(a3 + 8);
          v543 = *(a3 + 20);
          LODWORD(v544) = vadd_s32(v543, 0x100000001).u32[0];
          HIDWORD(v544) = veor_s8(*&v543, 0x100000001).i32[1];
          *(a3 + 20) = v544;
          goto LABEL_723;
        }

        *(a3 + 40) += 2 * *(a3 + 8);
        v545 = *(a3 + 20) + 1;
      }

      *(a3 + 20) = v545;
LABEL_723:
      v546 = *(a3 + 80);
      if (v546 > 8)
      {
      }

      v547 = 1 << v546;
      if ((v547 & 0xFA) != 0)
      {
        v548 = *(a3 + 112);
        if (v548)
        {
          *(a3 + 112) = v548 - 1;
          v549 = *(a3 + 120) + 2 * *(a3 + 88);
        }

        else
        {
          v549 = *(a3 + 120) + 4 * *(a3 + 88);
        }

        *(a3 + 120) = v549;
        v552 = *(a3 + 100) + 2;
        goto LABEL_731;
      }

      if ((v547 & 0x101) == 0)
      {
        *(a3 + 120) += 2 * *(a3 + 88);
        v552 = *(a3 + 100) + 1;
LABEL_731:
        *(a3 + 100) = v552;
        goto LABEL_732;
      }

      *(a3 + 120) += 2 * *(a3 + 88);
      v550 = *(a3 + 100);
      LODWORD(v551) = vadd_s32(v550, 0x100000001).u32[0];
      HIDWORD(v551) = veor_s8(*&v550, 0x100000001).i32[1];
      *(a3 + 100) = v551;
LABEL_732:
      v553 = v763;
      if (v523 != 2)
      {
        v553 = 0;
      }

      v10 += 404 * v553;
      if (v523 == 2)
      {
        v523 = v15;
      }

      else
      {
        v523 -= 2;
      }

      v524 += 2;
      if (!v524)
      {
        return result;
      }
    }
  }

  if (v8 == 8)
  {
    if (!v13)
    {
      return result;
    }

    v396 = vdupq_n_s16(*(a2 + 312));
    v397 = *(a2 + 24);
    v758 = *(a3 + 16);
    if (v758)
    {
      v398 = a3 + 16;
    }

    else
    {
      v398 = a3 + 96;
    }

    v754 = *(a2 + 16);
    v750 = v398;
    v399.i64[0] = 0x2000200020002;
    v399.i64[1] = 0x2000200020002;
    v400.i64[0] = 0x4000400040004;
    v400.i64[1] = 0x4000400040004;
    v401.i64[0] = 0x7000700070007;
    v401.i64[1] = 0x7000700070007;
    result = 12;
    v402.i64[0] = 0xF000F000F000FLL;
    v402.i64[1] = 0xF000F000F000FLL;
    v403.i64[0] = 0x5000500050005;
    v403.i64[1] = 0x5000500050005;
    v404.i64[0] = 0x1000100010001;
    v404.i64[1] = 0x1000100010001;
    v405 = v15;
    while (1)
    {
      v406 = v758;
      if (v754 < 1)
      {
        goto LABEL_560;
      }

      v407 = 0;
      v408 = *(v750 + 8);
      v409 = vdupq_n_s16(-(v408 & 1));
      v410 = v10 - 404;
      v411 = *(a3 + 40);
      v406 = v758;
      v412 = v754;
LABEL_531:
      v413 = *(a3 + 120);
      v414 = *(a3 + 96);
      if (!v406)
      {
        v406 = *(a3 + 96);
        v411 = *(a3 + 120);
      }

      if (v406 > 7)
      {
        break;
      }

      v415 = v412;
      if (v406 == v412)
      {
        goto LABEL_536;
      }

      if (v406 < 1)
      {
      }

      v416 = 0;
      v417 = 2 * v406;
      do
      {
        v765.i16[v416 / 2] = *v411;
        v773.i16[v416 / 2] = v411[1];
        v772.i16[v416 / 2] = v411[2];
        v771.i16[v416 / 2] = v411[3];
        v411 += 4;
        v416 += 2;
      }

      while (v417 != v416);
      if (v412 >= 8)
      {
        v418 = 8;
      }

      else
      {
        v418 = v412;
      }

      if (v406 < v418)
      {
        v419 = &v771.i16[v417 / 2];
        v420 = &v772.i16[v417 / 2];
        v421 = &v773.i16[v417 / 2];
        v422 = &v765.i16[v417 / 2];
        v423 = v406;
        do
        {
          *v422++ = *v413;
          *v421++ = v413[1];
          *v420++ = v413[2];
          *v419++ = v413[3];
          v413 += 4;
          ++v423;
        }

        while (v418 > v423);
      }

      v776.val[0] = v765;
      v776.val[1] = v773;
      v776.val[3] = v771;
      v776.val[2] = v772;
      v406 += v414 - v418;
      v411 = v413;
LABEL_547:
      v424 = 0;
      v425 = vceqzq_s16(vandq_s8(v776.val[0], v400));
      v426 = vandq_s8(v776.val[1], v401);
      v427 = vshrq_n_s16(v776.val[0], 3uLL);
      v428 = vaddq_s16(v776.val[3], vbslq_s8(v409, vnegq_s16(v427), v427));
      v429 = vshrq_n_s16(v776.val[1], 3uLL);
      v430 = vcgtq_u16(v426, v403);
      v431 = vandq_s8(vaddq_s16(vandq_s8(v776.val[2], v402), vbicq_s8(v404, v776.val[0])), vorrq_s8(v430, vceqzq_s16(vandq_s8(v776.val[0], v399))));
      v432 = vaddq_s16(vaddq_s16(v426, v430), vandq_s8(veorq_s8(vcltzq_s16(v776.val[0]), vcgezq_s16(v429)), v401));
      v433 = vshrq_n_u16(vshlq_u16(vqshlq_n_u16(vabsq_s16(v429), 4uLL), v430), 1uLL);
      v434 = vqshlq_s16(vqdmulhq_s16(v433, vmulq_s16(vshrq_n_u16(v431, 1uLL), vshrq_n_u16(v776.val[2], 4uLL))), v396);
      v435 = vqdmulhq_s16(v434, v433);
      v436 = vqdmulhq_s16(v434, vshrq_n_u16(vqshlq_n_u16(vabsq_s16(v427), 4uLL), 1uLL));
      v437 = vceqzq_s16(v431);
      v765 = v432;
      v766 = vornq_s8(vandq_s8(v431, v425), v425);
      v767 = vbslq_s8(v437, v428, v435);
      v768 = vbslq_s8(v437, v776.val[3], v436);
      v773 = v428;
      v438 = &v767;
      do
      {
        if (v407)
        {
          v439 = 0;
        }

        else
        {
          v407 = v397;
          v439 = 404;
        }

        v410 += v439;
        v440 = v438[-2].u16[0];
        v441 = v438[-1].u16[0];
        v442 = v438->u16[0];
        v443 = v438[1].u16[0];
        ++*(v410 + 384);
        v444 = v773.u16[v424];
        *(v410 + 388) += v444;
        *(v410 + 396) += v444 * v444;
        if (v441)
        {
          if (v441 != 0xFFFF)
          {
            v445 = (v410 + 24 * v440);
            v446 = v445[1];
            *v445 += v441;
            v445[1] = v446 + v442;
            v445[2] += v443;
          }
        }

        else
        {
          v447 = (v410 + 12 * v408);
          v448.i32[0] = 1;
          v448.i32[1] = v442;
          v447[42] = vadd_s32(v447[42], v448);
          v447[43].i32[0] += v443;
        }

        ++v764;
        if (v412 - 1 == v424)
        {
          v15 = v760;
          goto LABEL_560;
        }

        v438 = (v438 + 2);
        --v407;
        ++v424;
      }

      while (v424 != 8);
      v412 -= 8;
      v15 = v760;
      if (v412 + 1 > 1)
      {
        goto LABEL_531;
      }

LABEL_560:
      if (v406)
      {
      }

      if (*a3 > 8u)
      {
      }

      v449 = 1 << *a3;
      if ((v449 & 0xFA) != 0)
      {
        v450 = *(a3 + 32);
        if (v450)
        {
          *(a3 + 32) = v450 - 1;
          v451 = *(a3 + 40) + 2 * *(a3 + 8);
        }

        else
        {
          v451 = *(a3 + 40) + 4 * *(a3 + 8);
        }

        *(a3 + 40) = v451;
        v454 = *(a3 + 20) + 2;
      }

      else
      {
        if ((v449 & 0x101) != 0)
        {
          *(a3 + 40) += 2 * *(a3 + 8);
          v452 = *(a3 + 20);
          LODWORD(v453) = vadd_s32(v452, 0x100000001).u32[0];
          HIDWORD(v453) = veor_s8(*&v452, 0x100000001).i32[1];
          *(a3 + 20) = v453;
          goto LABEL_570;
        }

        *(a3 + 40) += 2 * *(a3 + 8);
        v454 = *(a3 + 20) + 1;
      }

      *(a3 + 20) = v454;
LABEL_570:
      v455 = *(a3 + 80);
      if (v455 > 8)
      {
      }

      v456 = 1 << v455;
      if ((v456 & 0xFA) != 0)
      {
        v457 = *(a3 + 112);
        if (v457)
        {
          *(a3 + 112) = v457 - 1;
          v458 = *(a3 + 120) + 2 * *(a3 + 88);
        }

        else
        {
          v458 = *(a3 + 120) + 4 * *(a3 + 88);
        }

        *(a3 + 120) = v458;
        v461 = *(a3 + 100) + 2;
        goto LABEL_578;
      }

      if ((v456 & 0x101) == 0)
      {
        *(a3 + 120) += 2 * *(a3 + 88);
        v461 = *(a3 + 100) + 1;
LABEL_578:
        *(a3 + 100) = v461;
        goto LABEL_579;
      }

      *(a3 + 120) += 2 * *(a3 + 88);
      v459 = *(a3 + 100);
      LODWORD(v460) = vadd_s32(v459, 0x100000001).u32[0];
      HIDWORD(v460) = veor_s8(*&v459, 0x100000001).i32[1];
      *(a3 + 100) = v460;
LABEL_579:
      v462 = v763;
      if (v405 != 1)
      {
        v462 = 0;
      }

      v10 += 404 * v462;
      if (v405 == 1)
      {
        v405 = v15;
      }

      else
      {
        --v405;
      }

      if (!--v13)
      {
        return result;
      }
    }

    v415 = 8;
LABEL_536:
    v406 -= v415;
    v776 = vld4q_s16(v411);
    v411 += 32;
    goto LABEL_547;
  }

  if (v8 != 7)
  {
    if (!v13)
    {
      return result;
    }

    v492 = 2 * v14;
    v493 = -2 * v12;
    while (1)
    {
      if (*a3 > 8u)
      {
      }

      v494 = 1 << *a3;
      if ((v494 & 0x9A) != 0)
      {
        v495 = *(a3 + 64);
        if (v495)
        {
          *(a3 + 64) = v495 - 1;
          v496 = *(a3 + 72) + 4 * *(a3 + 8);
        }

        else
        {
          v496 = *(a3 + 72) + 2 * *(a3 + 8);
        }

        *(a3 + 72) = v496;
        v499 = *(a3 + 52);
        LODWORD(v500) = vadd_s32(v499, 0x200000002).u32[0];
        HIDWORD(v500) = veor_s8(*&v499, 0x100000001).i32[1];
        *(a3 + 52) = v500;
      }

      else
      {
        if ((v494 & 0x60) == 0)
        {
        }

        v497 = *(a3 + 64);
        if (v497)
        {
          *(a3 + 64) = v497 - 1;
          v498 = *(a3 + 72) + 4 * *(a3 + 8);
        }

        else
        {
          v498 = *(a3 + 72) + 2 * *(a3 + 8);
        }

        *(a3 + 72) = v498;
        *(a3 + 52) += 2;
      }

      v501 = *(a3 + 80);
      if (v501 > 8)
      {
      }

      v502 = 1 << v501;
      if ((v502 & 0x9A) != 0)
      {
        v503 = *(a3 + 144);
        if (v503)
        {
          *(a3 + 144) = v503 - 1;
          v504 = *(a3 + 152) + 4 * *(a3 + 88);
        }

        else
        {
          v504 = *(a3 + 152) + 2 * *(a3 + 88);
        }

        *(a3 + 152) = v504;
        v507 = *(a3 + 132);
        LODWORD(v508) = vadd_s32(v507, 0x200000002).u32[0];
        HIDWORD(v508) = veor_s8(*&v507, 0x100000001).i32[1];
        *(a3 + 132) = v508;
      }

      else
      {
        if ((v502 & 0x60) == 0)
        {
        }

        v505 = *(a3 + 144);
        if (v505)
        {
          *(a3 + 144) = v505 - 1;
          v506 = *(a3 + 152) + 4 * *(a3 + 88);
        }

        else
        {
          v506 = *(a3 + 152) + 2 * *(a3 + 88);
        }

        *(a3 + 152) = v506;
        *(a3 + 132) += 2;
      }

      if (*a3 > 8u)
      {
      }

      v509 = 1 << *a3;
      if ((v509 & 0xFA) != 0)
      {
        v510 = *(a3 + 32);
        if (v510)
        {
          *(a3 + 32) = v510 - 1;
          v511 = *(a3 + 40) + 2 * *(a3 + 8);
        }

        else
        {
          v511 = *(a3 + 40) + 4 * *(a3 + 8);
        }

        *(a3 + 40) = v511;
        v514 = *(a3 + 20) + 2;
      }

      else
      {
        if ((v509 & 0x101) != 0)
        {
          *(a3 + 40) += 2 * *(a3 + 8);
          v512 = *(a3 + 20);
          LODWORD(v513) = vadd_s32(v512, 0x100000001).u32[0];
          HIDWORD(v513) = veor_s8(*&v512, 0x100000001).i32[1];
          *(a3 + 20) = v513;
          goto LABEL_672;
        }

        *(a3 + 40) += 2 * *(a3 + 8);
        v514 = *(a3 + 20) + 1;
      }

      *(a3 + 20) = v514;
LABEL_672:
      v515 = *(a3 + 80);
      if (v515 > 8)
      {
      }

      v516 = 1 << v515;
      if ((v516 & 0xFA) != 0)
      {
        v517 = *(a3 + 112);
        if (v517)
        {
          *(a3 + 112) = v517 - 1;
          v518 = *(a3 + 120) + 2 * *(a3 + 88);
        }

        else
        {
          v518 = *(a3 + 120) + 4 * *(a3 + 88);
        }

        *(a3 + 120) = v518;
        v521 = *(a3 + 100) + 2;
        goto LABEL_680;
      }

      if ((v516 & 0x101) == 0)
      {
        *(a3 + 120) += 2 * *(a3 + 88);
        v521 = *(a3 + 100) + 1;
LABEL_680:
        *(a3 + 100) = v521;
        goto LABEL_681;
      }

      *(a3 + 120) += 2 * *(a3 + 88);
      v519 = *(a3 + 100);
      LODWORD(v520) = vadd_s32(v519, 0x100000001).u32[0];
      HIDWORD(v520) = veor_s8(*&v519, 0x100000001).i32[1];
      *(a3 + 100) = v520;
LABEL_681:
      v522 = v763;
      if (v492 != 2)
      {
        v522 = 0;
      }

      v10 += 404 * v522;
      if (v492 == 2)
      {
        v492 = v15;
      }

      else
      {
        v492 -= 2;
      }

      v493 += 2;
      if (!v493)
      {
        return result;
      }
    }
  }

  if (v13)
  {
    v16 = 2 * v14;
    for (i = -2 * v12; i; i += 2)
    {
      if (*a3 > 8u)
      {
      }

      v20 = 1 << *a3;
      if ((v20 & 0x9A) != 0)
      {
        v21 = *(a3 + 64);
        if (v21)
        {
          *(a3 + 64) = v21 - 1;
          v22 = *(a3 + 72) + 4 * *(a3 + 8);
        }

        else
        {
          v22 = *(a3 + 72) + 2 * *(a3 + 8);
        }

        *(a3 + 72) = v22;
        v25 = *(a3 + 52);
        v19.i32[0] = vadd_s32(v25, 0x200000002).u32[0];
        *v18.i8 = veor_s8(v25, 0x100000001);
        v19.i32[1] = v18.i32[1];
        *(a3 + 52) = v19.i64[0];
      }

      else
      {
        if ((v20 & 0x60) == 0)
        {
        }

        v23 = *(a3 + 64);
        if (v23)
        {
          *(a3 + 64) = v23 - 1;
          v24 = *(a3 + 72) + 4 * *(a3 + 8);
        }

        else
        {
          v24 = *(a3 + 72) + 2 * *(a3 + 8);
        }

        *(a3 + 72) = v24;
        *(a3 + 52) += 2;
      }

      v26 = *(a3 + 80);
      if (v26 > 8)
      {
      }

      v27 = 1 << v26;
      if ((v27 & 0x9A) != 0)
      {
        v28 = *(a3 + 144);
        if (v28)
        {
          *(a3 + 144) = v28 - 1;
          v29 = *(a3 + 152) + 4 * *(a3 + 88);
        }

        else
        {
          v29 = *(a3 + 152) + 2 * *(a3 + 88);
        }

        *(a3 + 152) = v29;
        v32 = *(a3 + 132);
        v19.i32[0] = vadd_s32(v32, 0x200000002).u32[0];
        *v18.i8 = veor_s8(v32, 0x100000001);
        v19.i32[1] = v18.i32[1];
        *(a3 + 132) = v19.i64[0];
      }

      else
      {
        if ((v27 & 0x60) == 0)
        {
        }

        v30 = *(a3 + 144);
        if (v30)
        {
          *(a3 + 144) = v30 - 1;
          v31 = *(a3 + 152) + 4 * *(a3 + 88);
        }

        else
        {
          v31 = *(a3 + 152) + 2 * *(a3 + 88);
        }

        *(a3 + 152) = v31;
        *(a3 + 132) += 2;
      }

      if (*a3 > 8u)
      {
      }

      v33 = 1 << *a3;
      if ((v33 & 0xFA) != 0)
      {
        v34 = *(a3 + 32);
        if (v34)
        {
          *(a3 + 32) = v34 - 1;
          v35 = *(a3 + 40) + 2 * *(a3 + 8);
        }

        else
        {
          v35 = *(a3 + 40) + 4 * *(a3 + 8);
        }

        *(a3 + 40) = v35;
        v37 = *(a3 + 20) + 2;
      }

      else
      {
        if ((v33 & 0x101) != 0)
        {
          *(a3 + 40) += 2 * *(a3 + 8);
          v36 = *(a3 + 20);
          a5.i32[0] = vadd_s32(v36, 0x100000001).u32[0];
          *a4.i8 = veor_s8(v36, 0x100000001);
          a5.i32[1] = a4.i32[1];
          *(a3 + 20) = a5.i64[0];
          goto LABEL_43;
        }

        *(a3 + 40) += 2 * *(a3 + 8);
        v37 = *(a3 + 20) + 1;
      }

      *(a3 + 20) = v37;
LABEL_43:
      v38 = *(a3 + 80);
      if (v38 > 8)
      {
      }

      v39 = 1 << v38;
      if ((v39 & 0xFA) != 0)
      {
        v40 = *(a3 + 112);
        if (v40)
        {
          *(a3 + 112) = v40 - 1;
          v41 = *(a3 + 120) + 2 * *(a3 + 88);
        }

        else
        {
          v41 = *(a3 + 120) + 4 * *(a3 + 88);
        }

        *(a3 + 120) = v41;
        v43 = *(a3 + 100) + 2;
        goto LABEL_51;
      }

      if ((v39 & 0x101) == 0)
      {
        *(a3 + 120) += 2 * *(a3 + 88);
        v43 = *(a3 + 100) + 1;
LABEL_51:
        *(a3 + 100) = v43;
        goto LABEL_52;
      }

      *(a3 + 120) += 2 * *(a3 + 88);
      v42 = *(a3 + 100);
      a5.i32[0] = vadd_s32(v42, 0x100000001).u32[0];
      *a4.i8 = veor_s8(v42, 0x100000001);
      a5.i32[1] = a4.i32[1];
      *(a3 + 100) = a5.i64[0];
LABEL_52:
      v44 = v763;
      if (v16 != 2)
      {
        v44 = 0;
      }

      v10 += 404 * v44;
      if (v16 == 2)
      {
        v16 = v15;
      }

      else
      {
        v16 -= 2;
      }
    }
  }

  return result;
}