void sub_261C(id a1)
{
  qword_5A548 = [NTKFontLoader fontDescriptorForSectName:@"__MStencil" uniqueCacheIdentifier:@"Warlock" fromMachO:&dword_0];

  _objc_release_x1();
}

void sub_2708(id a1)
{
  qword_5A558 = [NTKFontLoader fontDescriptorForSectName:@"__MSolid" uniqueCacheIdentifier:@"Warlock" fromMachO:&dword_0];

  _objc_release_x1();
}

uint64_t __NTKPatchworkMagic_Sustain_Init(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = *([v10 resource] + 54);
  v15 = *a7;
  v14 = a7[1];
  v16 = *a7 << 32;
  v17 = [NSMutableData dataWithLength:(v16 * v14) >> 31];
  v18 = [v17 mutableBytes];
  v19 = v18;
  if (v14 >= 1)
  {
    v20 = 0;
    v21 = v18;
    do
    {
      if (v15 >= 1)
      {
        v22 = 0;
        if (v14 - 1 == v20)
        {
          v23 = -32512;
        }

        else
        {
          v23 = 0;
        }

        if (!v20)
        {
          v23 = 32512;
        }

        v24 = v15;
        do
        {
          if (--v24)
          {
            v25 = 0;
          }

          else
          {
            v25 = 129;
          }

          if (!v22)
          {
            v25 = 127;
          }

          *v21++ = v25 | v23;
          --v22;
        }

        while (v24);
      }

      ++v20;
    }

    while (v20 != v14);
  }

  memset(v27, 0, 24);
  v27[3] = v16 >> 32;
  v27[4] = v14;
  v27[5] = 1;
  [v13 replaceRegion:v27 mipmapLevel:0 withBytes:v19 bytesPerRow:v16 >> 31];

  return 1;
}

id __NTKPatchworkMagic_Sustain_NewComputePipelineState(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a2;
  v14 = objc_opt_new();
  [v14 setName:v12];
  v15 = [v13 newFunctionWithDescriptor:v14 error:a6];

  if (v15)
  {
    v16 = objc_opt_new();
    [v16 setComputeFunction:v15];
    [v16 setLabel:v12];
    if (v10)
    {
      v20 = v10;
      v17 = [NSArray arrayWithObjects:&v20 count:1];
      [v16 setBinaryArchives:v17];
    }

    v18 = [v11 newComputePipelineStateWithDescriptor:v16 options:0 reflection:0 error:a6];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void NTKPatchworkMagic_Sustain(void *a1, uint64_t a2, __n128 a3, float a4, float32x2_t a5, double a6, float a7)
{
  v10 = v85;
  v11 = a1;
  v12 = [v11 resource];
  v74 = v11;
  v13 = [v11 state];
  v14 = v13;
  v15 = v13->i32[0] + 1;
  v13->i32[0] = v15;
  v16 = v15 % 3;
  v17.i32[1] = HIDWORD(a6);
  v17.i32[0] = 953267991;
  if ((*&a6 / 30.0) >= 0.0001)
  {
    *v17.i32 = *&a6 / 30.0;
  }

  v76 = v17;
  v18 = *&v13[1] + *v17.i32;
  *&v13[1] = v18;
  v19 = v16;
  v20 = v12[v16 + 84];
  v89 = xmmword_40A10;
  v90 = unk_40A20;
  v91 = xmmword_40A30;
  v92 = unk_40A40;
  *&v85[16] = xmmword_409D0;
  v86 = unk_409E0;
  v87 = xmmword_409F0;
  v88 = unk_40A00;
  v84 = xmmword_409B0;
  *v85 = unk_409C0;
  v22 = __sincosf_stret(a7);
  v23 = a3.n128_u64[0];
  v24 = 0;
  *v25.i32 = (*&a6 * *&a6) * ((*&a6 * -2.0) + 3.0);
  v26 = v14 + 6;
  v27 = vdup_lane_s32(v25, 0);
  v28 = vdup_lane_s32(v76, 0);
  v77 = vrev64_s32(v22);
  v29 = a2 - 8;
  v30 = &xmmword_40A30;
  __asm
  {
    FMOV            V15.2S, #1.0
    FMOV            V14.2S, #-1.0
  }

  do
  {
    v37 = v14 + v24;
    if (v24)
    {
      *v21.i64 = v30[-3].f32[1] + v18 * v30[-3].f32[0];
      v38 = *v21.i64;
      v21.i32[0] = v30[-2].i32[0];
      *v21.f32 = vmla_n_f32(*v21.f32, v30[-1], v38);
      v39 = vmla_f32(_D14, 0x4000000040000000, vminnm_f32(vmaxnm_f32(vadd_f32(v30[1], vmla_f32(a5, *&_simd_sin_f4(v21), *v30)), 0), _D15));
      if (v24 >= 3)
      {
        v40.i32[1] = v39.i32[1];
        v40.f32[0] = -v39.f32[1];
        v39 = vmla_n_f32(vmul_f32(v22, v40), v77, v39.f32[0]);
      }

      v41 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, v39);
      v42 = v30[-4].f32[0];
      *(v29 + 8 * v24) = v39;
      v23 = a3.n128_u64[0];
    }

    else
    {
      v10[-1].i32[2] = a3.n128_i32[2];
      v41 = v23;
      if (v37[4] >= 1)
      {
        v41 = vmla_f32(v14[5], 0x3F0000003F000000, vsub_f32(v23, v14[5]));
      }

      v14[5] = v41;
      v42 = 38.5;
    }

    v43 = v37[4];
    v44 = v41;
    if (v43)
    {
      v44 = v26[v24];
    }

    v37[4] = v43 + 1;
    v45 = vmla_f32(v44, v27, vsub_f32(v41, v44));
    *v10[-1].i8 = v45;
    *v21.f32 = vmul_n_f32(vdiv_f32(vsub_f32(v45, v44), v28), v42);
    v21.i64[1] = vextq_s8(*v10, *v10, 8uLL).u64[0];
    *v10 = v21;
    v10 += 2;
    v26[v24++] = v45;
    v30 += 8;
  }

  while (v24 != 5);
  v46 = [v20 contents];
  v46[6] = v89;
  v46[7] = v90;
  v46[8] = v91;
  v46[9] = v92;
  v46[2] = *&v85[16];
  v46[3] = v86;
  v46[4] = v87;
  v46[5] = v88;
  *v46 = v84;
  v46[1] = *v85;

  v47 = &v12[v19];
  v48 = v47[90];
  v89 = xmmword_40BB0;
  v90 = unk_40BC0;
  v91 = xmmword_40BD0;
  v92 = unk_40BE0;
  *&v85[16] = xmmword_40B70;
  v86 = unk_40B80;
  v87 = xmmword_40B90;
  v88 = unk_40BA0;
  v84 = xmmword_40B50;
  *v85 = unk_40B60;
  *&v84 = v14[6];
  *(&v84 + 2) = a3.n128_f32[2] + a3.n128_f32[2];
  v49 = fmod(v18 * 0.37699111 + 0.0, 6.28318531);
  v80 = v49;
  v50 = fmod(v18 * 1.25663708 + 0.34799999, 6.28318531);
  v78 = v50;
  *&v51 = fmod(v18 * 0.942477834 + 0.370999992, 6.28318531);
  v52.i64[0] = __PAIR64__(LODWORD(v78), LODWORD(v80));
  v52.i64[1] = v51;
  v53 = _simd_sin_f4(v52);
  v54 = 0;
  v55 = vdupq_n_s32(0x3CF5C28Fu);
  v56 = vaddq_f32(vmulq_n_f32(vmlaq_f32(v55, v55, v53), *&a6), vdupq_n_s32(0x3DCCCCCDu));
  v56.i32[3] = 1.0;
  *v85 = v56;
  v57 = v14 + 7;
  v58 = &dword_40A88;
  do
  {
    v59 = *v57++;
    v60 = &v85[v54 - 16];
    *&v85[v54 + 16] = v59;
    v61 = fmod(*(v58 - 1) * 6.28318531 * v18 + 0.0, 6.28318531);
    v62 = *(v58 - 2);
    v63 = sinf(v61);
    LODWORD(v59) = *v58;
    v58 += 16;
    *v64.i32 = (*&v59 + (v62 * v63)) * *&a6;
    v65 = vdupq_lane_s32(v64, 0);
    v65.i32[3] = *(&v86 + v54 + 12);
    v60[3] = v65;
    v60[2].i32[2] = 0;
    v54 += 32;
  }

  while (v54 != 128);
  v66 = [v48 contents];
  v66[6] = v89;
  v66[7] = v90;
  v66[8] = v91;
  v66[9] = v92;
  v66[2] = *&v85[16];
  v66[3] = v86;
  v66[4] = v87;
  v66[5] = v88;
  *v66 = v84;
  v66[1] = *v85;

  LODWORD(v67) = v76.i32[0];
  *(&v67 + 1) = 1.0 / ((*v76.i32 * 0.38) + 1.0);
  v82 = v67;
  v68 = v47[75];
  *[v68 contents] = v82;
  LODWORD(v69) = v76.i32[0];
  *(&v69 + 1) = 1.0 / ((*v76.i32 * 0.75) + 1.0);
  v83 = v69;
  v70 = [v47[87] contents];

  *v70 = v83;
  *&v71 = 1.0 / (*v76.i32 * 6.9);
  *(&v71 + 1) = 1.0 / (*&v71 + 4.0);
  *[v47[81] contents] = v71;
  *[v47[72] contents] = (a4 * 0.5) + 0.25;
  v72 = v14[523].i32[0];
  if ((v72 & (1 << v19)) == 0)
  {
    v14[523].i32[0] = v72 | (1 << v19);
    v73 = v47[56];
    v84 = 0uLL;
    *v85 = 0;
    *&v85[8] = xmmword_40990;
    *&v85[24] = 1;
    [v73 replaceRegion:&v84 mipmapLevel:0 withBytes:&v14[11] bytesPerRow:2048];
  }
}

_DWORD *NTKPatchworkMagic_Tweak_RampLinear(_DWORD *result, unsigned int a2, float32x4_t *a3, int a4)
{
  if (a2 <= 1 && (a4 - 512) >= 0xFFFFFE02)
  {
    v20 = *a3;
    result = [result state];
    v7 = 0;
    v8 = 1;
    v9 = vdupq_n_s32(0x447FC000u);
    do
    {
      v10 = a3[v8];
      v11 = vcvts_n_s32_f32(v10.f32[3], 9uLL);
      if (v11 > v7 && v11 <= 512)
      {
        v12 = 0;
        v13 = 1.0 / (v11 - v7);
        v14 = vsubq_f32(v10, v20);
        v15 = &result[512 * a2 + 22 + v7];
        v16 = v11 - v7;
        do
        {
          v17 = vmulq_f32(vmlaq_n_f32(v20, v14, v13 * v12), v9);
          v17.i32[3] = 0;
          v18 = vmaxnmq_f32(v17, 0);
          v18.i32[3] = 0;
          v19 = vminnmq_f32(v18, xmmword_409A0);
          *(v15 + 4 * v12++) = v19.f32[0] & 0x3FF | ((v19.f32[1] & 0x3FF) << 10) | (v19.f32[2] << 20) | 0xC0000000;
        }

        while (v16 != v12);
        v7 = v11;
        v20 = v10;
      }

      ++v8;
    }

    while (v8 != a4);
    result[1046] = 0;
  }

  return result;
}

void sub_3220(id *a1)
{
  for (i = 0; i != 3; ++i)
  {
  }

  for (j = 0; j != 3; ++j)
  {
  }

  for (k = 0; k != 3; ++k)
  {
  }

  for (m = 0; m != 3; ++m)
  {
  }

  for (n = 0; n != 3; ++n)
  {
  }

  for (ii = 0; ii != 3; ++ii)
  {
  }

  for (jj = 0; jj != 3; ++jj)
  {
  }

  for (kk = 0; kk != 3; ++kk)
  {
  }

  for (mm = 0; mm != 3; ++mm)
  {
  }

  for (nn = 0; nn != 3; ++nn)
  {
  }

  v12 = 0;
  v13 = a1 + 90;
  do
  {
  }

  while (v12 != 3);
}

uint64_t NTKPatchworkMagic_Init(void *a1, void *a2, void *a3, void *a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = [v14 resource];
  *v18 = a6;
  *(v18 + 1) = a7;
  if (a6 >= 0)
  {
    v19 = a6;
  }

  else
  {
    v19 = a6 + 3;
  }

  if (a7 >= 0)
  {
    v20 = a7;
  }

  else
  {
    v20 = a7 + 3;
  }

  v21 = __NTKPatchworkMagic_Sustain_NewComputePipelineState(v14, v15, v16, v17, @"exitRampStandard", a8);
  v22 = *(v18 + 1);
  *(v18 + 1) = v21;

  v23 = *(v18 + 1);
  if (v23
    && (v223 = a8, v24 = [v23 threadExecutionWidth], v25 = objc_msgSend(*(v18 + 1), "maxTotalThreadsPerThreadgroup"), *(v18 + 2) = v24, *(v18 + 3) = v25 / v24, *(v18 + 4) = 1, __NTKPatchworkMagic_Sustain_NewComputePipelineState(v14, v15, v16, v17, @"fluidSimAdvect", v223), v26 = objc_claimAutoreleasedReturnValue(), v27 = *(v18 + 5), *(v18 + 5) = v26, v27, (v28 = *(v18 + 5)) != 0)
    && (v29 = [v28 threadExecutionWidth], v30 = objc_msgSend(*(v18 + 5), "maxTotalThreadsPerThreadgroup"), *(v18 + 6) = v29, *(v18 + 7) = v30 / v29, *(v18 + 8) = 1, __NTKPatchworkMagic_Sustain_NewComputePipelineState(v14, v15, v16, v17, @"fluidSimBoundaryPressure", v223), v31 = objc_claimAutoreleasedReturnValue(), v32 = *(v18 + 9), *(v18 + 9) = v31, v32, (v33 = *(v18 + 9)) != 0)
    && (v34 = [v33 threadExecutionWidth], v35 = objc_msgSend(*(v18 + 9), "maxTotalThreadsPerThreadgroup"), *(v18 + 10) = v34, *(v18 + 11) = v35 / v34, *(v18 + 12) = 1, __NTKPatchworkMagic_Sustain_NewComputePipelineState(v14, v15, v16, v17, @"fluidSimBoundaryVelocity", v223), v36 = objc_claimAutoreleasedReturnValue(), v37 = *(v18 + 13), *(v18 + 13) = v36, v37, (v38 = *(v18 + 13)) != 0)
    && (v39 = [v38 threadExecutionWidth], v40 = objc_msgSend(*(v18 + 13), "maxTotalThreadsPerThreadgroup"), *(v18 + 14) = v39, *(v18 + 15) = v40 / v39, *(v18 + 16) = 1, __NTKPatchworkMagic_Sustain_NewComputePipelineState(v14, v15, v16, v17, @"fluidSimDivergence", v223), v41 = objc_claimAutoreleasedReturnValue(), v42 = *(v18 + 17), *(v18 + 17) = v41, v42, (v43 = *(v18 + 17)) != 0)
    && (v44 = [v43 threadExecutionWidth], v45 = objc_msgSend(*(v18 + 17), "maxTotalThreadsPerThreadgroup"), *(v18 + 18) = v44, *(v18 + 19) = v45 / v44, *(v18 + 20) = 1, __NTKPatchworkMagic_Sustain_NewComputePipelineState(v14, v15, v16, v17, @"fluidSimGradient", v223), v46 = objc_claimAutoreleasedReturnValue(), v47 = *(v18 + 21), *(v18 + 21) = v46, v47, (v48 = *(v18 + 21)) != 0)
    && (v49 = [v48 threadExecutionWidth], v50 = objc_msgSend(*(v18 + 21), "maxTotalThreadsPerThreadgroup"), *(v18 + 22) = v49, *(v18 + 23) = v50 / v49, *(v18 + 24) = 1, __NTKPatchworkMagic_Sustain_NewComputePipelineState(v14, v15, v16, v17, @"fluidSimJacobi", v223), v51 = objc_claimAutoreleasedReturnValue(), v52 = *(v18 + 25), *(v18 + 25) = v51, v52, (v53 = *(v18 + 25)) != 0)
    && (v54 = [v53 threadExecutionWidth], v55 = objc_msgSend(*(v18 + 25), "maxTotalThreadsPerThreadgroup"), *(v18 + 26) = v54, *(v18 + 27) = v55 / v54, *(v18 + 28) = 1, __NTKPatchworkMagic_Sustain_NewComputePipelineState(v14, v15, v16, v17, @"fluidSimJacobiPressure", v223), v56 = objc_claimAutoreleasedReturnValue(), v57 = *(v18 + 29), *(v18 + 29) = v56, v57, (v58 = *(v18 + 29)) != 0)
    && (v59 = [v58 threadExecutionWidth], v60 = objc_msgSend(*(v18 + 29), "maxTotalThreadsPerThreadgroup"), *(v18 + 30) = v59, *(v18 + 31) = v60 / v59, *(v18 + 32) = 1, __NTKPatchworkMagic_Sustain_NewComputePipelineState(v14, v15, v16, v17, @"fluidSimVorticity", v223), v61 = objc_claimAutoreleasedReturnValue(), v62 = *(v18 + 33), *(v18 + 33) = v61, v62, (v63 = *(v18 + 33)) != 0)
    && (v64 = [v63 threadExecutionWidth], v65 = objc_msgSend(*(v18 + 33), "maxTotalThreadsPerThreadgroup"), *(v18 + 34) = v64, *(v18 + 35) = v65 / v64, *(v18 + 36) = 1, __NTKPatchworkMagic_Sustain_NewComputePipelineState(v14, v15, v16, v17, @"fluidSimVorticityConfinement", v223), v66 = objc_claimAutoreleasedReturnValue(), v67 = *(v18 + 37), *(v18 + 37) = v66, v67, (v68 = *(v18 + 37)) != 0)
    && (v69 = [v68 threadExecutionWidth], v70 = objc_msgSend(*(v18 + 37), "maxTotalThreadsPerThreadgroup"), *(v18 + 38) = v69, *(v18 + 39) = v70 / v69, *(v18 + 40) = 1, __NTKPatchworkMagic_Sustain_NewComputePipelineState(v14, v15, v16, v17, @"responsiveArtAdvectColorDyeNode", v223), v71 = objc_claimAutoreleasedReturnValue(), v72 = *(v18 + 41), *(v18 + 41) = v71, v72, (v73 = *(v18 + 41)) != 0)
    && (v74 = [v73 threadExecutionWidth], v75 = objc_msgSend(*(v18 + 41), "maxTotalThreadsPerThreadgroup"), *(v18 + 42) = v74, *(v18 + 43) = v75 / v74, *(v18 + 44) = 1, __NTKPatchworkMagic_Sustain_NewComputePipelineState(v14, v15, v16, v17, @"responsiveArtVelocityDyeNode", v223), v76 = objc_claimAutoreleasedReturnValue(), v77 = *(v18 + 45), *(v18 + 45) = v76, v77, (v78 = *(v18 + 45)) != 0))
  {
    v221 = a7;
    v79 = v19 >> 2;
    v80 = v20 >> 2;
    v81 = [v78 threadExecutionWidth];
    v82 = [*(v18 + 45) maxTotalThreadsPerThreadgroup];
    *(v18 + 46) = v81;
    *(v18 + 47) = v82 / v81;
    *(v18 + 48) = 1;

    v83 = a6;
    v84 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:"texture2DDescriptorWithPixelFormat:width:height:mipmapped:" width:a5 height:? mipmapped:?];
    [v84 setPixelFormat:65];
    [v84 setUsage:3];
    [v84 setStorageMode:2];
    [v84 setWidth:v79];
    [v84 setHeight:v80];
    v85 = [v17 newTextureWithDescriptor:v84];
    v86 = *(v18 + 49);
    *(v18 + 49) = v85;

    v87 = *(v18 + 49);
    if (v87
      && (v88 = (a6 + (a6 >> 31)) >> 1, v89 = (a7 + (a7 >> 31)) >> 1, [v87 setLabel:@"advectOutput_0"], objc_msgSend(v84, "setPixelFormat:", 115), objc_msgSend(v84, "setUsage:", 3), objc_msgSend(v84, "setStorageMode:", 2), objc_msgSend(v84, "setWidth:", v88), objc_msgSend(v84, "setHeight:", v89), v90 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v91 = *(v18 + 50), *(v18 + 50) = v90, v91, (v92 = *(v18 + 50)) != 0)
      && ([v92 setLabel:@"advect_color_dye_0[0]"], v93 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v94 = *(v18 + 51), *(v18 + 51) = v93, v94, (v95 = *(v18 + 51)) != 0)
      && ([v95 setLabel:@"advect_color_dye_0[1]"], v96 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v97 = *(v18 + 52), *(v18 + 52) = v96, v97, (v98 = *(v18 + 52)) != 0)
      && ([v98 setLabel:@"advect_color_dye_0[2]"], objc_msgSend(v84, "setPixelFormat:", 65), objc_msgSend(v84, "setUsage:", 3), objc_msgSend(v84, "setStorageMode:", 2), objc_msgSend(v84, "setWidth:", v79), objc_msgSend(v84, "setHeight:", v80), v99 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v100 = *(v18 + 53), *(v18 + 53) = v99, v100, (v101 = *(v18 + 53)) != 0)
      && ([v101 setLabel:@"advect_velocity_coalesced_0"], objc_msgSend(v84, "setPixelFormat:", 32), objc_msgSend(v84, "setUsage:", 1), objc_msgSend(v84, "setStorageMode:", 0), objc_msgSend(v84, "setWidth:", v79), objc_msgSend(v84, "setHeight:", v80), v102 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v103 = *(v18 + 54), *(v18 + 54) = v102, v103, (v104 = *(v18 + 54)) != 0)
      && ([v104 setLabel:@"boundary_generator_0"], objc_msgSend(v84, "setPixelFormat:", 65), objc_msgSend(v84, "setUsage:", 3), objc_msgSend(v84, "setStorageMode:", 2), objc_msgSend(v84, "setWidth:", v79), objc_msgSend(v84, "setHeight:", v80), v105 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v106 = *(v18 + 55), *(v18 + 55) = v105, v106, (v107 = *(v18 + 55)) != 0)
      && ([v107 setLabel:@"diffusionOutput_0"], objc_msgSend(v84, "setPixelFormat:", 90), objc_msgSend(v84, "setUsage:", 1), objc_msgSend(v84, "setStorageMode:", 0), objc_msgSend(v84, "setWidth:", 512), objc_msgSend(v84, "setHeight:", 2), v108 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v109 = *(v18 + 56), *(v18 + 56) = v108, v109, (v110 = *(v18 + 56)) != 0)
      && ([v110 setLabel:@"exitRampStandard[0]"], v111 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v112 = *(v18 + 57), *(v18 + 57) = v111, v112, (v113 = *(v18 + 57)) != 0)
      && ([v113 setLabel:@"exitRampStandard[1]"], v114 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v115 = *(v18 + 58), *(v18 + 58) = v114, v115, (v116 = *(v18 + 58)) != 0)
      && ([v116 setLabel:@"exitRampStandard[2]"], objc_msgSend(v84, "setPixelFormat:", 65), objc_msgSend(v84, "setUsage:", 3), objc_msgSend(v84, "setStorageMode:", 2), objc_msgSend(v84, "setWidth:", v79), objc_msgSend(v84, "setHeight:", v80), v117 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v118 = *(v18 + 59), *(v18 + 59) = v117, v118, (v119 = *(v18 + 59)) != 0)
      && ([v119 setLabel:@"gradient_coalesced_0[0]"], v120 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v121 = *(v18 + 60), *(v18 + 60) = v120, v121, (v122 = *(v18 + 60)) != 0)
      && ([v122 setLabel:@"gradient_coalesced_0[1]"], v123 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v124 = *(v18 + 61), *(v18 + 61) = v123, v124, (v125 = *(v18 + 61)) != 0)
      && ([v125 setLabel:@"gradient_coalesced_0[2]"], objc_msgSend(v84, "setPixelFormat:", 65), objc_msgSend(v84, "setUsage:", 3), objc_msgSend(v84, "setStorageMode:", 2), objc_msgSend(v84, "setWidth:", v79), objc_msgSend(v84, "setHeight:", v80), v126 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v127 = *(v18 + 62), *(v18 + 62) = v126, v127, (v128 = *(v18 + 62)) != 0)
      && ([v128 setLabel:@"intermediateOutput_0"], objc_msgSend(v84, "setPixelFormat:", 25), objc_msgSend(v84, "setUsage:", 3), objc_msgSend(v84, "setStorageMode:", 2), objc_msgSend(v84, "setWidth:", v79), objc_msgSend(v84, "setHeight:", v80), v129 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v130 = *(v18 + 63), *(v18 + 63) = v129, v130, (v131 = *(v18 + 63)) != 0)
      && ([v131 setLabel:@"intermediateOutput_1"], objc_msgSend(v84, "setPixelFormat:", 25), objc_msgSend(v84, "setUsage:", 3), objc_msgSend(v84, "setStorageMode:", 2), objc_msgSend(v84, "setWidth:", v79), objc_msgSend(v84, "setHeight:", v80), v132 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v133 = *(v18 + 64), *(v18 + 64) = v132, v133, (v134 = *(v18 + 64)) != 0)
      && ([v134 setLabel:@"jacobiPressureOutput_0"], objc_msgSend(v84, "setPixelFormat:", 25), objc_msgSend(v84, "setUsage:", 3), objc_msgSend(v84, "setStorageMode:", 2), objc_msgSend(v84, "setWidth:", v79), objc_msgSend(v84, "setHeight:", v80), v135 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v136 = *(v18 + 65), *(v18 + 65) = v135, v136, (v137 = *(v18 + 65)) != 0)
      && ([v137 setLabel:@"pressure_coalesced_0[0]"], v138 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v139 = *(v18 + 66), *(v18 + 66) = v138, v139, (v140 = *(v18 + 66)) != 0)
      && ([v140 setLabel:@"pressure_coalesced_0[1]"], v141 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v142 = *(v18 + 67), *(v18 + 67) = v141, v142, (v143 = *(v18 + 67)) != 0)
      && ([v143 setLabel:@"pressure_coalesced_0[2]"], objc_msgSend(v84, "setPixelFormat:", 65), objc_msgSend(v84, "setUsage:", 3), objc_msgSend(v84, "setStorageMode:", 2), objc_msgSend(v84, "setWidth:", v79), objc_msgSend(v84, "setHeight:", v80), v144 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v145 = *(v18 + 68), *(v18 + 68) = v144, v145, (v146 = *(v18 + 68)) != 0)
      && ([v146 setLabel:@"velocity_stage_0_coalesced_0"], objc_msgSend(v84, "setPixelFormat:", 65), objc_msgSend(v84, "setUsage:", 3), objc_msgSend(v84, "setStorageMode:", 2), objc_msgSend(v84, "setWidth:", v79), objc_msgSend(v84, "setHeight:", v80), v147 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v148 = *(v18 + 69), *(v18 + 69) = v147, v148, (v149 = *(v18 + 69)) != 0)
      && ([v149 setLabel:@"vorticityConfinement_0"], objc_msgSend(v84, "setPixelFormat:", 25), objc_msgSend(v84, "setUsage:", 3), objc_msgSend(v84, "setStorageMode:", 2), objc_msgSend(v84, "setWidth:", v79), objc_msgSend(v84, "setHeight:", v80), v150 = objc_msgSend(v17, "newTextureWithDescriptor:", v84), v151 = *(v18 + 70), *(v18 + 70) = v150, v151, (v152 = *(v18 + 70)) != 0)
      && ([v152 setLabel:@"vorticityOutput_0"], v153 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40BF0, 48, 1), v154 = *(v18 + 71), *(v18 + 71) = v153, v154, (v155 = *(v18 + 71)) != 0)
      && ([v155 setLabel:@"static"], v156 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40C20, 4, 1), v157 = *(v18 + 72), *(v18 + 72) = v156, v157, (v158 = *(v18 + 72)) != 0)
      && ([v158 setLabel:@"exitRampStandard[0]"], v159 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40C20, 4, 1), v160 = *(v18 + 73), *(v18 + 73) = v159, v160, (v161 = *(v18 + 73)) != 0)
      && ([v161 setLabel:@"exitRampStandard[1]"], v162 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40C20, 4, 1), v163 = *(v18 + 74), *(v18 + 74) = v162, v163, (v164 = *(v18 + 74)) != 0)
      && ([v164 setLabel:@"exitRampStandard[2]"], v165 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40C24, 8, 1), v166 = *(v18 + 75), *(v18 + 75) = v165, v166, (v167 = *(v18 + 75)) != 0)
      && ([v167 setLabel:@"fluidSimAdvect_0_0[0]"], v168 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40C24, 8, 1), v169 = *(v18 + 76), *(v18 + 76) = v168, v169, (v170 = *(v18 + 76)) != 0)
      && ([v170 setLabel:@"fluidSimAdvect_0_0[1]"], v171 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40C24, 8, 1), v172 = *(v18 + 77), *(v18 + 77) = v171, v172, (v173 = *(v18 + 77)) != 0)
      && ([v173 setLabel:@"fluidSimAdvect_0_0[2]"], v174 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40C2C, 4, 1), v175 = *(v18 + 78), *(v18 + 78) = v174, v175, (v176 = *(v18 + 78)) != 0)
      && ([v176 setLabel:@"fluidSimVorticity_0_1[0]"], v177 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40C2C, 4, 1), v178 = *(v18 + 79), *(v18 + 79) = v177, v178, (v179 = *(v18 + 79)) != 0)
      && ([v179 setLabel:@"fluidSimVorticity_0_1[1]"], v180 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40C2C, 4, 1), v181 = *(v18 + 80), *(v18 + 80) = v180, v181, (v182 = *(v18 + 80)) != 0)
      && ([v182 setLabel:@"fluidSimVorticity_0_1[2]"], v183 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40C30, 8, 1), v184 = *(v18 + 81), *(v18 + 81) = v183, v184, (v185 = *(v18 + 81)) != 0)
      && ([v185 setLabel:@"fluidSimVorticity_0_2[0]"], v186 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40C30, 8, 1), v187 = *(v18 + 82), *(v18 + 82) = v186, v187, (v188 = *(v18 + 82)) != 0)
      && ([v188 setLabel:@"fluidSimVorticity_0_2[1]"], v189 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40C30, 8, 1), v190 = *(v18 + 83), *(v18 + 83) = v189, v190, (v191 = *(v18 + 83)) != 0)
      && ([v191 setLabel:@"fluidSimVorticity_0_2[2]"], v192 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40C38, 160, 1), v193 = *(v18 + 84), *(v18 + 84) = v192, v193, (v194 = *(v18 + 84)) != 0)
      && ([v194 setLabel:@"fluidSimVorticity_0_4[0]"], v195 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40C38, 160, 1), v196 = *(v18 + 85), *(v18 + 85) = v195, v196, (v197 = *(v18 + 85)) != 0)
      && ([v197 setLabel:@"fluidSimVorticity_0_4[1]"], v198 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40C38, 160, 1), v199 = *(v18 + 86), *(v18 + 86) = v198, v199, (v200 = *(v18 + 86)) != 0)
      && ([v200 setLabel:@"fluidSimVorticity_0_4[2]"], v201 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40CD8, 24, 1), v202 = *(v18 + 87), *(v18 + 87) = v201, v202, (v203 = *(v18 + 87)) != 0)
      && ([v203 setLabel:@"responsiveArtAdvectColorDyeNode_0_0[0]"], v204 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40CD8, 24, 1), v205 = *(v18 + 88), *(v18 + 88) = v204, v205, (v206 = *(v18 + 88)) != 0)
      && ([v206 setLabel:@"responsiveArtAdvectColorDyeNode_0_0[1]"], v207 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40CD8, 24, 1), v208 = *(v18 + 89), *(v18 + 89) = v207, v208, (v209 = *(v18 + 89)) != 0)
      && ([v209 setLabel:@"responsiveArtAdvectColorDyeNode_0_0[2]"], v210 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40CF0, 160, 1), v211 = *(v18 + 90), *(v18 + 90) = v210, v211, (v212 = *(v18 + 90)) != 0)
      && ([v212 setLabel:@"responsiveArtAdvectColorDyeNode_0_1[0]"], v213 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40CF0, 160, 1), v214 = *(v18 + 91), *(v18 + 91) = v213, v214, (v215 = *(v18 + 91)) != 0)
      && ([v215 setLabel:@"responsiveArtAdvectColorDyeNode_0_1[1]"], v216 = objc_msgSend(v17, "newBufferWithBytes:length:options:", &unk_40CF0, 160, 1), v217 = *(v18 + 92), *(v18 + 92) = v216, v217, (v218 = *(v18 + 92)) != 0))
    {
      [v218 setLabel:@"responsiveArtAdvectColorDyeNode_0_1[2]"];
      v226[0] = v83;
      v226[1] = v221;
      v226[2] = 1;
      v225[0] = v88;
      v225[1] = v89;
      v225[2] = 1;
      v224[0] = v79;
      v224[1] = v80;
      v224[2] = 1;
      v219 = __NTKPatchworkMagic_Sustain_Init(v14, v15, v17, a5, v226, v225, v224);
    }

    else
    {
      v219 = 0;
    }

    v16 = 0;
  }

  else
  {
    v219 = 0;
  }

  return v219;
}

void NTKPatchworkMagic_Attack(void *a1, void *a2, void *a3)
{
  v29 = a3;
  v5 = a2;
  v6 = a1;
  v7 = [v6 state];
  v8 = *v7 % 3;
  v9 = (*v7 + 2) % 3;
  v10 = [v6 resource];

  v11 = v10[1];
  v27 = (*v10 + (*v10 >> 31)) >> 1;
  v28 = *v10;
  v25 = v11;
  v26 = (v11 + (v11 >> 31)) >> 1;
  v12 = *v10 + 3;
  if (*v10 >= 0)
  {
    v12 = *v10;
  }

  v13 = v12 >> 2;
  v14 = v11 + 3;
  if (v11 >= 0)
  {
    v14 = v10[1];
  }

  v15 = v14 >> 2;
  v16 = *(v10 + 71);
  v17 = [v5 computeCommandEncoder];
  [v17 setLabel:@"fluidSimAdvect_0"];
  [v17 setComputePipelineState:*(v10 + 5)];
  [v17 setTexture:*(v10 + 49) atIndex:0];
  [v17 setTexture:*&v10[2 * v9 + 118] atIndex:1];
  v18 = v9;
  [v17 setTexture:*&v10[2 * v9 + 118] atIndex:2];
  v19 = &v10[2 * v8];
  [v17 setBuffer:*(v19 + 75) offset:0 atIndex:0];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 3);
  v31 = *(v10 + 8);
  [v17 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v17 setComputePipelineState:*(v10 + 13)];
  [v17 setTexture:*(v10 + 53) atIndex:0];
  [v17 setTexture:*(v10 + 49) atIndex:1];
  [v17 setTexture:*(v10 + 54) atIndex:2];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 7);
  v31 = *(v10 + 16);
  [v17 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v17 endEncoding];

  v20 = [v5 computeCommandEncoder];
  [v20 setLabel:@"fluidSimVorticity_0"];
  [v20 setComputePipelineState:*(v10 + 33)];
  [v20 setTexture:*(v10 + 70) atIndex:0];
  [v20 setTexture:*(v10 + 53) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 17);
  v31 = *(v10 + 36);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setComputePipelineState:*(v10 + 37)];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 70) atIndex:1];
  [v20 setTexture:*(v10 + 53) atIndex:2];
  [v20 setBuffer:v16 offset:16 atIndex:0];
  [v20 setBuffer:*(v19 + 78) offset:0 atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 19);
  v31 = *(v10 + 40);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setComputePipelineState:*(v10 + 13)];
  [v20 setTexture:*(v10 + 49) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  [v20 setTexture:*(v10 + 54) atIndex:2];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 7);
  v31 = *(v10 + 16);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setComputePipelineState:*(v10 + 25)];
  [v20 setBuffer:*(v19 + 81) offset:0 atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 49) atIndex:1];
  [v20 setTexture:*(v10 + 49) atIndex:2];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  [v20 setComputePipelineState:*(v10 + 13)];
  [v20 setTexture:*(v10 + 55) atIndex:0];
  [v20 setTexture:*(v10 + 54) atIndex:2];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 7);
  v31 = *(v10 + 16);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setComputePipelineState:*(v10 + 45)];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 55) atIndex:1];
  [v20 setBuffer:v16 offset:32 atIndex:0];
  [v20 setBuffer:*(v19 + 84) offset:0 atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 23);
  v31 = *(v10 + 48);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setComputePipelineState:*(v10 + 13)];
  [v20 setTexture:*(v10 + 68) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 7);
  v31 = *(v10 + 16);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 endEncoding];

  v21 = [v5 computeCommandEncoder];
  [v21 setLabel:@"fluidSimDivergence_0"];
  [v21 setComputePipelineState:*(v10 + 17)];
  [v21 setTexture:*(v10 + 70) atIndex:0];
  [v21 setTexture:*(v10 + 68) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 9);
  v31 = *(v10 + 20);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setComputePipelineState:*(v10 + 29)];
  [v21 setBuffer:v16 offset:0 atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*&v10[2 * v18 + 130] atIndex:1];
  [v21 setTexture:*(v10 + 70) atIndex:2];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 64) atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*(v10 + 64) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 64) atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*(v10 + 64) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 64) atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*(v10 + 64) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 64) atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*(v10 + 64) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 64) atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*(v10 + 64) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 64) atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*(v10 + 64) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 64) atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*(v10 + 64) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 64) atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*(v10 + 64) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 64) atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*(v10 + 64) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 64) atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*(v10 + 64) atIndex:1];
  [v21 setComputePipelineState:*(v10 + 9)];
  [v21 setTexture:*&v10[2 * v8 + 130] atIndex:0];
  [v21 setTexture:*(v10 + 54) atIndex:2];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 5);
  v31 = *(v10 + 12);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 endEncoding];

  v22 = [v5 computeCommandEncoder];
  [v22 setLabel:@"fluidSimGradient_0"];
  [v22 setComputePipelineState:*(v10 + 21)];
  [v22 setTexture:*(v10 + 49) atIndex:0];
  [v22 setTexture:*(v10 + 68) atIndex:1];
  [v22 setTexture:*&v10[2 * v8 + 130] atIndex:2];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 11);
  v31 = *(v10 + 24);
  [v22 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v22 setComputePipelineState:*(v10 + 13)];
  [v22 setTexture:*&v10[2 * v8 + 118] atIndex:0];
  [v22 setTexture:*(v10 + 49) atIndex:1];
  [v22 setTexture:*(v10 + 54) atIndex:2];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 7);
  v31 = *(v10 + 16);
  [v22 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v22 endEncoding];

  v23 = [v5 computeCommandEncoder];
  [v23 setLabel:@"responsiveArtAdvectColorDyeNode_0"];
  [v23 setComputePipelineState:*(v10 + 41)];
  [v23 setTexture:*&v10[2 * v8 + 100] atIndex:0];
  [v23 setTexture:*(v10 + 53) atIndex:1];
  [v23 setTexture:*&v10[2 * v18 + 100] atIndex:2];
  [v23 setBuffer:*(v19 + 87) offset:0 atIndex:0];
  [v23 setBuffer:*(v19 + 90) offset:0 atIndex:1];
  v32 = v27;
  v33 = v26;
  v34 = 1;
  v30 = *(v10 + 21);
  v31 = *(v10 + 44);
  [v23 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v23 endEncoding];

  v24 = [v5 computeCommandEncoder];

  [v24 setLabel:@"exitRampStandard"];
  [v24 setComputePipelineState:*(v10 + 1)];
  [v24 setTexture:v29 atIndex:0];

  [v24 setTexture:*&v10[2 * v8 + 100] atIndex:1];
  [v24 setTexture:*(v19 + 56) atIndex:2];
  [v24 setBuffer:*(v19 + 72) offset:0 atIndex:0];
  v32 = v28;
  v33 = v25;
  v34 = 1;
  v30 = *(v10 + 1);
  v31 = *(v10 + 4);

  [v24 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v24 endEncoding];
}

void NTKPatchworkMagic_Decay(void *a1, void *a2, void *a3)
{
  v29 = a3;
  v5 = a2;
  v6 = a1;
  v7 = [v6 state];
  v8 = *v7 % 3;
  v9 = (*v7 + 2) % 3;
  v10 = [v6 resource];

  v11 = v10[1];
  v27 = (*v10 + (*v10 >> 31)) >> 1;
  v28 = *v10;
  v25 = v11;
  v26 = (v11 + (v11 >> 31)) >> 1;
  v12 = *v10 + 3;
  if (*v10 >= 0)
  {
    v12 = *v10;
  }

  v13 = v12 >> 2;
  v14 = v11 + 3;
  if (v11 >= 0)
  {
    v14 = v10[1];
  }

  v15 = v14 >> 2;
  v16 = *(v10 + 71);
  v17 = [v5 computeCommandEncoder];
  [v17 setLabel:@"fluidSimAdvect_0"];
  [v17 setComputePipelineState:*(v10 + 5)];
  [v17 setTexture:*(v10 + 49) atIndex:0];
  [v17 setTexture:*&v10[2 * v9 + 118] atIndex:1];
  v18 = v9;
  [v17 setTexture:*&v10[2 * v9 + 118] atIndex:2];
  v19 = &v10[2 * v8];
  [v17 setBuffer:*(v19 + 75) offset:0 atIndex:0];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 3);
  v31 = *(v10 + 8);
  [v17 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v17 setComputePipelineState:*(v10 + 13)];
  [v17 setTexture:*(v10 + 53) atIndex:0];
  [v17 setTexture:*(v10 + 49) atIndex:1];
  [v17 setTexture:*(v10 + 54) atIndex:2];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 7);
  v31 = *(v10 + 16);
  [v17 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v17 endEncoding];

  v20 = [v5 computeCommandEncoder];
  [v20 setLabel:@"fluidSimVorticity_0"];
  [v20 setComputePipelineState:*(v10 + 33)];
  [v20 setTexture:*(v10 + 70) atIndex:0];
  [v20 setTexture:*(v10 + 53) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 17);
  v31 = *(v10 + 36);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setComputePipelineState:*(v10 + 37)];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 70) atIndex:1];
  [v20 setTexture:*(v10 + 53) atIndex:2];
  [v20 setBuffer:v16 offset:16 atIndex:0];
  [v20 setBuffer:*(v19 + 78) offset:0 atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 19);
  v31 = *(v10 + 40);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setComputePipelineState:*(v10 + 13)];
  [v20 setTexture:*(v10 + 49) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  [v20 setTexture:*(v10 + 54) atIndex:2];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 7);
  v31 = *(v10 + 16);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setComputePipelineState:*(v10 + 25)];
  [v20 setBuffer:*(v19 + 81) offset:0 atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 49) atIndex:1];
  [v20 setTexture:*(v10 + 49) atIndex:2];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 62) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 13);
  v31 = *(v10 + 28);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setTexture:*(v10 + 62) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  [v20 setComputePipelineState:*(v10 + 13)];
  [v20 setTexture:*(v10 + 55) atIndex:0];
  [v20 setTexture:*(v10 + 54) atIndex:2];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 7);
  v31 = *(v10 + 16);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setComputePipelineState:*(v10 + 45)];
  [v20 setTexture:*(v10 + 69) atIndex:0];
  [v20 setTexture:*(v10 + 55) atIndex:1];
  [v20 setBuffer:v16 offset:32 atIndex:0];
  [v20 setBuffer:*(v19 + 84) offset:0 atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 23);
  v31 = *(v10 + 48);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 setComputePipelineState:*(v10 + 13)];
  [v20 setTexture:*(v10 + 68) atIndex:0];
  [v20 setTexture:*(v10 + 69) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 7);
  v31 = *(v10 + 16);
  [v20 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v20 endEncoding];

  v21 = [v5 computeCommandEncoder];
  [v21 setLabel:@"fluidSimDivergence_0"];
  [v21 setComputePipelineState:*(v10 + 17)];
  [v21 setTexture:*(v10 + 70) atIndex:0];
  [v21 setTexture:*(v10 + 68) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 9);
  v31 = *(v10 + 20);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setComputePipelineState:*(v10 + 29)];
  [v21 setBuffer:v16 offset:0 atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*&v10[2 * v18 + 130] atIndex:1];
  [v21 setTexture:*(v10 + 70) atIndex:2];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 64) atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*(v10 + 64) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 64) atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*(v10 + 64) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 64) atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*(v10 + 64) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 64) atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*(v10 + 64) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 64) atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*(v10 + 64) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 64) atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*(v10 + 64) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 64) atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*(v10 + 64) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 64) atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*(v10 + 64) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 64) atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*(v10 + 64) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 64) atIndex:0];
  [v21 setTexture:*(v10 + 63) atIndex:1];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 15);
  v31 = *(v10 + 32);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 setTexture:*(v10 + 63) atIndex:0];
  [v21 setTexture:*(v10 + 64) atIndex:1];
  [v21 setComputePipelineState:*(v10 + 9)];
  [v21 setTexture:*&v10[2 * v8 + 130] atIndex:0];
  [v21 setTexture:*(v10 + 54) atIndex:2];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 5);
  v31 = *(v10 + 12);
  [v21 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v21 endEncoding];

  v22 = [v5 computeCommandEncoder];
  [v22 setLabel:@"fluidSimGradient_0"];
  [v22 setComputePipelineState:*(v10 + 21)];
  [v22 setTexture:*(v10 + 49) atIndex:0];
  [v22 setTexture:*(v10 + 68) atIndex:1];
  [v22 setTexture:*&v10[2 * v8 + 130] atIndex:2];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 11);
  v31 = *(v10 + 24);
  [v22 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v22 setComputePipelineState:*(v10 + 13)];
  [v22 setTexture:*&v10[2 * v8 + 118] atIndex:0];
  [v22 setTexture:*(v10 + 49) atIndex:1];
  [v22 setTexture:*(v10 + 54) atIndex:2];
  v32 = v13;
  v33 = v15;
  v34 = 1;
  v30 = *(v10 + 7);
  v31 = *(v10 + 16);
  [v22 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v22 endEncoding];

  v23 = [v5 computeCommandEncoder];
  [v23 setLabel:@"responsiveArtAdvectColorDyeNode_0"];
  [v23 setComputePipelineState:*(v10 + 41)];
  [v23 setTexture:*&v10[2 * v8 + 100] atIndex:0];
  [v23 setTexture:*(v10 + 53) atIndex:1];
  [v23 setTexture:*&v10[2 * v18 + 100] atIndex:2];
  [v23 setBuffer:*(v19 + 87) offset:0 atIndex:0];
  [v23 setBuffer:*(v19 + 90) offset:0 atIndex:1];
  v32 = v27;
  v33 = v26;
  v34 = 1;
  v30 = *(v10 + 21);
  v31 = *(v10 + 44);
  [v23 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v23 endEncoding];

  v24 = [v5 computeCommandEncoder];

  [v24 setLabel:@"exitRampStandard"];
  [v24 setComputePipelineState:*(v10 + 1)];
  [v24 setTexture:v29 atIndex:0];

  [v24 setTexture:*&v10[2 * v8 + 100] atIndex:1];
  [v24 setTexture:*(v19 + 56) atIndex:2];
  [v24 setBuffer:*(v19 + 72) offset:0 atIndex:0];
  v32 = v28;
  v33 = v25;
  v34 = 1;
  v30 = *(v10 + 1);
  v31 = *(v10 + 4);

  [v24 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
  [v24 endEncoding];
}

__n128 initializeBufferWithCopyOfBuffer for TritiumState(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_7080(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_70A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 _s10descr51419V6LayoutV4RectOwcp(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t _s10descr51419V6LayoutV4RectOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10descr51419V6LayoutV4RectOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_7148(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_7164(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_7184(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 80) = v3;
  return result;
}

uint64_t sub_7204(uint64_t a1, id *a2)
{
  result = sub_37510();
  *a2 = 0;
  return result;
}

uint64_t sub_727C(uint64_t a1, id *a2)
{
  v3 = sub_37520();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_72FC@<X0>(void *a1@<X8>)
{
  sub_37530();
  v2 = sub_37500();

  *a1 = v2;
  return result;
}

uint64_t sub_7340()
{
  sub_37530();
  v0 = sub_37630();

  return v0;
}

uint64_t sub_737C()
{
  sub_37530();
  sub_375A0();
}

Swift::Int sub_73D0()
{
  sub_37530();
  sub_37B30();
  sub_375A0();
  v0 = sub_37B80();

  return v0;
}

Swift::Int sub_7444()
{
  v1 = *v0;
  sub_37B30();
  sub_37B40(v1);
  return sub_37B80();
}

Swift::Int sub_74B8()
{
  v1 = *v0;
  sub_37B30();
  sub_37B40(v1);
  return sub_37B80();
}

uint64_t sub_7500(uint64_t a1)
{
  v2 = sub_7B88(&qword_586F0, type metadata accessor for AttributeName);
  v3 = sub_7B88(&qword_586F8, type metadata accessor for AttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_75BC()
{
  v0 = sub_37530();
  v2 = v1;
  if (v0 == sub_37530() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_37AD0();
  }

  return v5 & 1;
}

void *sub_7658@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_766C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_37530();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_7698(uint64_t a1)
{
  v2 = sub_7B88(&qword_58700, type metadata accessor for FeatureKey);
  v3 = sub_7B88(&qword_58708, type metadata accessor for FeatureKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_7754@<X0>(void *a1@<X8>)
{
  v2 = sub_37500();

  *a1 = v2;
  return result;
}

uint64_t sub_779C(uint64_t a1)
{
  v2 = sub_7B88(&qword_58710, type metadata accessor for Key);
  v3 = sub_7B88(&qword_58718, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

id sub_7858(uint64_t a1)
{
  if (a1 == 17)
  {
    type metadata accessor for WarlockBackgroundEditOption();
    result = [v1 device];
    if (result)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (a1 != 13)
    {
      return 0;
    }

    type metadata accessor for WarlockTypefaceEditOption();
    result = [v1 device];
    if (result)
    {
LABEL_6:
      v3 = result;
      v4 = sub_2D7E8(0, result);

      return v4;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_7924(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (a2 == 17)
  {
    type metadata accessor for WarlockBackgroundEditOption();
    goto LABEL_8;
  }

  if (a2 != 13)
  {
    return 0;
  }

  type metadata accessor for WarlockTypefaceEditOption();
LABEL_8:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = a1;
  v10 = [v2 device];
  v11 = [ObjCClassFromMetadata indexOfOption:v6 forDevice:v10];

  return v11;
}

unint64_t sub_79FC()
{
  result = qword_58670;
  if (!qword_58670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_58670);
  }

  return result;
}

void sub_7AAC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_7B88(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_7E44(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v15[-v6];
  sub_37950();
  v21 = a1;
  v22 = a2;
  v16 = a1;
  v17 = a2;
  v18 = sub_8058;
  v19 = &v20;
  v8 = sub_815C(&qword_58780);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_13E00(sub_80E0, v15, AssociatedTypeWitness, v8, &type metadata for Never, AssociatedConformanceWitness, &protocol witness table for Never, v10);
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  if (*(v11 + 16))
  {
    sub_815C(&qword_58788);
    v12 = sub_37A70();
  }

  else
  {
    v12 = &_swiftEmptyDictionarySingleton;
  }

  v23 = v12;

  sub_81A4(v13, 1, &v23);

  return v23;
}

uint64_t sub_8058()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_37680();
  (*(v2 + 32))(v1, v2);
  return v4;
}

uint64_t sub_80E0@<X0>(void *a1@<X8>)
{
  (*(v1 + 32))();
  v4 = v3;
  v6 = v5;
  result = sub_37920();
  a1[8] = &type metadata for String;
  a1[5] = v4;
  a1[6] = v6;
  return result;
}

uint64_t sub_815C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_81A4(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  sub_856C(a1 + 32, &v43);
  v40 = v43;
  v41 = v44;
  v42 = v45;
  sub_85DC(v46, v39);
  v7 = *a3;
  v8 = sub_337CC(&v40);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v14) = v9;
  if (v7[3] < v13)
  {
    sub_BB10(v13, a2 & 1);
    v8 = sub_337CC(&v40);
    if ((v14 & 1) == (v15 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v8 = sub_37AF0();
    __break(1u);
  }

  if (a2)
  {
LABEL_7:
    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v18 = v8;
  sub_B554();
  v8 = v18;
  if (v14)
  {
LABEL_8:
    v16 = swift_allocError();
    swift_willThrow();
    v47 = v16;
    swift_errorRetain();
    sub_815C(&qword_58790);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_85EC(v39);
      sub_8638(&v40);
    }

    goto LABEL_25;
  }

LABEL_11:
  v19 = *a3;
  *(*a3 + 8 * (v8 >> 6) + 64) |= 1 << v8;
  v20 = v19[6] + 40 * v8;
  v21 = v40;
  v22 = v41;
  *(v20 + 32) = v42;
  *v20 = v21;
  *(v20 + 16) = v22;
  sub_85DC(v39, (v19[7] + 32 * v8));
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v12)
  {
    v19[2] = v24;
    if (v4 != 1)
    {
      v14 = a1 + 104;
      v25 = 1;
      while (v25 < *(a1 + 16))
      {
        sub_856C(v14, &v43);
        v40 = v43;
        v41 = v44;
        v42 = v45;
        sub_85DC(v46, v39);
        v26 = *a3;
        v27 = sub_337CC(&v40);
        v29 = v26[2];
        v30 = (v28 & 1) == 0;
        v12 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v12)
        {
          goto LABEL_22;
        }

        a2 = v28;
        if (v26[3] < v31)
        {
          sub_BB10(v31, 1);
          v27 = sub_337CC(&v40);
          if ((a2 & 1) != (v32 & 1))
          {
            goto LABEL_5;
          }
        }

        if (a2)
        {
          goto LABEL_8;
        }

        v33 = *a3;
        *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        v34 = v33[6] + 40 * v27;
        v35 = v40;
        v36 = v41;
        *(v34 + 32) = v42;
        *v34 = v35;
        *(v34 + 16) = v36;
        sub_85DC(v39, (v33[7] + 32 * v27));
        v37 = v33[2];
        v12 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v12)
        {
          goto LABEL_23;
        }

        ++v25;
        v33[2] = v38;
        v14 += 72;
        if (v4 == v25)
        {
        }
      }

      goto LABEL_24;
    }
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_37940(30);
  v48._object = 0x800000000003A300;
  v48._countAndFlagsBits = 0xD00000000000001BLL;
  sub_375D0(v48);
  sub_37A20();
  v49._countAndFlagsBits = 39;
  v49._object = 0xE100000000000000;
  sub_375D0(v49);
  result = sub_37A30();
  __break(1u);
  return result;
}

uint64_t sub_856C(uint64_t a1, uint64_t a2)
{
  v4 = sub_815C(&qword_58780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_85DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_85EC(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id sub_86A4(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for WarlockFaceView();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

Swift::Int sub_86F8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_37B30();
  sub_37B40(v1);
  sub_37B40(v2);
  return sub_37B80();
}

void sub_8758()
{
  v1 = v0[1];
  sub_37B40(*v0);
  sub_37B40(v1);
}

Swift::Int sub_8798()
{
  v1 = *v0;
  v2 = v0[1];
  sub_37B30();
  sub_37B40(v1);
  sub_37B40(v2);
  return sub_37B80();
}

void sub_881C()
{
  v1 = sub_186EC();
  sub_18768(v16);
  v2 = v17;
  v3 = v18;
  v4 = type metadata accessor for WarlockTypefaceAttributes();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___NTKWarlockTypefaceAttributes_fontSize] = v2;
  v6 = &v5[OBJC_IVAR___NTKWarlockTypefaceAttributes_fontWeight];
  *v6 = v3;
  v6[8] = 0;
  v5[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetOne] = 1;
  v5[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetTwo] = 1;
  v5[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableContextualAlternates] = 1;
  v5[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableDiscretionaryLigatures] = 0;
  v15.receiver = v5;
  v15.super_class = v4;
  v7 = objc_msgSendSuper2(&v15, "init");
  sub_9C68(v16);

  v8 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___fontLoader);
  v9 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 32);
  v10 = objc_allocWithZone(v4);
  *&v10[OBJC_IVAR___NTKWarlockTypefaceAttributes_fontSize] = v9;
  v11 = &v10[OBJC_IVAR___NTKWarlockTypefaceAttributes_fontWeight];
  *v11 = 0;
  v11[8] = 1;
  v10[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetOne] = 1;
  v10[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetTwo] = 1;
  v10[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableContextualAlternates] = 0;
  v10[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableDiscretionaryLigatures] = 0;
  v14.receiver = v10;
  v14.super_class = v4;
  v12 = v8;
  v13 = objc_msgSendSuper2(&v14, "init");
}

id sub_8A74()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for WarlockFaceView();
  objc_msgSendSuper2(&v10, "_cleanupAfterEditing");
  v1 = [v0 faceColorPalette];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for WarlockColorPalette();
    if (swift_dynamicCastClass() && (v3 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView]) != 0)
    {
      v4 = v3;
      v5 = sub_30574();
      v7 = v6;

      sub_359C0(v5, v7, 0);

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    else
    {
    }
  }

  result = sub_1A6A0();
  v9 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_patchworkState];
  if (v9)
  {
    *(v9 + 84) = 1065353216;
  }

  return result;
}

id sub_8C08(char a1)
{
  v2 = sub_186EC();
  sub_18768(v17);
  v3 = v18;
  if (a1)
  {
    v4 = type metadata accessor for WarlockTypefaceAttributes();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR___NTKWarlockTypefaceAttributes_fontSize] = v3;
    v6 = &v5[OBJC_IVAR___NTKWarlockTypefaceAttributes_fontWeight];
    *v6 = 0;
    v6[8] = 1;
    v5[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetOne] = 1;
    v5[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetTwo] = 1;
    v5[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableContextualAlternates] = 0;
    v5[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableDiscretionaryLigatures] = 0;
    v16 = v5;
    v7 = &selRef_solidFontWithAttributes_;
    v8 = &v16;
  }

  else
  {
    v9 = v19;
    v4 = type metadata accessor for WarlockTypefaceAttributes();
    v10 = objc_allocWithZone(v4);
    *&v10[OBJC_IVAR___NTKWarlockTypefaceAttributes_fontSize] = v3;
    v11 = &v10[OBJC_IVAR___NTKWarlockTypefaceAttributes_fontWeight];
    *v11 = v9;
    v11[8] = 0;
    v10[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetOne] = 1;
    v10[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetTwo] = 1;
    v10[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableContextualAlternates] = 1;
    v10[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableDiscretionaryLigatures] = 0;
    v15.receiver = v10;
    v7 = &selRef_stencilFontWithAttributes_;
    v8 = &v15;
  }

  v8->super_class = v4;
  v12 = [(objc_super *)v8 init];
  sub_9C68(v17);
  v13 = [v2 *v7];

  return v13;
}

uint64_t sub_8F44(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, double))
{
  if (a5)
  {
    sub_37530();
  }

  v10 = a1;
  a6(a4, a2);
}

uint64_t getEnumTagSinglePayload for WarlockTransitioningTypefaces(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for WarlockTransitioningTypefaces(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_9130()
{
  result = qword_58798;
  if (!qword_58798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_58798);
  }

  return result;
}

void sub_9184(void *a1, uint64_t a2)
{
  switch(a2)
  {
    case 10:
      v11 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView];
      if (!v11)
      {
        return;
      }

      v17 = v11;
      v16 = [v2 faceColorPalette];
      if (v16)
      {
        type metadata accessor for WarlockColorPalette();
        if (swift_dynamicCastClass())
        {
          v12 = sub_30574();
          v14 = v13;

          sub_359C0(v12, v14, 0);

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          return;
        }

        v15 = v16;
        goto LABEL_18;
      }

      break;
    case 17:
      if (!a1)
      {
        return;
      }

      type metadata accessor for WarlockBackgroundEditOption();
      v7 = swift_dynamicCastClass();
      if (!v7)
      {
        return;
      }

      v8 = v7;
      v17 = a1;
      v9 = [v8 _value];
      v10 = 1.0;
      if (v9 == &dword_0 + 1)
      {
        v10 = 0.0;
      }

      *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundVisibility] = v10;
      sub_18448();
      break;
    case 13:
      if (!a1)
      {
        return;
      }

      type metadata accessor for WarlockTypefaceEditOption();
      v4 = swift_dynamicCastClass();
      if (!v4)
      {
        return;
      }

      v5 = v4;
      *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_transitioningTypefaces] = 2;
      v17 = a1;
      v6 = [v5 _value] == &dword_0 + 1;
      v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_typeface] = v6;
      sub_181E4();
      break;
    default:
      return;
  }

  v15 = v17;
LABEL_18:
}

void sub_93A8(void *a1, void *a2, uint64_t a3, double a4)
{
  if (a3 != 10)
  {
    v7 = a1;
    if (a3 != 17)
    {
      if (a3 != 13)
      {
        return;
      }

      if (!a1)
      {
        return;
      }

      type metadata accessor for WarlockTypefaceEditOption();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
        return;
      }

      if (!a2)
      {
        return;
      }

      v9 = v8;
      v10 = swift_dynamicCastClass();
      if (!v10)
      {
        return;
      }

      v11 = v10;
      v12 = &v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_transitioningTypefaces];
      v13 = v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_transitioningTypefaces];
      if (v13 == 2)
      {
        v14 = v7;
        v15 = a2;
      }

      else
      {
        v32 = v7;
        v33 = a2;
        if ([v9 _value] == &dword_0 + 1)
        {
          if ((v13 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else if (v13)
        {
          goto LABEL_33;
        }

        v47 = *v12;
        if (v47 == 2)
        {
          v48 = 2;
        }

        else
        {
          v48 = *(v12 + 1) & 1;
        }

        if ([v11 _value] == &dword_0 + 1)
        {
          if (v48)
          {
            goto LABEL_36;
          }
        }

        else if (v47 != 2 && (v48 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

LABEL_33:
      v34 = [v9 _value] == &dword_0 + 1;
      v35 = [v11 _value] == &dword_0 + 1;
      p_KeyPath = v12;
      *v12 = v34 | (v35 << 8);
      v36 = sub_8C08(v34);
      v37 = sub_8C08(v35);
      v38 = *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView];
      if (v38)
      {
        _s10descr51419V18TransitioningFontsCMa();
        v39 = swift_allocObject();
        v40 = v38;
        v41 = v36;
        v37 = v37;
        sub_36CE0();
        *(v39 + 16) = v41;
        *(v39 + 24) = v37;
        *(v39 + 32) = a4;

        sub_1B8D0(v42, v40);

        v36 = v40;
      }

      v12 = p_KeyPath;
LABEL_36:
      if (*v12 != 2)
      {
        v43 = *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView];
        if (v43)
        {
          v44 = v11;
          v45 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_font;
          swift_beginAccess();
          sub_9B84(v43 + v45, v55);
          sub_815C(&qword_587A0);
          _s10descr51419V18TransitioningFontsCMa();
          if (swift_dynamicCast())
          {
            v46 = v54;
            if (*(v54 + 32) == a4)
            {
              v11 = v44;
              *(v54 + 32) = a4;

              goto LABEL_52;
            }

            KeyPath = swift_getKeyPath();
            p_KeyPath = &KeyPath;
            __chkstk_darwin(KeyPath);
            v55[0] = v46;
            sub_9C10();
            sub_36CC0();
          }

          v11 = v44;
        }
      }

LABEL_52:
      if (a4 >= 0.5)
      {
        v49 = v11;
      }

      else
      {
        v49 = v9;
      }

      if (a4 >= 0.5)
      {
        v50 = v7;
      }

      else
      {
        v50 = a2;
      }

      if (a4 >= 0.5)
      {
        v7 = a2;
      }

      v51 = [v49 _value];

      v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_typeface] = v51 == &dword_0 + 1;
      return;
    }

    if (!a1)
    {
      return;
    }

    type metadata accessor for WarlockBackgroundEditOption();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      return;
    }

    if (!a2)
    {
      return;
    }

    v17 = v16;
    v18 = swift_dynamicCastClass();
    if (!v18)
    {
      return;
    }

    v19 = v18;
    v20 = v7;
    p_KeyPath = a2;
    [v17 _value];
    [v19 _value];
    CLKInterpolateBetweenFloatsClipped();
    *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundVisibility] = v21;
    sub_18448();

    goto LABEL_24;
  }

  v22 = *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView];
  if (!v22)
  {
    return;
  }

  v23 = v22;
  v24 = [v4 interpolatedColorPalette];
  if (!v24)
  {
    __break(1u);
    goto LABEL_63;
  }

  v25 = v24;
  p_KeyPath = [v24 fromPalette];

  type metadata accessor for WarlockColorPalette();
  if (!swift_dynamicCastClass())
  {

LABEL_24:
    v31 = p_KeyPath;
LABEL_26:

    return;
  }

  v26 = [v4 interpolatedColorPalette];
  if (!v26)
  {
LABEL_63:
    __break(1u);
    return;
  }

  v27 = v26;
  KeyPath = [v26 toPalette];

  if (!swift_dynamicCastClass())
  {

    v31 = KeyPath;
    goto LABEL_26;
  }

  v28 = sub_30574();

  v29 = sub_30574();

  *&v30 = a4;
  LOBYTE(v55[0]) = 0;
  sub_359C0(v28, v29, v30);
}

char *sub_9A18(char *result, double a2)
{
  if (result)
  {
    if (result != &dword_8 + 2)
    {
      *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_breathingFraction] = a2;
      NTKAlphaForRubberBandingFraction();
      [v2 setAlpha:?];
      NTKLargeElementScaleForBreathingFraction();
      v4 = v3;
      NTKScaleForRubberBandingFraction();
      CGAffineTransformMakeScale(&v6, v4 * v5, v4 * v5);
      return [v2 setTransform:&v6];
    }
  }

  return result;
}

char *sub_9AD4(char *result, double a2)
{
  if (result)
  {
    if (result != &dword_8 + 2)
    {
      *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_rubberBandingFraction] = a2;
      NTKAlphaForRubberBandingFraction();
      [v2 setAlpha:?];
      NTKLargeElementScaleForBreathingFraction();
      v4 = v3;
      NTKScaleForRubberBandingFraction();
      CGAffineTransformMakeScale(&v6, v4 * v5, v4 * v5);
      return [v2 setTransform:&v6];
    }
  }

  return result;
}

uint64_t sub_9B84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_9C10()
{
  result = qword_587A8;
  if (!qword_587A8)
  {
    _s10descr51419V18TransitioningFontsCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_587A8);
  }

  return result;
}

uint64_t sub_9CBC()
{
  v0 = sub_815C(&qword_587B0);
  sub_9EC8(v0, qword_5CC80);
  v1 = sub_9F2C(v0, qword_5CC80);
  sub_37340();
  v2 = type metadata accessor for ProgressSpring();
  *(v1 + *(v2 + 24)) = 0x3FE999999999999ALL;
  *(v1 + *(v2 + 20)) = 0;
  v3 = v1 + *(v0 + 52);
  result = sub_37340();
  *(v3 + *(v2 + 24)) = 0x3FE999999999999ALL;
  *(v3 + *(v2 + 20)) = 0;
  return result;
}

id sub_9DA4()
{
  if (qword_58550 != -1)
  {
    swift_once();
  }

  qword_5CC98 = qword_5CCD0;
  unk_5CCA0 = qword_5CCD0;
  v0 = qword_5CCD0;

  return v0;
}

uint64_t sub_9E10()
{
  if (qword_58550 != -1)
  {
    swift_once();
  }

  v0 = qword_58548;
  v1 = qword_5CCD0;
  if (v0 != -1)
  {
    v2 = v1;
    swift_once();
    v1 = v2;
  }

  qword_5CCA8 = v1;
  unk_5CCB0 = qword_5CCC8;

  return _objc_retain_x1();
}

uint64_t *sub_9EC8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_9F2C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_9FF0()
{
  v36 = sub_34A0C(&_swiftEmptyArrayStorage);
  sub_815C(&qword_58810);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_414E0;
  sub_815C(&qword_58818);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 16) = xmmword_414F0;
  v4 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  v5 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 40) = 35;
  *(inited + 48) = v5;
  v6 = 2;
  if (!*(v0 + OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetOne))
  {
    v6 = 3;
  }

  *(inited + 56) = v6;
  v7 = v4;
  v8 = v5;
  v9 = v7;
  v10 = v8;
  v11 = sub_34A30(v3);
  swift_setDeallocating();
  sub_815C(&qword_58820);
  swift_arrayDestroy();
  *(v1 + 32) = v11;
  v12 = swift_initStackObject();
  v13 = v12;
  *(v12 + 16) = xmmword_414F0;
  *(v12 + 32) = v9;
  *(v12 + 40) = 35;
  *(v12 + 48) = v10;
  v14 = 4;
  if (!*(v0 + OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetTwo))
  {
    v14 = 5;
  }

  *(v12 + 56) = v14;
  v15 = v9;
  v16 = v10;
  v17 = sub_34A30(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v1 + 40) = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_414F0;
  *(v18 + 32) = v15;
  *(v18 + 40) = 35;
  *(v18 + 48) = v16;
  *(v18 + 56) = 7;
  v19 = v15;
  v20 = v16;
  v21 = v19;
  v22 = v20;
  v23 = sub_34A30(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v1 + 48) = v23;
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_414F0;
  *(v24 + 32) = v21;
  *(v24 + 40) = 36;
  *(v24 + 48) = v22;
  *(v24 + 56) = (*(v0 + OBJC_IVAR___NTKWarlockTypefaceAttributes_enableContextualAlternates) & 1) == 0;
  v25 = sub_34A30(v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v1 + 56) = v25;
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_414F0;
  *(v26 + 32) = v21;
  *(v26 + 40) = 1;
  *(v26 + 48) = v22;
  v27 = 4;
  if (!*(v0 + OBJC_IVAR___NTKWarlockTypefaceAttributes_enableDiscretionaryLigatures))
  {
    v27 = 5;
  }

  *(v26 + 56) = v27;
  v28 = sub_34A30(v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v1 + 64) = v28;
  v39 = sub_815C(&qword_58828);
  *&v38 = v1;
  sub_85DC(&v38, v37);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_C83C(v37, UIFontDescriptorFeatureSettingsAttribute, isUniquelyReferenced_nonNull_native);
  if ((*(v0 + OBJC_IVAR___NTKWarlockTypefaceAttributes_fontWeight + 8) & 1) == 0)
  {
    v30 = *(v0 + OBJC_IVAR___NTKWarlockTypefaceAttributes_fontWeight);
    sub_37530();
    v31 = sub_37500();

    sub_815C(&qword_58830);
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_41500;
    *(v32 + 32) = TextToFourCharCode();
    *(v32 + 40) = v30;
    v33 = sub_34B1C(v32);
    swift_setDeallocating();
    v39 = sub_815C(&qword_58838);
    *&v38 = v33;
    sub_85DC(&v38, v37);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    sub_C83C(v37, v31, v34);
  }

  return v36;
}

uint64_t sub_A4C0()
{
  v10 = sub_37760();
  if (*(v0 + OBJC_IVAR___NTKWarlockTypefaceAttributes_fontWeight + 8))
  {
    v11._countAndFlagsBits = 0x656E6F6E2DLL;
    v11._object = 0xE500000000000000;
    sub_375D0(v11);
  }

  else
  {
    v12._countAndFlagsBits = sub_37760();
    sub_375D0(v12);

    v13._countAndFlagsBits = 45;
    v13._object = 0xE100000000000000;
    sub_375D0(v13);
  }

  if (*(v0 + OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetOne))
  {
    v1._countAndFlagsBits = 0x6E6F2E31307373;
  }

  else
  {
    v1._countAndFlagsBits = 0x66666F2E31307373;
  }

  if (*(v0 + OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetOne))
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  v1._object = v2;
  sub_375D0(v1);

  v14._countAndFlagsBits = 45;
  v14._object = 0xE100000000000000;
  sub_375D0(v14);

  if (*(v0 + OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetTwo))
  {
    v3._countAndFlagsBits = 0x6E6F2E32307373;
  }

  else
  {
    v3._countAndFlagsBits = 0x66666F2E32307373;
  }

  if (*(v0 + OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetTwo))
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  v3._object = v4;
  sub_375D0(v3);

  v15._countAndFlagsBits = 45;
  v15._object = 0xE100000000000000;
  sub_375D0(v15);

  v16._countAndFlagsBits = 0x666F2E333073732DLL;
  v16._object = 0xE900000000000066;
  sub_375D0(v16);
  if (*(v0 + OBJC_IVAR___NTKWarlockTypefaceAttributes_enableContextualAlternates))
  {
    v5._countAndFlagsBits = 0x6E6F2E746C6163;
  }

  else
  {
    v5._countAndFlagsBits = 0x66666F2E746C6163;
  }

  if (*(v0 + OBJC_IVAR___NTKWarlockTypefaceAttributes_enableContextualAlternates))
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v5._object = v6;
  sub_375D0(v5);

  v17._countAndFlagsBits = 45;
  v17._object = 0xE100000000000000;
  sub_375D0(v17);

  if (*(v0 + OBJC_IVAR___NTKWarlockTypefaceAttributes_enableDiscretionaryLigatures))
  {
    v7._countAndFlagsBits = 0x6E6F2E67696C64;
  }

  else
  {
    v7._countAndFlagsBits = 0x66666F2E67696C64;
  }

  if (*(v0 + OBJC_IVAR___NTKWarlockTypefaceAttributes_enableDiscretionaryLigatures))
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  v7._object = v8;
  sub_375D0(v7);

  v18._countAndFlagsBits = 45;
  v18._object = 0xE100000000000000;
  sub_375D0(v18);

  return v10;
}

id sub_A788()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WarlockTypefaceAttributes();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_A7E0()
{
  result = qword_586F0;
  if (!qword_586F0)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_586F0);
  }

  return result;
}

id sub_A838(char a1, uint64_t a2)
{
  v2 = [swift_getObjCClassFromMetadata() _optionWithValue:a1 & 1 forDevice:a2];

  return v2;
}

id sub_A8A0(uint64_t a1, void *a2)
{
  sub_AC28(a1, v16);
  v5 = v17;
  if (v17)
  {
    v6 = sub_AD00(v16, v17);
    v7 = *(v5 - 8);
    __chkstk_darwin(v6);
    v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_37AC0();
    (*(v7 + 8))(v9, v5);
    sub_85EC(v16);
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for WarlockTypefaceEditOption();
  v15.receiver = v2;
  v15.super_class = v11;
  v12 = objc_msgSendSuper2(&v15, "initWithJSONObjectRepresentation:forDevice:", v10, a2);

  swift_unknownObjectRelease();
  v13 = v12;
  sub_AC98(a1);
  if (v13)
  {
  }

  return v13;
}

id sub_AA1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = a4;
    swift_unknownObjectRetain();
    sub_378E0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v6 = a4;
  }

  return sub_A8A0(v8, a4);
}

id sub_AA90(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for WarlockTypefaceEditOption();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_AAE0(void *a1, uint64_t a2, void *a3, const char **a4)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for WarlockTypefaceEditOption();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id sub_AB5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WarlockTypefaceEditOption();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WarlockTypefaceEditOption()
{
  result = qword_58868;
  if (!qword_58868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_AC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_815C(&qword_58930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AC98(uint64_t a1)
{
  v2 = sub_815C(&qword_58930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_AD00(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_AE74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [a3 pointSize];
  v6 = v5 * 0.8;
  [a3 pointSize];
  v8 = v7;
  [v4 setMinimumLineHeight:v6];
  [v4 setMaximumLineHeight:v6];
  [v4 setAlignment:2];
  [v4 setLineBreakMode:2];
  [v4 setLineSpacing:0.0];
  sub_815C(&qword_58968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_415C0;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v10 = sub_B2AC(0, &qword_58970);
  *(inited + 40) = v4;
  *(inited + 64) = v10;
  *(inited + 72) = NSFontAttributeName;
  v11 = sub_B2AC(0, &qword_58978);
  *(inited + 80) = a3;
  *(inited + 104) = v11;
  *(inited + 112) = NSBaselineOffsetAttributeName;
  *(inited + 120) = v8 * -0.2;
  *(inited + 144) = &type metadata for CGFloat;
  *(inited + 152) = NSForegroundColorAttributeName;
  v12 = objc_opt_self();
  v13 = NSParagraphStyleAttributeName;
  v14 = v4;
  v15 = NSFontAttributeName;
  v16 = a3;
  v17 = NSBaselineOffsetAttributeName;
  v18 = NSForegroundColorAttributeName;
  v19 = [v12 whiteColor];
  *(inited + 184) = sub_B2AC(0, &qword_58980);
  *(inited + 160) = v19;
  sub_34BFC(inited);
  swift_setDeallocating();
  sub_815C(&qword_58988);
  swift_arrayDestroy();
  v20 = objc_allocWithZone(NSAttributedString);
  v21 = sub_37500();
  type metadata accessor for Key(0);
  sub_B2F4();
  isa = sub_374C0().super.isa;

  v23 = [v20 initWithString:v21 attributes:isa];

  v24 = *&v26[OBJC_IVAR___NTKWarlockSwatchTimeLabel_timeLabel];
  [v24 setAttributedText:v23];
  [v24 sizeToFit];
  [v26 bounds];
  MidX = CGRectGetMidX(v27);
  [v26 bounds];
  [v24 setCenter:{MidX, CGRectGetMidY(v28)}];
}

id sub_B244()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WarlockSwatchTimeLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_B2AC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_B2F4()
{
  result = qword_58710;
  if (!qword_58710)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_58710);
  }

  return result;
}

__n128 sub_B34C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_B378(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_B3C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_B428(char a1, uint64_t a2)
{
  v3 = *(v2 + 96);
  v4 = 0.0;
  if (*(v3 + 16))
  {
    v6 = sub_33810(a1 & 1);
    if (v7)
    {
      v8 = *(*(v3 + 56) + 8 * v6);
      if (*(v8 + 16))
      {
        v9 = sub_3387C(a2);
        if (v10)
        {
          return *(*(v8 + 56) + 8 * v9);
        }
      }
    }
  }

  return v4;
}

double sub_B494(char a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a1)
  {
    v4 = *(a2 + 72);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 48;
      while (*(v6 - 16) > a3 || *(v6 - 8) < a3)
      {
        v6 += 24;
        if (!--v5)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v6 = a2 + 88;
    }
  }

  else
  {
    v8 = *(a2 + 40);
    if (*(v8 + 16) && (v9 = a2, v11 = sub_33810(a4 & 1), v13 = v12, a2 = v9, (v13 & 1) != 0) && (v14 = *(*(v8 + 56) + 8 * v11), (v15 = *(v14 + 16)) != 0))
    {
      v6 = v14 + 48;
      while (*(v6 - 16) > a3 || *(v6 - 8) < a3)
      {
        v6 += 24;
        if (!--v15)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
      v6 = a2 + 48;
    }
  }

  return *v6;
}

void *sub_B554()
{
  v1 = v0;
  sub_815C(&qword_58788);
  v2 = *v0;
  v3 = sub_37A50();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_D2D8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_D334(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_85DC(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_B6F8(uint64_t *a1)
{
  v2 = v1;
  sub_815C(a1);
  v3 = *v1;
  v4 = sub_37A50();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
        *(*(v5 + 56) + 8 * v18) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_B844()
{
  v1 = v0;
  sub_815C(&qword_589B0);
  v2 = *v0;
  v3 = sub_37A50();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_B990()
{
  v1 = v0;
  sub_815C(&qword_589B8);
  v2 = *v0;
  v3 = sub_37A50();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_D334(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_85DC(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_BB10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_815C(&qword_58788);
  result = sub_37A60();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_85DC((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_D2D8(v23, &v36);
        sub_D334(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_37900(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_85DC(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_BDC8(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_815C(a3);
  v31 = a2;
  result = sub_37A60();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v31 & 1) == 0)
      {
      }

      sub_37B30();
      sub_37B40(v21);
      result = sub_37B80();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v3;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_C050(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_815C(&qword_589B0);
  result = sub_37A60();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_37B30();
      sub_37B40(v20);
      result = sub_37B80();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_C2D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_815C(&qword_589B8);
  v35 = a2;
  result = sub_37A60();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_85DC(v22, v36);
      }

      else
      {
        sub_D334(v22, v36);
        v23 = v21;
      }

      sub_37530();
      sub_37B30();
      sub_375A0();
      v24 = sub_37B80();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_85DC(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_C5A4(uint64_t a1, char a2, char a3, uint64_t *a4)
{
  v6 = v4;
  v9 = *v4;
  v10 = a2 & 1;
  result = sub_33810(a2 & 1);
  v13 = *(v9 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v9 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_BDC8(v16, a3 & 1, a4);
      result = sub_33810(v10);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_37AF0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_B6F8(a4);
      result = v19;
    }
  }

  v21 = *v6;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = v10;
    *(v21[7] + 8 * result) = a1;
    v22 = v21[2];
    v15 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v15)
    {
      v21[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;
}

unint64_t sub_C714(Swift::UInt a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_338C0(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_B844();
    result = v17;
    goto LABEL_8;
  }

  sub_C050(v14, a2 & 1);
  result = sub_338C0(a1);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a3;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a1;
    *(v19[7] + 8 * result) = a3;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  type metadata accessor for CLKDeviceSizeClass(0);
  result = sub_37AF0();
  __break(1u);
  return result;
}

_OWORD *sub_C83C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_339E0(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_B990();
      v8 = v16;
      goto LABEL_8;
    }

    sub_C2D4(v13, a3 & 1);
    v8 = sub_339E0(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for AttributeName(0);
      result = sub_37AF0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_85EC(v19);

    return sub_85DC(a1, v19);
  }

  else
  {
    sub_C97C(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_C97C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_85DC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

__n128 sub_C9E4@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = sub_344A4(&_swiftEmptyArrayStorage);
  v4 = sub_344B8(&_swiftEmptyArrayStorage);
  v5 = [objc_allocWithZone(CLKDeviceMetrics) initWithDevice:a1 identitySizeClass:7];
  sub_345D4(&off_51BA8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_C714(9uLL, isUniquelyReferenced_nonNull_native, 36.0);
  sub_37810();
  v8 = v7;

  v56 = v8 * 0.5;
  sub_345D4(&off_51C38);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_C714(9uLL, v9, 145.0);
  sub_37810();
  v11 = v10;

  v55 = v11 * 0.5;
  sub_345D4(&off_51CC8);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_C714(9uLL, v12, 368.0);
  sub_37810();
  v14 = v13;

  [v5 setScale:2 forSizeClass:0.87];
  [v5 setScale:3 forSizeClass:1.0];
  [v5 setScale:4 forSizeClass:0.94];
  [v5 setScale:5 forSizeClass:1.06];
  [v5 setScale:7 forSizeClass:1.0];
  [v5 setScale:8 forSizeClass:1.11];
  [v5 setScale:6 forSizeClass:1.1];
  [v5 setScale:9 forSizeClass:1.13];
  [v5 scaledValue:239.0];
  v16 = v15 * 0.5;
  sub_815C(&qword_58990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_414F0;
  *(inited + 32) = 1;
  [v5 scaledValue:-17.0];
  *(inited + 40) = v18 * 0.5;
  *(inited + 48) = 5;
  [v5 scaledValue:10.0];
  *(inited + 56) = v19 * 0.5;
  v20 = sub_346B4(inited);
  swift_setDeallocating();
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_C5A4(v20, 0, v21, &qword_589A8);
  v22 = swift_initStackObject();
  *(v22 + 16) = 2;
  *(v22 + 24) = xmmword_41660;
  [v5 scaledValue:-14.0];
  *(v22 + 40) = v23 * 0.5;
  *(v22 + 48) = 5;
  [v5 scaledValue:2.0];
  *(v22 + 56) = v24 * 0.5;
  v25 = sub_346B4(v22);
  swift_setDeallocating();
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_C5A4(v25, 1, v26, &qword_589A8);
  [v5 setScale:2 forSizeClass:0.8625];
  [v5 setScale:3 forSizeClass:0.98];
  [v5 setScale:4 forSizeClass:0.9425];
  [v5 setScale:5 forSizeClass:1.0525];
  [v5 setScale:7 forSizeClass:1.0];
  [v5 setScale:8 forSizeClass:1.1075];
  [v5 setScale:6 forSizeClass:1.1025];
  [v5 setScale:9 forSizeClass:1.125];
  [v5 scaledValue:365.0];
  v28 = v27 * 0.5;
  sub_815C(&qword_58998);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_41670;
  [v5 scaledValue:200.0];
  *(v29 + 32) = xmmword_41680;
  *(v29 + 48) = v30;
  [v5 scaledValue:205.0];
  v53 = vdupq_n_s64(4uLL);
  *(v29 + 56) = v53;
  *(v29 + 72) = v31;
  [v5 scaledValue:205.0];
  *(v29 + 80) = xmmword_41690;
  *(v29 + 96) = v32;
  [v5 scaledValue:182.5];
  *(v29 + 104) = xmmword_416A0;
  *(v29 + 120) = v33;
  [v5 scaledValue:145.0];
  v59 = vdupq_n_s64(0x14uLL);
  *(v29 + 128) = v59;
  *(v29 + 144) = v34;
  [v5 scaledValue:182.5];
  v58 = vdupq_n_s64(0x15uLL);
  *(v29 + 152) = v58;
  *(v29 + 168) = v35;
  [v5 scaledValue:145.0];
  *(v29 + 176) = xmmword_416B0;
  *(v29 + 192) = v36;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_C5A4(v29, 0, v37, &qword_589A0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_41670;
  [v5 scaledValue:200.0];
  *(v38 + 32) = xmmword_41680;
  *(v38 + 48) = v39;
  [v5 scaledValue:205.0];
  *(v38 + 56) = v53;
  *(v38 + 72) = v40;
  [v5 scaledValue:205.0];
  *(v38 + 80) = xmmword_41690;
  *(v38 + 96) = v41;
  [v5 scaledValue:182.5];
  *(v38 + 104) = xmmword_416A0;
  *(v38 + 120) = v42;
  [v5 scaledValue:150.0];
  *(v38 + 128) = v59;
  *(v38 + 144) = v43;
  [v5 scaledValue:182.5];
  *(v38 + 152) = v58;
  *(v38 + 168) = v44;
  [v5 scaledValue:150.0];
  *(v38 + 176) = xmmword_416B0;
  *(v38 + 192) = v45;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  sub_C5A4(v38, 1, v46, &qword_589A0);
  [v5 scaledValue:95.0];
  v48 = v47 * 0.5;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_415C0;
  *(v49 + 32) = xmmword_416C0;
  *(v49 + 48) = v48 * 1.8;
  *(v49 + 56) = v59;
  *(v49 + 72) = v48 * 1.4;
  *(v49 + 80) = v58;
  *(v49 + 96) = v48 * 1.8;
  *(v49 + 104) = xmmword_416B0;
  *(v49 + 120) = v48 * 1.4;

  *&v61 = 0x4008000000000000;
  *(&v61 + 1) = v56;
  *&v62 = v55;
  *(&v62 + 1) = v14 * 0.5;
  *&v63 = v16;
  *(&v63 + 1) = v54;
  v64.n128_f64[0] = v28;
  v64.n128_f64[1] = UIFontWeightMedium;
  *&v65 = &off_51D58;
  *(&v65 + 1) = v49;
  *&v66 = 0x4079000000000000;
  *(&v66 + 1) = v48;
  v67 = v4;
  v68[0] = 0x4008000000000000;
  *&v68[1] = v56;
  *&v68[2] = v55;
  *&v68[3] = v14 * 0.5;
  *&v68[4] = v16;
  v68[5] = v54;
  *&v68[6] = v28;
  *&v68[7] = UIFontWeightMedium;
  v68[8] = &off_51D58;
  v68[9] = v49;
  v68[10] = 0x4079000000000000;
  *&v68[11] = v48;
  v68[12] = v4;
  sub_D2A0(&v61, v60);
  sub_9C68(v68);
  v50 = v66;
  *(a2 + 64) = v65;
  *(a2 + 80) = v50;
  *(a2 + 96) = v67;
  v51 = v62;
  *a2 = v61;
  *(a2 + 16) = v51;
  result = v64;
  *(a2 + 32) = v63;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_D334(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 initializeBufferWithCopyOfBuffer for WarlockTypefaceMetrics.HourRule(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WarlockTypefaceMetrics.HourRule(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WarlockTypefaceMetrics.HourRule(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for WarlockTypeface(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WarlockTypeface(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_D578()
{
  result = qword_589C0;
  if (!qword_589C0)
  {
    sub_D5DC(&qword_589C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_589C0);
  }

  return result;
}

uint64_t sub_D5DC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

Swift::Int sub_D63C()
{
  v1 = *v0;
  sub_37B30();
  sub_37B40(v1);
  return sub_37B80();
}

Swift::Int sub_D6B0()
{
  v1 = *v0;
  sub_37B30();
  sub_37B40(v1);
  return sub_37B80();
}

void *sub_D6F4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_D730()
{
  if (*v0)
  {
    return 0x64696C6F73;
  }

  else
  {
    return 0x6C69636E657473;
  }
}

unint64_t sub_D790(uint64_t a1)
{
  *(a1 + 8) = sub_D7C0();
  result = sub_D814();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_D7C0()
{
  result = qword_589D0;
  if (!qword_589D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_589D0);
  }

  return result;
}

unint64_t sub_D814()
{
  result = qword_589D8;
  if (!qword_589D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_589D8);
  }

  return result;
}

unint64_t sub_D86C()
{
  result = qword_589E0[0];
  if (!qword_589E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_589E0);
  }

  return result;
}

id sub_D994(void *a1)
{
  v1 = a1;
  sub_DA0C(v1);
  v3 = v2;

  if (v3)
  {
    v4 = sub_37500();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_DA0C(uint64_t a1)
{
  v2 = *v1;
  v3 = swift_isaMask;
  v4 = *(&stru_20.filesize + (swift_isaMask & *v1));
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = &v12 - v6;
  v8 = [v1 _value];
  v9 = *(&stru_20.maxprot + (v3 & v2));
  (*(v9 + 24))(v8, v4, v9);
  v10 = sub_2CE4C(v7, v4, v9);
  (*(v5 + 8))(v7, v4);
  return v10;
}

id sub_DB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_E37C(a3, *(ObjCClassMetadata + 80), *(ObjCClassMetadata + 88));
  if (v5)
  {
    v6 = sub_37500();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

Class sub_DBAC(void *a1)
{
  if (sub_E484(*(&stru_20.filesize + (swift_isaMask & *a1)), *(&stru_20.maxprot + (swift_isaMask & *a1))))
  {
    v1.super.isa = sub_374C0().super.isa;
  }

  else
  {
    v1.super.isa = 0;
  }

  return v1.super.isa;
}

char *sub_DC58(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_37A40();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_34144(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_37960();
        sub_79FC();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_34144((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_85DC(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_79FC();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_34144((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_85DC(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

Class sub_DE24()
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (sub_E4A8(*(ObjCClassMetadata + 80), *(ObjCClassMetadata + 88)))
  {
    v1.super.isa = sub_376A0().super.isa;
  }

  else
  {
    v1.super.isa = 0;
  }

  return v1.super.isa;
}

id sub_DE90(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WarlockEditOption();
  v3 = objc_msgSendSuper2(&v5, "initWithDevice:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_DF60(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_AC28(a1, v17);
  v6 = v18;
  if (v18)
  {
    v7 = sub_AD00(v17, v18);
    v8 = *(v6 - 8);
    __chkstk_darwin(v7);
    v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_37AC0();
    (*(v8 + 8))(v10, v6);
    sub_85EC(v17);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for WarlockEditOption();
  v16.receiver = v3;
  v16.super_class = v12;
  v13 = objc_msgSendSuper2(&v16, "initWithJSONObjectRepresentation:forDevice:", v11, a2);

  swift_unknownObjectRelease();
  v14 = v13;
  sub_AC98(a1);
  if (v14)
  {
  }

  return v14;
}

id sub_E124(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = a4;
    swift_unknownObjectRetain();
    sub_378E0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v6 = a4;
  }

  return sub_DF60(v8, a4);
}

id sub_E198()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WarlockEditOption();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_E22C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WarlockEditOption();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_E2F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WarlockEditOption();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_E37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 24))(v6);
  v10 = (*(a3 + 32))(a2, a3);
  (*(v5 + 8))(v8, a2);
  return v10;
}

char *sub_E4A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = sub_E504();
  v6 = sub_14220(a1, v3, v4, v5);
  v7 = sub_DC58(v6);

  return v7;
}

unint64_t sub_E504()
{
  result = qword_58A68;
  if (!qword_58A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_58A68);
  }

  return result;
}

uint64_t sub_E588(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_E5AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_E600(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_E65C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_E68C(uint64_t a1)
{
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 20) & 3;
  }
}

__n128 sub_E6A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_E6BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 21))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 20);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_E704(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

uint64_t sub_E74C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
  }

  *(result + 20) = a2;
  return result;
}

uint64_t _s10descr51419V15BackgroundStyleOMa()
{
  result = qword_58AE0;
  if (!qword_58AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E814()
{
  result = sub_37330();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_E880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[2] = a2;
  v5 = sub_373C0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v25 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = v25 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v25 - v17;
  __chkstk_darwin(v16);
  v20 = v25 - v19;
  v21 = sub_373F0();
  v22 = __chkstk_darwin(v21);
  if (BYTE4(a3))
  {
    v25[1] = v22;
    if (BYTE4(a3) == 1)
    {
      v25[0] = a3;
      LOBYTE(v26) = 1;
      sub_373B0();
      sub_37380();
      v23 = *(v6 + 8);
      v23(v15, v5);
      LOBYTE(v26) = 1;
      sub_373B0();
      sub_37380();
      v23(v9, v5);
      sub_37390();
      v23(v12, v5);
      sub_373A0();
      v23(v15, v5);
      v23(v18, v5);
      sub_373E0();
      v23(v20, v5);
    }

    else
    {
      sub_373D0();
    }
  }

  else
  {
    v26 = a1;
    sub_F1A8();

    v26 = sub_37260();
  }

  return sub_36E20();
}

uint64_t sub_EBCC(uint64_t a1, void *a2, uint64_t a3)
{
  if (!BYTE4(a3))
  {
    v6 = 0x5F726F6C6F63;
    v10._countAndFlagsBits = sub_371C0();
    sub_375D0(v10);

    return v6;
  }

  if (BYTE4(a3) == 1)
  {
    v6 = 0;
    v7._countAndFlagsBits = 0x5F7373616C67;
    v7._object = 0xE600000000000000;
    sub_375D0(v7);
    v8._countAndFlagsBits = a1;
    v8._object = a2;
    sub_375D0(v8);
    v9._countAndFlagsBits = 95;
    v9._object = 0xE100000000000000;
    sub_375D0(v9);
    sub_37770();
    return v6;
  }

  return 0x746E6172626976;
}

void sub_ECC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (BYTE4(a4))
  {
    if (BYTE4(a4) == 1)
    {
      v4 = a4;
      sub_37B40(0);
      sub_375A0();
      if ((v4 & 0x7FFFFF) == 0 && (v4 & 0x7F800000) == 0)
      {
        v6 = 0;
      }

      else
      {
        v6 = v4;
      }

      sub_37B50(v6);
    }

    else
    {
      sub_37B40(1uLL);
    }
  }

  else
  {
    sub_37B40(2uLL);

    sub_37210();
  }
}

uint64_t sub_ED74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_EBCC(*v1, *(v1 + 8), *(v1 + 16) | (*(v1 + 20) << 32));
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_EDAC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  sub_37B30();
  sub_ECC8(v6, v1, v2, v3 | (v4 << 32));
  return sub_37B80();
}

Swift::Int sub_EE20()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  sub_37B30();
  sub_ECC8(v6, v1, v2, v3 | (v4 << 32));
  return sub_37B80();
}

uint64_t sub_EE7C(float *a1, float *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 20);
  if (*(a1 + 20))
  {
    v6 = *(a2 + 1);
    v7 = a2[4];
    if (*(a1 + 20) == 1)
    {
      if (v5 == 1)
      {
        v8 = a1[4];
        v9 = v3 == v4 && *(a1 + 1) == v6;
        if (v9 || (sub_37AD0() & 1) != 0)
        {
          return v8 == v7;
        }
      }

      return 0;
    }

    return v5 == 2 && (v6 | v4) == 0 && LODWORD(v7) == 0;
  }

  else
  {
    if (*(a2 + 20))
    {
      return 0;
    }

    return sub_371D0();
  }
}

Swift::Int sub_EF48()
{
  v1 = *v0;
  sub_37B30();
  if (v1)
  {
    if (v1 != 1)
    {
      sub_37B40(2uLL);
      sub_37210();
      return sub_37B80();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  sub_37B40(v2);
  return sub_37B80();
}

void sub_EFBC()
{
  if (!*v0)
  {
    v1 = 0;
    goto LABEL_5;
  }

  if (*v0 == 1)
  {
    v1 = 1;
LABEL_5:
    sub_37B40(v1);
    return;
  }

  sub_37B40(2uLL);

  sub_37210();
}

Swift::Int sub_F03C()
{
  v1 = *v0;
  sub_37B30();
  if (v1)
  {
    if (v1 != 1)
    {
      sub_37B40(2uLL);
      sub_37210();
      return sub_37B80();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  sub_37B40(v2);
  return sub_37B80();
}

uint64_t sub_F0AC(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return sub_371D0();
}

unint64_t sub_F0F0()
{
  result = qword_58B18;
  if (!qword_58B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_58B18);
  }

  return result;
}

unint64_t sub_F148()
{
  result = qword_58B20;
  if (!qword_58B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_58B20);
  }

  return result;
}

unint64_t sub_F1A8()
{
  result = qword_58B28;
  if (!qword_58B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_58B28);
  }

  return result;
}

uint64_t sub_F1FC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6C61727574616ELL;
    v6 = 0x7265766C6973;
    if (a1 != 2)
    {
      v6 = 0x6B63616C6274656ALL;
    }

    if (a1)
    {
      v5 = 0x646C6F6765736F72;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x33306F726568;
    v2 = 0x34306F726568;
    if (a1 != 7)
    {
      v2 = 0x35306F726568;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x31306F726568;
    if (a1 != 4)
    {
      v3 = 0x32306F726568;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_F304()
{
  sub_37B30();
  sub_309BC();
  return sub_37B80();
}

Swift::Int sub_F354()
{
  sub_37B30();
  sub_309BC();
  return sub_37B80();
}

uint64_t sub_F398@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_F3F4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_F3C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_F1FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_F3F4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_51DD8;
  v6._object = a2;
  v4 = sub_37A90(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t getEnumTagSinglePayload for WarlockColorOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WarlockColorOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_F59C()
{
  result = qword_58B30;
  if (!qword_58B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_58B30);
  }

  return result;
}

void sub_F5F0()
{
  v1 = [v0 timeSubstringToSeparatorText];
  if (!v1)
  {
    goto LABEL_72;
  }

  v2 = v1;
  v3 = sub_37530();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  v7 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    v35 = 0;
    sub_F91C(v3, v5, 10);
    goto LABEL_64;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v34[0] = v3;
    v34[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    if (v3 == 43)
    {
      if (v6)
      {
        if (--v6)
        {
          v23 = 0;
          v24 = v34 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v6)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      goto LABEL_71;
    }

    if (v3 != 45)
    {
      if (v6)
      {
        v30 = 0;
        v31 = v34;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v30;
          if ((v30 * 10) >> 64 != (10 * v30) >> 63)
          {
            break;
          }

          v30 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          ++v31;
          if (!--v6)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    if (v6)
    {
      if (--v6)
      {
        v15 = 0;
        v16 = v34 + 1;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          v18 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          ++v16;
          if (!--v6)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }
  }

  else
  {
    if ((v3 & 0x1000000000000000) != 0)
    {
      v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v9 = sub_37980();
    }

    v10 = *v9;
    if (v10 == 43)
    {
      if (v7 >= 1)
      {
        v6 = v7 - 1;
        if (v7 != 1)
        {
          v19 = 0;
          if (v9)
          {
            v20 = v9 + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                goto LABEL_62;
              }

              v22 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_62;
              }

              v19 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                goto LABEL_62;
              }

              ++v20;
              if (!--v6)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_54;
        }

        goto LABEL_62;
      }

      goto LABEL_70;
    }

    if (v10 != 45)
    {
      if (v7)
      {
        v27 = 0;
        if (v9)
        {
          while (1)
          {
            v28 = *v9 - 48;
            if (v28 > 9)
            {
              goto LABEL_62;
            }

            v29 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              goto LABEL_62;
            }

            v27 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_62;
            }

            ++v9;
            if (!--v7)
            {
              goto LABEL_54;
            }
          }
        }

        goto LABEL_54;
      }

LABEL_62:
      LOBYTE(v6) = 1;
      goto LABEL_63;
    }

    if (v7 >= 1)
    {
      v6 = v7 - 1;
      if (v7 != 1)
      {
        v11 = 0;
        if (v9)
        {
          v12 = v9 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_62;
            }

            v14 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_62;
            }

            v11 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_62;
            }

            ++v12;
            if (!--v6)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_54:
        LOBYTE(v6) = 0;
LABEL_63:
        v35 = v6;
LABEL_64:

        return;
      }

      goto LABEL_62;
    }

    __break(1u);
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

unsigned __int8 *sub_F91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_37650();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_FEA8();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_37980();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_FEA8()
{
  v0 = sub_37660();
  v4 = sub_FF28(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_FF28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_37880();
    if (!v9 || (v10 = v9, v11 = sub_2F7E8(v9, 0), v12 = sub_10080(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_37590();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_37590();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_37980();
LABEL_4:

  return sub_37590();
}

unint64_t sub_10080(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_102A0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_37610();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_37980();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_102A0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_375F0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_102A0(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_37620();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_37600();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1031C()
{

  return _swift_deallocClassInstance(v0, 68, 7);
}

uint64_t sub_10354()
{

  sub_103EC(*(v0 + 32));

  return _swift_deallocClassInstance(v0, 84, 7);
}

uint64_t sub_103EC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_103FC()
{
  swift_getKeyPath();
  sub_111E4(&qword_587A8);
  sub_36CD0();

  v1 = *(v0 + 16);

  return v1;
}

id sub_10498@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_111E4(&qword_587A8);
  sub_36CD0();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1053C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_B2AC(0, &qword_59380);
  v5 = v4;
  v6 = sub_37860();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_111E4(&qword_587A8);
    sub_36CC0();
  }
}

id sub_10694()
{
  swift_getKeyPath();
  sub_111E4(&qword_587A8);
  sub_36CD0();

  v1 = *(v0 + 24);

  return v1;
}

id sub_10730@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_111E4(&qword_587A8);
  sub_36CD0();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_107D4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  sub_B2AC(0, &qword_59380);
  v5 = v4;
  v6 = sub_37860();

  if (v6)
  {
    v7 = *(v2 + 24);
    *(v2 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_111E4(&qword_587A8);
    sub_36CC0();
  }
}

double sub_1092C()
{
  swift_getKeyPath();
  sub_111E4(&qword_587A8);
  sub_36CD0();

  return *(v0 + 32);
}

double sub_109B8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_111E4(&qword_587A8);
  sub_36CD0();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

void sub_10A74(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_111E4(&qword_587A8);
    sub_36CC0();
  }
}

void sub_10B80()
{
  v1 = v0;
  swift_getKeyPath();
  sub_111E4(&qword_587A8);
  sub_36CD0();

  v2 = [*(v0 + 16) fontName];
  sub_37530();

  sub_375A0();

  swift_getKeyPath();
  sub_36CD0();

  [*(v1 + 16) pointSize];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_37B60(*&v3);
  swift_getKeyPath();
  sub_36CD0();

  v4 = [*(v1 + 24) fontName];
  sub_37530();

  sub_375A0();

  swift_getKeyPath();
  sub_36CD0();

  [*(v1 + 24) pointSize];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  sub_37B60(*&v5);
  swift_getKeyPath();
  sub_36CD0();

  v6 = *(v1 + 32);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  sub_37B60(*&v6);
}

uint64_t sub_10DD4()
{
  v1 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel18TransitioningFonts___observationRegistrar;
  v2 = sub_36CF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t _s10descr51419V18TransitioningFontsCMa()
{
  result = qword_58E38;
  if (!qword_58E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10ED4()
{
  result = sub_36CF0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_10F84()
{
  v0 = sub_110A4();

  return v0;
}

Swift::Int sub_10FBC()
{
  sub_37B30();
  sub_10B80();
  return sub_37B80();
}

Swift::Int sub_11024()
{
  sub_37B30();
  sub_10B80();
  return sub_37B80();
}

uint64_t sub_110A4()
{
  swift_getKeyPath();
  sub_111E4(&qword_587A8);
  sub_36CD0();

  if (*(v0 + 32) >= 0.5)
  {
    swift_getKeyPath();
    sub_36CD0();

    v1 = 24;
  }

  else
  {
    swift_getKeyPath();
    sub_36CD0();

    v1 = 16;
  }

  return *(v0 + v1);
}

uint64_t sub_111E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s10descr51419V18TransitioningFontsCMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_11288(uint64_t a1, uint64_t a2)
{
  sub_B2AC(0, &qword_58FC0);
  swift_getKeyPath();
  sub_111E4(&qword_587A8);
  sub_36CD0();

  v4 = *(a1 + 16);
  swift_getKeyPath();
  v5 = v4;
  sub_36CD0();

  v6 = *(a2 + 16);
  LOBYTE(v4) = sub_37860();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_36CD0();

  v7 = *(a1 + 24);
  swift_getKeyPath();
  v8 = v7;
  sub_36CD0();

  v9 = *(a2 + 24);
  LOBYTE(v7) = sub_37860();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_36CD0();

  v10 = *(a1 + 32);
  swift_getKeyPath();
  sub_36CD0();

  return v10 == *(a2 + 32);
}

double sub_114D0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

void sub_114E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

void sub_11518()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

unint64_t sub_11564()
{
  result = qword_58FC8;
  if (!qword_58FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_58FC8);
  }

  return result;
}

void sub_115B8(double a1)
{
  v2 = *v1;
  if (*(v2 + 32) == a1)
  {
    *(v2 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_9C10();
    sub_36CC0();
  }
}

uint64_t sub_116A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_815C(&qword_58FE0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  swift_getKeyPath();
  v27 = a2;
  sub_9C10();
  sub_36CD0();

  v9 = *(a2 + 32);
  swift_getKeyPath();
  v27 = a2;
  sub_36CD0();

  CLKCompressFraction();
  v11 = 1.0 - v10;
  if (qword_58538 != -1)
  {
    swift_once();
  }

  *&v10 = v11;
  [qword_5CCB8 _solveForInput:v10];
  v13 = v12;
  swift_getKeyPath();
  v27 = a2;
  sub_36CD0();

  CLKCompressFraction();
  if (qword_58540 != -1)
  {
    v25 = v14;
    swift_once();
    v14 = v25;
  }

  *&v14 = v14;
  [qword_5CCC0 _solveForInput:v14];
  v16 = v15;
  v17 = sub_110A4();
  v18 = sub_37090();
  KeyPath = swift_getKeyPath();
  v20 = sub_815C(&qword_58FE8);
  (*(*(v20 - 8) + 16))(v8, a1, v20);
  v21 = &v8[*(v6 + 36)];
  *v21 = KeyPath;
  v21[1] = v18;
  if (v9 >= 0.5)
  {
    v22 = v16;
  }

  else
  {
    v22 = v13;
  }

  v23 = v22;
  sub_11E0C(v8, a3);
  result = sub_815C(&qword_58FF0);
  *(a3 + *(result + 36)) = v23;
  return result;
}

double sub_11970@<D0>(double *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_9C10();
  sub_36CD0();

  result = *(v3 + 32);
  *a1 = result;
  return result;
}

void (*sub_119F0(uint64_t *a1))(double **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 16) = *v1;
  swift_getKeyPath();
  v4[3] = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel18TransitioningFonts___observationRegistrar;
  v4[1] = v5;
  v4[4] = sub_9C10();
  sub_36CD0();

  *v4 = *(v5 + 32);
  return sub_11ABC;
}

void sub_11ABC(double **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 2);
  v4 = **a1;
  v5 = *(v3 + 32);
  if ((a2 & 1) == 0)
  {
    if (v5 != v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    *(v3 + 32) = v4;
    goto LABEL_6;
  }

  if (v5 == v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *(v2 + 1) = v3;
  sub_36CC0();

LABEL_6:
  free(v2);
}

unint64_t sub_11C18()
{
  result = qword_58FD0;
  if (!qword_58FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_58FD0);
  }

  return result;
}

unint64_t sub_11C70()
{
  result = qword_58FD8;
  if (!qword_58FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_58FD8);
  }

  return result;
}

uint64_t sub_11CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_11E7C();

  return static AnimatableModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

uint64_t sub_11D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_11E7C();

  return static AnimatableModifier._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

uint64_t sub_11E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_815C(&qword_58FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_11E7C()
{
  result = qword_58FF8;
  if (!qword_58FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_58FF8);
  }

  return result;
}

unint64_t sub_11ED4()
{
  result = qword_59000;
  if (!qword_59000)
  {
    sub_D5DC(&qword_58FF0);
    sub_11F60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59000);
  }

  return result;
}

unint64_t sub_11F60()
{
  result = qword_59008;
  if (!qword_59008)
  {
    sub_D5DC(&qword_58FE0);
    sub_12044(&qword_59010, &qword_58FE8);
    sub_12044(&qword_59018, &qword_59020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59008);
  }

  return result;
}

uint64_t sub_12044(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_D5DC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_12358(void *a1)
{
  v33.receiver = v1;
  v33.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v33, "galleryFacesForDevice:", a1);
  if (!v3)
  {
    sub_815C(&qword_59048);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_41F40;
    sub_2DD44(a1);
    *(v5 + 32) = v28;
    return v5;
  }

  v4 = v3;
  sub_B2AC(0, &qword_59058);
  v5 = sub_376B0();

  v31 = sub_12B7C(a1);
  if (v5 >> 62)
  {
LABEL_57:
    v6 = sub_37A40();
    if (v6)
    {
      goto LABEL_4;
    }

    return v5;
  }

  v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  if (!v6)
  {
    return v5;
  }

LABEL_4:
  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  v32 = v5 & 0xFFFFFFFFFFFFFF8;
  v29 = v5;
  v30 = v5 & 0xC000000000000001;
  while (1)
  {
    if (v8)
    {
      v10 = sub_37960();
    }

    else
    {
      if (v7 >= *(v32 + 16))
      {
        goto LABEL_56;
      }

      v10 = *(v5 + 8 * v7 + 32);
    }

    v11 = v10;
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v7 != 3)
    {
      break;
    }

    if ((v31 & 1) == 0)
    {
      sub_815C(&qword_59048);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_41F20;
      v25 = objc_opt_self();
      result = [v25 placementWithWatchOS12Group:12 zOrder:4000];
      if (!result)
      {
        goto LABEL_67;
      }

      *(v23 + 32) = result;
      result = [v25 placementWithWatchOS12Group:13 zOrder:4000];
      if (!result)
      {
        goto LABEL_66;
      }

      *(v23 + 40) = result;
      result = [v25 placementWithWatchOS12Group:2 zOrder:4000];
      if (!result)
      {
        goto LABEL_65;
      }

      *(v23 + 48) = result;
      result = [v25 placementWithWatchOS12Group:19 zOrder:4000];
      if (!result)
      {
        goto LABEL_82;
      }

      *(v23 + 56) = result;
      result = [v25 placementWithWatchOS12Group:1 zOrder:4000];
      if (!result)
      {
        goto LABEL_81;
      }

      goto LABEL_36;
    }

    sub_815C(&qword_59048);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_41F30;
    v19 = objc_opt_self();
    result = [v19 placementWithWatchOS12Group:12 zOrder:4000];
    if (!result)
    {
      goto LABEL_73;
    }

    *(v18 + 32) = result;
    result = [v19 placementWithWatchOS12Group:13 zOrder:4000];
    if (!result)
    {
      goto LABEL_71;
    }

    *(v18 + 40) = result;
    result = [v19 placementWithWatchOS12Group:2 zOrder:4000];
    if (!result)
    {
      goto LABEL_70;
    }

    *(v18 + 48) = result;
    result = [v19 placementWithWatchOS12Group:19 zOrder:4000];
    if (!result)
    {
      goto LABEL_69;
    }

    *(v18 + 56) = result;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_41F40;
    result = [v19 placementWithWatchOS12Group:1 zOrder:4000];
    if (!result)
    {
      goto LABEL_68;
    }

    *(inited + 32) = result;
    sub_130A4(inited);
    sub_B2AC(0, &qword_59060);
    isa = sub_376A0().super.isa;

    [v11 setCurationPlacements:isa];

    v8 = v30;
LABEL_7:
    ++v7;
    if (v12 == v6)
    {
      return v5;
    }
  }

  if (!v7)
  {
    v13 = v6;
    sub_815C(&qword_59048);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_41F40;
    v15 = [a1 deviceCategory];
    v16 = a1;
    if ([a1 collectionType] != &dword_8 + 3)
    {
      v17 = 7000;
      if ((v15 & 0xFFFFFFFFFFFFFFFDLL) == 4)
      {
LABEL_40:
        v26 = objc_opt_self();
        result = [v26 placementWithWatchOS12Group:1 zOrder:v17];
        if (!result)
        {
          goto LABEL_60;
        }

        *(v14 + 32) = result;
        if (v31)
        {
          v27 = swift_initStackObject();
          *(v27 + 16) = xmmword_41F30;
          result = [v26 placementWithWatchOS12Group:12 zOrder:4000];
          v8 = v30;
          if (!result)
          {
            goto LABEL_80;
          }

          a1 = v16;
          *(v27 + 32) = result;
          result = [v26 placementWithWatchOS12Group:13 zOrder:4000];
          if (!result)
          {
            goto LABEL_79;
          }

          v6 = v13;
          *(v27 + 40) = result;
          result = [v26 placementWithWatchOS12Group:2 zOrder:4000];
          v5 = v29;
          if (!result)
          {
            goto LABEL_78;
          }

          *(v27 + 48) = result;
          result = [v26 placementWithWatchOS12Group:19 zOrder:4000];
          if (!result)
          {
            goto LABEL_77;
          }
        }

        else
        {
          v27 = swift_initStackObject();
          *(v27 + 16) = xmmword_41F30;
          result = [v26 placementWithWatchOS12Group:12 zOrder:4000];
          v8 = v30;
          if (!result)
          {
            goto LABEL_76;
          }

          a1 = v16;
          *(v27 + 32) = result;
          result = [v26 placementWithWatchOS12Group:13 zOrder:4000];
          if (!result)
          {
            goto LABEL_75;
          }

          v6 = v13;
          *(v27 + 40) = result;
          result = [v26 placementWithWatchOS12Group:2 zOrder:4000];
          v5 = v29;
          if (!result)
          {
            goto LABEL_74;
          }

          *(v27 + 48) = result;
          result = [v26 placementWithWatchOS12Group:19 zOrder:4000];
          if (!result)
          {
            goto LABEL_72;
          }
        }

        *(v27 + 56) = result;
        sub_130A4(v27);
        goto LABEL_6;
      }

      if ([v16 collectionType] != &dword_4 + 1)
      {
        if (NTKShowHardwareSpecificFaces())
        {
          v17 = 7000;
        }

        else
        {
          v17 = 9000;
        }

        goto LABEL_40;
      }
    }

    v17 = 7000;
    goto LABEL_40;
  }

  sub_815C(&qword_59048);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_41F20;
  v24 = objc_opt_self();
  result = [v24 placementWithWatchOS12Group:12 zOrder:4000];
  if (result)
  {
    *(v23 + 32) = result;
    result = [v24 placementWithWatchOS12Group:13 zOrder:4000];
    if (!result)
    {
      goto LABEL_64;
    }

    *(v23 + 40) = result;
    result = [v24 placementWithWatchOS12Group:2 zOrder:4000];
    if (!result)
    {
      goto LABEL_63;
    }

    *(v23 + 48) = result;
    result = [v24 placementWithWatchOS12Group:19 zOrder:4000];
    if (!result)
    {
      goto LABEL_62;
    }

    *(v23 + 56) = result;
    result = [v24 placementWithWatchOS12Group:1 zOrder:4000];
    if (!result)
    {
      goto LABEL_61;
    }

LABEL_36:
    *(v23 + 64) = result;
LABEL_6:
    sub_B2AC(0, &qword_59060);
    v9 = sub_376A0().super.isa;

    [v11 setCurationPlacements:v9];

    goto LABEL_7;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_12B7C(uint64_t a1)
{
  sub_2DD44(a1);
  v2 = v1;
  v3 = [v1 defaultOptionForCustomEditMode:10 slot:0];

  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 fullname];

      v6 = sub_37530();
      v8 = v7;

      if (v6 == 0x2E6B636F6C726177 && v8 == 0xEE0031306F726568)
      {

        v11 = 0;
      }

      else
      {
        v10 = sub_37AD0();

        v11 = v10 ^ 1;
      }
    }

    else
    {

      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

uint64_t sub_12DE0(uint64_t a1)
{
  sub_815C(&qword_59028);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_41F50;
  strcpy((v2 + 32), "warlock.hero01");
  *(v2 + 47) = -18;
  strcpy((v2 + 48), "warlock.hero04");
  *(v2 + 63) = -18;
  strcpy((v2 + 64), "warlock.hero05");
  *(v2 + 79) = -18;
  v19 = v2;
  sub_2DD44(a1);
  v4 = v3;
  v5 = [v3 defaultOptionForCustomEditMode:10 slot:0];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 fullname];
      v9 = sub_37530();
      v11 = v10;

      v12 = v9 == 0x2E6B636F6C726177 && v11 == 0xEE0031306F726568;
      if (v12 || (sub_37AD0() & 1) != 0)
      {

        v13 = sub_2F068(&dword_0 + 1, 4, 1, v2);

        *(v13 + 2) = 4;
        strcpy(v13 + 80, "warlock.silver");
        v13[95] = -18;
        v19 = v13;
      }

      else
      {
        v14 = sub_2F068(&dword_0 + 1, 4, 1, v2);

        *(v14 + 2) = 4;
        *(v14 + 10) = v9;
        *(v14 + 11) = v11;
        v19 = v14;
      }
    }

    else
    {
    }
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_414F0;
  *(inited + 32) = sub_37530();
  *(inited + 40) = v16;
  *(inited + 48) = sub_37530();
  *(inited + 56) = v17;
  sub_13194(inited);

  return v19;
}

uint64_t sub_130A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_37A40();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_37A40();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_13288(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_133B0(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_13194(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2F068(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_13288(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_37A40();
LABEL_9:
  result = sub_37970();
  *v1 = result;
  return result;
}

void (*sub_13328(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_37960();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_133A8;
  }

  __break(1u);
  return result;
}

uint64_t sub_133B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_37A40();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_37A40();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_137FC();
          for (i = 0; i != v6; ++i)
          {
            sub_815C(&qword_59068);
            v9 = sub_13328(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_B2AC(0, &qword_59060);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_13540()
{
  sub_815C(&qword_59040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_414F0;
  *(inited + 32) = [objc_allocWithZone(NSNumber) initWithInteger:17];
  sub_815C(&qword_59048);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_41F60;
  *(v1 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:0];
  *(v1 + 40) = [objc_allocWithZone(NSNumber) initWithInteger:0];
  *(v1 + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  *(v1 + 56) = [objc_allocWithZone(NSNumber) initWithInteger:0];
  *(v1 + 64) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  *(v1 + 72) = [objc_allocWithZone(NSNumber) initWithInteger:0];
  *(inited + 40) = v1;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:13];
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_41F60;
  *(v2 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:0];
  *(v2 + 40) = [objc_allocWithZone(NSNumber) initWithInteger:0];
  *(v2 + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  *(v2 + 56) = [objc_allocWithZone(NSNumber) initWithInteger:0];
  *(v2 + 64) = [objc_allocWithZone(NSNumber) initWithInteger:0];
  *(v2 + 72) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  *(inited + 56) = v2;
  v3 = sub_34E30(inited);
  swift_setDeallocating();
  sub_815C(&qword_59050);
  swift_arrayDestroy();
  return v3;
}

unint64_t sub_13794()
{
  result = qword_59038;
  if (!qword_59038)
  {
    sub_B2AC(255, &qword_58670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59038);
  }

  return result;
}

unint64_t sub_137FC()
{
  result = qword_59070;
  if (!qword_59070)
  {
    sub_D5DC(&qword_59068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59070);
  }

  return result;
}

uint64_t sub_13860(uint64_t a1)
{
  v2 = sub_815C(&qword_59080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_138C8()
{
  sub_30574();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    sub_379C0();
    v3 = (v1 + 40);
    do
    {
      v4 = *v3;
      v3 += 4;
      v5 = v4;
      sub_37990();
      sub_379D0();
      sub_379E0();
      sub_379A0();
      --v2;
    }

    while (v2);
  }

  sub_B2AC(0, &qword_58980);
  v6.super.isa = sub_376A0().super.isa;

  v7 = *(v1 + 16);
  if (!v7)
  {

    v12 = *(&_swiftEmptyArrayStorage + 2);
    if (!v12)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  sub_34164(0, v7, 0);
  v8 = *(&_swiftEmptyArrayStorage + 2);
  v9 = 32;
  do
  {
    v10 = *(v1 + v9);
    v11 = *(&_swiftEmptyArrayStorage + 3);
    if (v8 >= v11 >> 1)
    {
      sub_34164((v11 > 1), v8 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v8 + 1;
    *(&_swiftEmptyArrayStorage + v8 + 8) = v10;
    v9 += 32;
    ++v8;
    --v7;
  }

  while (v7);

  v12 = *(&_swiftEmptyArrayStorage + 2);
  if (v12)
  {
LABEL_10:
    sub_379C0();
    v13 = 32;
    do
    {
      v14 = *(&_swiftEmptyArrayStorage + v13);
      v15 = objc_allocWithZone(NSNumber);
      LODWORD(v16) = v14;
      [v15 initWithFloat:v16];
      sub_37990();
      sub_379D0();
      sub_379E0();
      sub_379A0();
      v13 += 4;
      --v12;
    }

    while (v12);
  }

LABEL_14:

  sub_B2AC(0, &qword_58670);
  isa = sub_376A0().super.isa;

  v18 = NTKSwatchMultiColorGradientImage();

  return v18;
}

id sub_13D44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WarlockColorPalette();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_13E00(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = sub_377A0();
  if (!v19)
  {
    return sub_376D0();
  }

  v41 = v19;
  v45 = sub_37A00();
  v32 = sub_37A10();
  sub_379B0(v41);
  result = sub_37790();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_377D0();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_379F0();
      result = sub_377C0();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_14220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v17[-v10];
  sub_37950();
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v12 = sub_79FC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = sub_13E00(sub_1482C, v17, AssociatedTypeWitness, v12, &type metadata for Never, AssociatedConformanceWitness, &protocol witness table for Never, v14);
  (*(v9 + 8))(v11, AssociatedTypeWitness);
  return v15;
}

Class sub_143A0@<X0>(Class *a1@<X8>)
{
  v22 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v2 = swift_checkMetadataState();
  v3 = __chkstk_darwin(v2);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v20 - v5;
  v8 = v7;
  sub_37680();
  if ((sub_378D0() & 1) != 0 && sub_378C0() > 64)
  {
    v23 = 0x8000000000000000;
    if (sub_378D0())
    {
      if (sub_378C0() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v9 = sub_378D0();
    v10 = sub_378C0();
    if (v9)
    {
      if (v10 > 64)
      {
LABEL_8:
        sub_E504();
        v11 = v21;
        sub_378A0();
        v12 = sub_374E0();
        result = (*(v8 + 8))(v11, v2);
        if ((v12 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      sub_37AE0();
      v14 = v21;
      sub_37AB0();
      v15 = sub_374E0();
      result = (*(v8 + 8))(v14, v2);
      if (v15)
      {
        goto LABEL_25;
      }

LABEL_13:
      sub_378B0();
      goto LABEL_14;
    }

    if (v10 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (sub_378C0() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v23 = 0x7FFFFFFFFFFFFFFFLL;
    v16 = sub_378D0();
    v17 = sub_378C0();
    if ((v16 & 1) == 0)
    {
      break;
    }

    if (v17 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_E504();
    v18 = v21;
    sub_378A0();
    v19 = sub_374E0();
    (*(v8 + 8))(v18, v2);
    if (v19)
    {
      __break(1u);
LABEL_19:
      if (sub_378C0() == 64 && (sub_378D0() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v17 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_378B0();
LABEL_24:
  sub_378B0();
  (*(v8 + 8))(v6, v2);
  result = sub_37780().super.super.isa;
  *v22 = result;
  return result;
}

__n128 sub_14850@<Q0>(uint64_t a1@<X8>)
{
  v3 = &v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView____lazy_storage___metrics];
  v4 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView____lazy_storage___metrics + 48];
  v37 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView____lazy_storage___metrics + 32];
  v38 = v4;
  v5 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView____lazy_storage___metrics + 80];
  v39 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView____lazy_storage___metrics + 64];
  v40 = v5;
  v41 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView____lazy_storage___metrics + 96];
  v6 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView____lazy_storage___metrics + 16];
  v35 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView____lazy_storage___metrics];
  v36 = v6;
  v7 = *(&v37 + 1);
  if (*(&v37 + 1))
  {
    v8 = v41;
    v23 = v39;
    v24 = v40;
    v9 = v38;
    v10 = v37;
    v11 = v35;
    v12 = v36;
  }

  else
  {
    sub_C9E4([v1 device], &v28);
    v13 = *(v3 + 5);
    v26[4] = *(v3 + 4);
    v26[5] = v13;
    v27 = *(v3 + 12);
    v14 = *(v3 + 1);
    v26[0] = *v3;
    v26[1] = v14;
    v15 = *(v3 + 3);
    v26[2] = *(v3 + 2);
    v26[3] = v15;
    v16 = v29;
    *v3 = v28;
    *(v3 + 1) = v16;
    *(v3 + 12) = v34;
    v17 = v33;
    *(v3 + 4) = v32;
    *(v3 + 5) = v17;
    v18 = v31;
    *(v3 + 2) = v30;
    *(v3 + 3) = v18;
    sub_D2A0(&v28, v25);
    sub_16C04(v26, &qword_59168);
    v23 = v32;
    v24 = v33;
    v9 = v31;
    v8 = v34;
    v7 = *(&v30 + 1);
    v10 = v30;
    v11 = v28;
    v12 = v29;
  }

  v21 = v12;
  v22 = v9;
  v20 = v11;
  sub_16B9C(&v35, v26, &qword_59168);
  *a1 = v20;
  *(a1 + 16) = v21;
  *(a1 + 32) = v10;
  *(a1 + 40) = v7;
  *(a1 + 48) = v22;
  *(a1 + 64) = v23;
  result = v24;
  *(a1 + 80) = v24;
  *(a1 + 96) = v8;
  return result;
}

id sub_149CC()
{
  v1 = OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView____lazy_storage___fontLoader;
  v2 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView____lazy_storage___fontLoader);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView____lazy_storage___fontLoader);
  }

  else
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_14A48@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_36EA0();
  v33 = *(v2 - 8);
  __chkstk_darwin(v2);
  v32 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_36E70();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 configuration];
  if (v8)
  {
    v9 = v8;
    type metadata accessor for WarlockMiniClockViewConfiguration();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = *(v10 + OBJC_IVAR____TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration_colorRamp);
      v12 = *(v10 + OBJC_IVAR____TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration_colorRamp + 24);

      goto LABEL_8;
    }
  }

  if (qword_58570 != -1)
  {
    swift_once();
  }

  v11 = xmmword_5CD60;
  v12 = unk_5CD78;

LABEL_8:
  v13 = *(v12 + 16);
  if (!v13)
  {
LABEL_18:

    goto LABEL_19;
  }

  v29 = v2;
  v30 = v11;
  v27 = v5;
  v28 = v4;
  v35 = &_swiftEmptyArrayStorage;
  sub_379C0();
  v14 = 40;
  do
  {
    v15 = *(v12 + v14);
    sub_371B0();
    sub_37990();
    sub_379D0();
    sub_379E0();
    sub_379A0();
    v14 += 32;
    --v13;
  }

  while (v13);
  v26 = v35;
  v16 = *(v12 + 16);
  if (!v16)
  {
    v4 = v28;
    v2 = v29;
    v5 = v27;
    goto LABEL_18;
  }

  v35 = &_swiftEmptyArrayStorage;
  sub_34164(0, v16, 0);
  v17 = v35;
  v18 = v35[2];
  v19 = 32;
  do
  {
    v20 = *(v12 + v19);
    v35 = v17;
    v21 = v17[3];
    if (v18 >= v21 >> 1)
    {
      sub_34164((v21 > 1), v18 + 1, 1);
      v17 = v35;
    }

    v17[2] = v18 + 1;
    *(v17 + v18 + 8) = v20;
    v19 += 32;
    ++v18;
    --v16;
  }

  while (v16);

  v4 = v28;
  v2 = v29;
  v5 = v27;
LABEL_19:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_36E60();

  v24 = v32;
  sub_36E50();
  (*(v5 + 8))(v7, v4);
  sub_815C(&qword_59160);
  sub_37320();
  *(swift_allocObject() + 16) = xmmword_415C0;
  sub_37300();
  arc4random_uniform(0x64u);
  sub_37310();
  sub_372E0();

  sub_372F0();

  sub_36E90();

  return (*(v33 + 8))(v24, v2);
}

char *sub_14F64(void *a1, void *a2)
{
  v3 = a2;
  v88 = a2;
  v5 = sub_815C(&qword_59158);
  v6 = __chkstk_darwin(v5);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v75 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = (&v75 - v13);
  v15 = __chkstk_darwin(v12);
  v17 = &v75 - v16;
  __chkstk_darwin(v15);
  v19 = &v75 - v18;
  *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView_digitalTimeView] = 0;
  v20 = &v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView____lazy_storage___metrics];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 2) = 0u;
  *(v20 + 3) = 0u;
  *(v20 + 4) = 0u;
  *(v20 + 5) = 0u;
  *(v20 + 12) = 0;
  v21 = &v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView_timeRect];
  *v21 = sub_16CD4();
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView____lazy_storage___fontLoader] = 0;
  v25 = type metadata accessor for WarlockMiniClockView();
  v100.receiver = v2;
  v100.super_class = v25;
  v84 = a1;
  v26 = objc_msgSendSuper2(&v100, "initWithDevice:clockTimer:", a1, v3);
  v27 = *(v5 + 80);
  v28 = *(v5 + 96);
  v83 = v26;
  sub_156C4(&v19[v27], &v92);
  v29 = *v94;
  *v103 = *v94;
  *&v103[16] = *&v94[16];
  v30 = v93;
  v101 = v92;
  v102 = v93;
  v31 = v95;
  v32 = v97;
  v33 = v98;
  v34 = v99;
  v35 = v96;
  *v19 = v92;
  *(v19 + 1) = v30;
  *(v19 + 2) = v29;
  *(v19 + 41) = *&v103[9];
  *(v19 + 8) = v31;
  *(v19 + 72) = v35;
  *(v19 + 22) = v32;
  v19[92] = v33;
  *&v19[v28] = v34;
  v36 = *v19;
  v37 = *(v19 + 1);
  v38 = *(v19 + 2);
  *&v94[9] = *(v19 + 41);
  *v94 = v38;
  v93 = v37;
  v92 = v36;
  sub_16B9C(v19, v17, &qword_59158);
  v39 = *(v17 + 9);
  v87 = *(v17 + 8);
  sub_16A8C(v39, *(v17 + 10), *(v17 + 22), v17[92]);
  v40 = *(v5 + 96);
  v79 = v17;
  sub_16AAC(*&v17[v40]);
  sub_16B9C(v19, v14, &qword_59158);

  v41 = v14[10];
  v90 = v14[9];
  v89 = *(v14 + 22);
  LODWORD(v3) = *(v14 + 92);
  v42 = *(v5 + 96);
  v80 = v14;
  sub_16AAC(*(v14 + v42));
  sub_16B9C(v19, v11, &qword_59158);

  sub_16A8C(*(v11 + 9), *(v11 + 10), *(v11 + 22), v11[92]);
  v43 = *(v5 + 80);
  sub_16AAC(*&v11[*(v5 + 96)]);
  sub_16B9C(v19, v8, &qword_59158);

  sub_16A8C(*(v8 + 9), *(v8 + 10), *(v8 + 22), v8[92]);
  v77 = v5;
  v44 = *(v5 + 96);
  v81 = v8;
  v85 = *&v8[v44];
  v86 = 0x800000000003AAE0;
  v76 = type metadata accessor for DigitalTimeView();
  v45 = objc_allocWithZone(v76);
  v46 = &v45[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_fontTracking];
  *v46 = 0;
  v46[8] = 1;
  *&v45[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_tritiumProgress] = 0;
  v45[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_isFrozen] = 0;
  v47 = &v45[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeLabelHostingController];
  *v47 = 0;
  v47[1] = 0;
  v48 = &v45[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView];
  *v48 = 0u;
  *(v48 + 1) = 0u;
  *(v48 + 2) = 0u;
  *(v48 + 6) = 0;
  v49 = &v45[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout];
  *(v49 + 41) = *&v94[9];
  v50 = *v94;
  v51 = v92;
  v49[1] = v93;
  v49[2] = v50;
  *v49 = v51;
  v52 = &v45[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_font];
  v52[3] = sub_16CF4();
  v52[4] = &off_52908;
  v53 = v87;
  *v52 = v87;
  *v46 = 0;
  v46[8] = 1;
  v54 = &v45[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle];
  v55 = v90;
  *v54 = v90;
  *(v54 + 1) = v41;
  v56 = v89;
  *(v54 + 4) = v89;
  v54[20] = v3;
  v82 = v43;
  v78 = v11;
  v57 = &v11[v43];
  v58 = v85;
  sub_16D40(v57, &v45[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_backgroundStyle]);
  *&v45[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_maskStyle] = v58;
  v45[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeTransition] = 2;
  __asm { FMOV            V0.2D, #1.0 }

  *&v45[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_scaleEffectSize] = _Q0;
  v64 = &v45[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_backdropGroupName];
  *v64 = 0xD000000000000011;
  v64[1] = v86;
  *&v45[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_opacity] = 0x3FF0000000000000;
  v65 = objc_allocWithZone(CLKTimeFormatter);
  v66 = v88;
  v67 = v53;
  v68 = v66;
  v86 = v67;
  v88 = v41;
  LODWORD(v87) = v3;
  sub_16B18(v55, v41, v56, v3);
  sub_16B8C(v58);
  result = [v65 initWithForcedNumberSystem:0 clockTimer:v66];
  if (result)
  {
    v70 = *(v77 + 80);
    *&v45[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter] = result;
    v91.receiver = v45;
    v91.super_class = v76;
    v71 = objc_msgSendSuper2(&v91, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v71 setClipsToBounds:1];
    sub_2A850(0, 0, 0x100u);
    v72 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter;
    [*&v71[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter] addObserver:v71];
    sub_2B084();

    sub_16AAC(v58);
    sub_16A8C(v90, v88, v89, v87);

    sub_16ABC(&v78[v82]);
    sub_16ABC(&v81[v70]);
    sub_16ABC(v80 + v70);
    sub_16ABC(&v79[v70]);
    [v71 setUserInteractionEnabled:0];

    v73 = v83;
    [*&v71[v72] addObserver:v83];
    [v73 addSubview:v71];

    sub_16C04(v19, &qword_59158);
    v74 = *&v73[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView_digitalTimeView];
    *&v73[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView_digitalTimeView] = v71;

    return v73;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_156C4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [v2 configuration];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for WarlockMiniClockViewConfiguration();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = *(v8 + OBJC_IVAR____TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration_typeface);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *&v3[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView_digitalTimeView];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = *&v10[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter];
  v12 = v10;
  if (![v11 isTopOfHour])
  {

LABEL_19:
    sub_14850(v50);
    v17 = v53;
    if (v9)
    {
      v18 = 0;
    }

    else
    {
      v18 = v51;
    }

    v19 = type metadata accessor for WarlockTypefaceAttributes();
    v20 = objc_allocWithZone(v19);
    *&v20[OBJC_IVAR___NTKWarlockTypefaceAttributes_fontSize] = v17;
    v21 = &v20[OBJC_IVAR___NTKWarlockTypefaceAttributes_fontWeight];
    *v21 = v18;
    v21[8] = v9;
    v20[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetOne] = 1;
    v20[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetTwo] = 1;
    v20[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableContextualAlternates] = v9 ^ 1;
    v20[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableDiscretionaryLigatures] = 0;
    v49.receiver = v20;
    v49.super_class = v19;
    v22 = objc_msgSendSuper2(&v49, "init");
    sub_9C68(v50);
    v47 = 3;
    goto LABEL_26;
  }

  sub_14850(v50);
  sub_F5F0();
  v14 = *(v52 + 16);
  if (v14)
  {
    v15 = (v52 + 48);
    while (v13 < *(v15 - 2) || *(v15 - 1) < v13)
    {
      v15 += 3;
      if (!--v14)
      {
        goto LABEL_17;
      }
    }

    v23 = *v15;
    sub_9C68(v50);
  }

  else
  {
LABEL_17:
    sub_9C68(v50);
    v23 = v53;
  }

  v24 = 56;
  if (v9)
  {
    v24 = 80;
  }

  v25 = *&v50[v24];
  v26 = type metadata accessor for WarlockTypefaceAttributes();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR___NTKWarlockTypefaceAttributes_fontSize] = v23;
  v28 = &v27[OBJC_IVAR___NTKWarlockTypefaceAttributes_fontWeight];
  *v28 = v25;
  v28[8] = 0;
  v27[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetOne] = 0;
  v27[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetTwo] = 0;
  v27[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableContextualAlternates] = 0;
  v27[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableDiscretionaryLigatures] = 1;
  v48.receiver = v27;
  v48.super_class = v26;
  v22 = objc_msgSendSuper2(&v48, "init");

  v47 = 0;
LABEL_26:
  v45 = *&v3[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView_timeRect + 16];
  v46 = *&v3[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView_timeRect];
  if (v9)
  {
    v29 = 0xD000000000000012;
  }

  else
  {
    v29 = 0xD000000000000014;
  }

  if (v9)
  {
    v30 = ",&";
  }

  else
  {
    v30 = "watchFaceFlowSolid";
  }

  v31 = v30 | 0x8000000000000000;
  v32 = v22;
  if (sub_37400())
  {
    v43 = 1056964608;
    v44 = 1;
  }

  else
  {

    v29 = 0;
    v31 = 0;
    v43 = 0;
    v44 = 2;
  }

  v33 = [v3 configuration];
  if (v33)
  {
    v34 = v33;
    type metadata accessor for WarlockMiniClockViewConfiguration();
    v35 = swift_dynamicCastClass();
    if (v35)
    {
      v36 = *(v35 + OBJC_IVAR____TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration_backgroundVisibility);

      if (v36 != 1.0)
      {
        sub_14A48(a1);
        v37 = 1;
        goto LABEL_42;
      }
    }

    else
    {
    }
  }

  v37 = 0;
LABEL_42:
  _s10descr51419V15BackgroundStyleOMa();
  swift_storeEnumTagMultiPayload();
  v38 = sub_149CC();
  v39 = v38;
  v40 = &selRef_solidFontWithAttributes_;
  if (!v9)
  {
    v40 = &selRef_stencilFontWithAttributes_;
  }

  v41 = [v38 *v40];

  result = v46;
  *a2 = v46;
  *(a2 + 16) = v45;
  *(a2 + 32) = v47;
  *(a2 + 33) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 2;
  *(a2 + 64) = v41;
  *(a2 + 72) = v29;
  *(a2 + 80) = v31;
  *(a2 + 88) = v43;
  *(a2 + 92) = v44;
  *(a2 + 96) = v37;
  return result;
}