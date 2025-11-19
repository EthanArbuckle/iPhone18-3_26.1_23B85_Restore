void BRNet_v3_Filter<MFXDevice3>::encodeMid(int *a1, void *a2, id *a3, void *a4, void *a5, char a6, unsigned int a7, int a8, float32x2_t a9, float32x2_t a10, double a11)
{
  v21 = a2;
  v22 = a4;
  v23 = a5;
  v40 = a9;
  v39 = a7;
  v38 = a11;
  if ((*(a1 + 66) & 1) == 0)
  {
    v24 = *a3;
    if (a6)
    {
      v25 = a1 + 110;
    }

    else
    {
      [v24 setComputePipelineState:*(a1 + 59)];
      [*a3 setBuffer:*(a1 + 20) offset:0 atIndex:0];
      v26 = *a3;
      *v43 = a1[1] * *a1;
      *&v43[8] = vdupq_n_s64(1uLL);
      v41 = xmmword_2398F2910;
      v42 = 1;
      [v26 dispatchThreads:v43 threadsPerThreadgroup:&v41];
      v25 = a1 + 112;
      v24 = *a3;
    }

    [v24 setComputePipelineState:*v25];
    [*a3 setTexture:*(a1 + 10) atIndex:0];
    [*a3 setTexture:v23 atIndex:1];
    [*a3 setBuffer:*(a1 + 20) offset:0 atIndex:0];
    [*a3 setBytes:&v40 length:8 atIndex:1];
    [*a3 setBytes:a1 length:4 atIndex:2];
    v27 = *a3;
    *v43 = a7;
    *&v43[8] = HIWORD(a7);
    *&v43[16] = 1;
    v41 = vdupq_n_s64(8uLL);
    v42 = 1;
    [v27 dispatchThreads:v43 threadsPerThreadgroup:&v41];
    [*a3 setComputePipelineState:*(a1 + 57)];
    [*a3 setTexture:*(a1 + 10) atIndex:0];
    [*a3 setTexture:*(a1 + 21) atIndex:1];
    [*a3 setBuffer:*(a1 + 20) offset:0 atIndex:0];
    [*a3 setBytes:&v40 length:8 atIndex:1];
    [*a3 setBytes:a1 length:4 atIndex:2];
    v28 = *a3;
    *&v29 = *a1;
    *(&v29 + 1) = HIDWORD(*a1);
    *v43 = v29;
    *&v43[16] = 1;
    v41 = vdupq_n_s64(8uLL);
    v42 = 1;
    [v28 dispatchThreads:v43 threadsPerThreadgroup:&v41];
    [*a3 setComputePipelineState:*(a1 + 58)];
    [*a3 setTexture:*(a1 + 10) atIndex:0];
    [*a3 setTexture:*(a1 + 21) atIndex:1];
    [*a3 setTexture:*(a1 + 22) atIndex:2];
    [*a3 setBytes:&v40 length:8 atIndex:0];
    v30 = *a3;
    *v43 = a7;
    *&v43[8] = HIWORD(a7);
    *&v43[16] = 1;
    v41 = vdupq_n_s64(8uLL);
    v42 = 1;
    [v30 dispatchThreads:v43 threadsPerThreadgroup:&v41];
  }

  [*a3 setComputePipelineState:*(a1 + 60)];
  [*a3 setTexture:*(a1 + 10) atIndex:0];
  [*a3 setTexture:*(a1 + 22) atIndex:1];
  [*a3 setTexture:*&a1[2 * a8 + 48] atIndex:2];
  [*a3 setTexture:*&a1[2 * a8 + 52] atIndex:3];
  [*a3 setTexture:*&a1[2 * (a8 == 0) + 48] atIndex:4];
  [*a3 setTexture:*&a1[2 * (a8 == 0) + 52] atIndex:5];
  [*a3 setTexture:*&a1[2 * a8 + 56] atIndex:6];
  [*a3 setTexture:*&a1[2 * (a8 == 0) + 56] atIndex:8];
  [*a3 setTexture:*(a1 + 11) atIndex:10];
  v37 = vmul_f32(v40, a10);
  [*a3 setBytes:&v37 length:8 atIndex:0];
  [*a3 setBytes:&v39 length:4 atIndex:1];
  [*a3 setBytes:&v38 length:8 atIndex:2];
  v31 = (a1[3] + (a1[3] >> 31)) >> 1;
  v32 = *a3;
  *v43 = (a1[2] + (a1[2] >> 31)) >> 1;
  *&v43[8] = v31;
  *&v43[16] = 1;
  v41 = vdupq_n_s64(8uLL);
  v42 = 1;
  [v32 dispatchThreads:v43 threadsPerThreadgroup:&v41];
  if (*(a1 + 60) == 1)
  {
    v36[0] = vmul_f32(v40, a10);
    *&v36[1] = v38;
    [*a3 setComputePipelineState:*(a1 + 47)];
    [*a3 setTexture:*(a1 + 11) atIndex:0];
    [*a3 setTexture:v22 atIndex:1];
    [*a3 setTexture:*(a1 + 10) atIndex:2];
    [*a3 setTexture:*(a1 + 12) atIndex:3];
    [*a3 setTexture:*(a1 + 34) atIndex:4];
    [*a3 setTexture:*(a1 + 35) atIndex:5];
    [*a3 setBytes:v36 length:24 atIndex:0];
    [*a3 setBytes:&v39 length:4 atIndex:1];
    [*a3 setBuffer:*&a1[2 * a8 + 74] offset:0 atIndex:2];
    [*a3 setBuffer:*&a1[2 * (a8 == 0) + 74] offset:0 atIndex:3];
    [*a3 setBuffer:*(a1 + 39) offset:0 atIndex:4];
    v33 = *a3;
    v34 = *(a1 + 2);
    *&v35 = v34;
    *(&v35 + 1) = SHIDWORD(v34);
    *v43 = v35;
    *&v43[16] = 1;
    v41 = vdupq_n_s64(8uLL);
    v42 = 1;
    [v33 dispatchThreads:v43 threadsPerThreadgroup:&v41];
  }
}

void BRNet_v3_Filter<MFXDevice3>::encodePost(int32x2_t *a1, float32x2_t a2, double a3, __n128 a4, __n128 a5, float a6, uint64_t a7, id *a8, void *a9, void *a10, void *a11, void *a12, void *a13, int a14, unsigned int a15, unsigned __int8 a16)
{
  v54 = a5;
  v56 = a4;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v65 = a2;
  v64 = a6;
  v29 = a15;
  *&v30 = v29 / a1[2].i32[0];
  v31 = HIWORD(a15);
  *(&v30 + 1) = v31 / a1[2].i32[1];
  v63 = v30;
  v32 = [v26 width];
  v33 = [v26 height];
  *&v34 = v29 / v32;
  *(&v34 + 1) = v31 / v33;
  v62 = v34;
  v35 = a1[5].i32[0];
  v60 = a1[5].i32[1];
  v61 = v35;
  v59 = a1[6].i32[0];
  [*a8 setComputePipelineState:*&a1[50]];
  [*a8 setBuffer:v24 offset:0 atIndex:0];
  [*a8 setTexture:*&a1[19] atIndex:0];
  [*a8 setBytes:&v59 length:8 atIndex:1];
  v36 = [*&a1[19] width];
  v37 = [*&a1[19] height];
  v38 = *a8;
  *&v68 = v36;
  *(&v68 + 1) = v37;
  v69 = 1;
  v66 = vdupq_n_s64(8uLL);
  v67 = 1;
  [v38 dispatchThreads:&v68 threadsPerThreadgroup:&v66];
  [*a8 setComputePipelineState:*&a1[51]];
  [*a8 setTexture:*&a1[18] atIndex:0];
  [*a8 setBuffer:v24 offset:0 atIndex:0];
  [*a8 setBytes:&v59 length:8 atIndex:1];
  v39 = [*&a1[18] width];
  v40 = [*&a1[18] height];
  v41 = *a8;
  *&v68 = v39;
  *(&v68 + 1) = v40;
  v69 = 1;
  v66 = vdupq_n_s64(8uLL);
  v67 = 1;
  [v41 dispatchThreads:&v68 threadsPerThreadgroup:&v66];
  [*a8 setComputePipelineState:*&a1[49]];
  [*a8 setTexture:*&a1[11] atIndex:0];
  [*a8 setTexture:*&a1[12] atIndex:1];
  [*a8 setTexture:v25 atIndex:3];
  [*a8 setTexture:v28 atIndex:4];
  [*a8 setTexture:*&a1[22] atIndex:5];
  [*a8 setTexture:*&a1[23] atIndex:6];
  [*a8 setTexture:*&a1[10] atIndex:7];
  [*a8 setTexture:*&a1[19] atIndex:11];
  [*a8 setTexture:*&a1[18] atIndex:12];
  [*a8 setTexture:*&a1[30] atIndex:13];
  [*a8 setTexture:*&a1[31] atIndex:14];
  v42 = a16 == 0;
  [*a8 setTexture:*&a1[v42 + 24] atIndex:15];
  [*a8 setTexture:*&a1[v42 + 26] atIndex:16];
  if ((a1[8].i8[0] & 1) != 0 || (a1[8].i8[1] & 1) != 0 || a1[8].i8[4] == 1)
  {
    __asm { FMOV            V1.2S, #1.0 }

    *&v68 = vmul_f32(vdiv_f32(_D1, vcvt_f32_s32(a1[2])), a2);
    [*a8 setBytes:&v68 length:8 atIndex:{6, *&v54, *&v56}];
    if (a1[8].i8[0])
    {
      [*a8 setBytes:&v62 length:8 atIndex:7];
      [*a8 setTexture:v26 atIndex:17];
      [*a8 setTexture:v27 atIndex:18];
    }
  }

  [*a8 setTexture:*&a1[35] atIndex:{19, *&v54, *&v56}];
  [*a8 setTexture:*&a1[34] atIndex:20];
  if (a1[8].i8[1] == 1)
  {
    [*a8 setTexture:*&a1[a16 + 32] atIndex:8];
    [*a8 setTexture:*&a1[v42 + 32] atIndex:9];
  }

  v58 = __PAIR64__(v55, v57);
  [*a8 setBytes:&v58 length:8 atIndex:0];
  [*a8 setBytes:&v63 length:8 atIndex:1];
  [*a8 setBuffer:*&a1[39] offset:0 atIndex:2];
  [*a8 setBytes:&v64 length:4 atIndex:3];
  [*a8 setBuffer:*&a1[a16 + 37] offset:0 atIndex:4];
  [*a8 setBytes:&v65 length:8 atIndex:5];
  v48 = *a8;
  v49 = a1[2];
  *&v50 = v49.i32[0];
  *(&v50 + 1) = v49.i32[1];
  v68 = v50;
  v69 = 1;
  v66 = vdupq_n_s64(8uLL);
  v67 = 1;
  [v48 dispatchThreads:&v68 threadsPerThreadgroup:&v66];
  if (a1[8].i8[0] == 1)
  {
    [*a8 setComputePipelineState:*&a1[62]];
    [*a8 setTexture:v26 atIndex:0];
    [*a8 setTexture:v27 atIndex:1];
    [*a8 setBytes:&v62 length:8 atIndex:1];
    v51 = *a8;
    v52 = a1[2];
    *&v53 = v52.i32[0];
    *(&v53 + 1) = v52.i32[1];
    v68 = v53;
    v69 = 1;
    v66 = vdupq_n_s64(8uLL);
    v67 = 1;
    [v51 dispatchThreads:&v68 threadsPerThreadgroup:&v66];
  }
}

void BRNet_v3_Filter<MFXDevice3>::encodeMidForDenoise(int *a1, double a2, uint64_t a3, id *a4, void *a5, void *a6, uint64_t a7, int a8, int a9)
{
  v15 = a5;
  v16 = a6;
  v27 = a2;
  HIDWORD(v26) = a9;
  v17 = -1.0;
  if (a8)
  {
    v17 = 1.0;
  }

  *&v26 = v17;
  [*a4 setComputePipelineState:{*(a1 + 63), v26, *&v27}];
  [*a4 setTexture:v15 atIndex:0];
  [*a4 setTexture:v16 atIndex:1];
  [*a4 setTexture:*(a1 + 10) atIndex:2];
  [*a4 setBytes:&v26 length:4 atIndex:0];
  [*a4 setBytes:&v26 + 4 length:4 atIndex:1];
  v18 = *a4;
  *v30 = WORD2(v26) + 2;
  *&v30[8] = HIWORD(v26) + 2;
  *&v30[16] = 1;
  v28 = vdupq_n_s64(8uLL);
  v29 = 1;
  [v18 dispatchThreads:v30 threadsPerThreadgroup:&v28];
  v19 = *a4;
  if (a8)
  {
    v20 = a1 + 110;
  }

  else
  {
    [v19 setComputePipelineState:*(a1 + 59)];
    [*a4 setBuffer:*(a1 + 20) offset:0 atIndex:0];
    v21 = *a4;
    *v30 = a1[1] * *a1;
    *&v30[8] = vdupq_n_s64(1uLL);
    v28 = xmmword_2398F2910;
    v29 = 1;
    [v21 dispatchThreads:v30 threadsPerThreadgroup:&v28];
    v20 = a1 + 112;
    v19 = *a4;
  }

  [v19 setComputePipelineState:*v20];
  [*a4 setTexture:*(a1 + 10) atIndex:0];
  [*a4 setTexture:v15 atIndex:1];
  [*a4 setBuffer:*(a1 + 20) offset:0 atIndex:0];
  [*a4 setBytes:&v27 length:8 atIndex:1];
  [*a4 setBytes:a1 length:4 atIndex:2];
  v22 = *a4;
  *v30 = WORD2(v26);
  *&v30[8] = HIWORD(v26);
  *&v30[16] = 1;
  v28 = vdupq_n_s64(8uLL);
  v29 = 1;
  [v22 dispatchThreads:v30 threadsPerThreadgroup:&v28];
  [*a4 setComputePipelineState:*(a1 + 57)];
  [*a4 setTexture:*(a1 + 10) atIndex:0];
  [*a4 setTexture:*(a1 + 21) atIndex:1];
  [*a4 setBuffer:*(a1 + 20) offset:0 atIndex:0];
  [*a4 setBytes:&v27 length:8 atIndex:1];
  [*a4 setBytes:a1 length:4 atIndex:2];
  v23 = *a4;
  *&v24 = *a1;
  *(&v24 + 1) = HIDWORD(*a1);
  *v30 = v24;
  *&v30[16] = 1;
  v28 = vdupq_n_s64(8uLL);
  v29 = 1;
  [v23 dispatchThreads:v30 threadsPerThreadgroup:&v28];
  [*a4 setComputePipelineState:*(a1 + 58)];
  [*a4 setTexture:*(a1 + 10) atIndex:0];
  [*a4 setTexture:*(a1 + 21) atIndex:1];
  [*a4 setTexture:*(a1 + 22) atIndex:2];
  [*a4 setBytes:&v27 length:8 atIndex:0];
  v25 = *a4;
  *v30 = WORD2(v26);
  *&v30[8] = HIWORD(v26);
  *&v30[16] = 1;
  v28 = vdupq_n_s64(8uLL);
  v29 = 1;
  [v25 dispatchThreads:v30 threadsPerThreadgroup:&v28];
}

uint64_t BRNet_v3_Filter<MFXDevice3>::getEncodeIndex(uint64_t a1)
{
  v1 = *(a1 + 136);
  *(a1 + 136) = *(a1 + 136) == 0;
  return v1;
}

float BRNet_v3_Filter<MFXDevice3>::getInternalExposure(uint64_t a1)
{
  _H0 = *[*(a1 + 8 * *(a1 + 136) + 296) contents];
  __asm { FCVT            S0, H0 }

  return result;
}

uint64_t BFNet_v1_Filter<MFXDevice4>::BFNet_v1_Filter(uint64_t a1, MFXDevice4 *a2, uint64_t a3, void *a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, char a11, char a12)
{
  v19 = a4;
  *(a1 + 48) = 0u;
  *(a1 + 299) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *a1 = a3;
  *(a1 + 8) = a5;
  *(a1 + 12) = a6;
  v20 = *(a9 + 12);
  v21 = *(a9 + 24);
  *(&v20 + 1) = *(a9 + 24);
  *(a1 + 24) = v20;
  *(a1 + 16) = a7;
  *(a1 + 20) = a8;
  v77 = 1;
  v22 = objc_opt_new();
  [v22 setConstantValue:&v77 type:53 atIndex:16];
  *(a1 + 296) = a10;
  [v22 setConstantValue:a1 + 296 type:53 atIndex:19];
  *(a1 + 297) = a11;
  [v22 setConstantValue:a1 + 297 type:53 atIndex:20];
  *(a1 + 298) = a12;
  [v22 setConstantValue:a1 + 298 type:53 atIndex:21];
  v76 = 1;
  [v22 setConstantValue:&v76 type:53 atIndex:15];
  v75 = 1;
  [v22 setConstantValue:&v75 type:53 atIndex:22];
  v23 = MFXDevice4::createComputePipeline(a2, v19, @"dbfnetv1_lowres_signals", v22);
  v24 = *(a1 + 48);
  *(a1 + 48) = v23;

  v25 = MFXDevice4::createComputePipeline(a2, v19, @"dbfnetv1_output_channels", v22);
  v26 = *(a1 + 56);
  *(a1 + 56) = v25;

  v27 = MFXDevice4::createComputePipeline(a2, v19, @"reproject_warp", v22);
  v28 = *(a1 + 64);
  *(a1 + 64) = v27;

  v29 = MFXDevice4::createComputePipeline(a2, v19, @"reproject_blend", v22);
  v30 = *(a1 + 72);
  *(a1 + 72) = v29;

  v31 = MFXDevice4::createComputePipeline(a2, v19, @"bilateral", v22);
  v32 = *(a1 + 88);
  *(a1 + 88) = v31;

  v33 = MFXDevice4::createComputePipeline(a2, v19, @"denoiser_between_processing", v22);
  v34 = *(a1 + 96);
  *(a1 + 96) = v33;

  v35 = MFXDevice4::createComputePipeline(a2, v19, @"update_vbbr", v22);
  v36 = *(a1 + 104);
  *(a1 + 104) = v35;

  v37 = MFXDevice4::createComputePipeline(a2, v19, @"processSpecularHitDistance", v22);
  v38 = *(a1 + 112);
  *(a1 + 112) = v37;

  v39 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:125 width:*(a1 + 8) height:*(a1 + 12) mipmapped:0];
  [(MTLTextureDescriptor *)v39 setUsage:3];
  [(MTLTextureDescriptor *)v39 setCompressionMode:1];
  [(MTLTextureDescriptor *)v39 setPixelFormat:115];
  v40 = MFXDevice4::createTexture(a2, v39);
  v41 = *(a1 + 152);
  *(a1 + 152) = v40;

  v42 = MFXDevice4::createTexture(a2, v39);
  v43 = *(a1 + 160);
  *(a1 + 160) = v42;

  v44 = MFXDevice4::createTexture(a2, v39);
  v45 = *(a1 + 168);
  *(a1 + 168) = v44;

  v46 = MFXDevice4::createTexture(a2, v39);
  v47 = *(a1 + 120);
  *(a1 + 120) = v46;

  v48 = MFXDevice4::createTexture(a2, v39);
  v49 = *(a1 + 128);
  *(a1 + 128) = v48;

  [(MTLTextureDescriptor *)v39 setPixelFormat:10];
  v50 = MFXDevice4::createTexture(a2, v39);
  v51 = *(a1 + 184);
  *(a1 + 184) = v50;

  [(MTLTextureDescriptor *)v39 setWidth:*(a1 + 8)];
  [(MTLTextureDescriptor *)v39 setHeight:*(a1 + 12)];
  [(MTLTextureDescriptor *)v39 setPixelFormat:25];
  v52 = MFXDevice4::createTexture(a2, v39);
  v53 = *(a1 + 136);
  *(a1 + 136) = v52;

  v54 = MFXDevice4::createTexture(a2, v39);
  v55 = *(a1 + 144);
  *(a1 + 144) = v54;

  [(MTLTextureDescriptor *)v39 setPixelFormat:115];
  v56 = MFXDevice4::createTexture(a2, v39);
  v57 = *(a1 + 200);
  *(a1 + 200) = v56;

  v58 = MFXDevice4::createTexture(a2, v39);
  v59 = *(a1 + 208);
  *(a1 + 208) = v58;

  [(MTLTextureDescriptor *)v39 setPixelFormat:65];
  [(MTLTextureDescriptor *)v39 setUsage:16387];
  v60 = MFXDevice4::createTexture(a2, v39);
  v61 = *(a1 + 192);
  *(a1 + 192) = v60;

  [(MTLTextureDescriptor *)v39 setWidth:(*(a1 + 8) + (*(a1 + 8) >> 31)) >> 1];
  [(MTLTextureDescriptor *)v39 setHeight:(*(a1 + 12) + (*(a1 + 12) >> 31)) >> 1];
  [(MTLTextureDescriptor *)v39 setPixelFormat:65];
  v62 = MFXDevice4::createTexture(a2, v39);
  v63 = *(a1 + 264);
  *(a1 + 264) = v62;

  [(MTLTextureDescriptor *)v39 setPixelFormat:25];
  v64 = MFXDevice4::createTexture(a2, v39);
  v65 = *(a1 + 272);
  *(a1 + 272) = v64;

  [(MTLTextureDescriptor *)v39 setPixelFormat:115];
  v66 = MFXDevice4::createTexture(a2, v39);
  v67 = *(a1 + 256);
  *(a1 + 256) = v66;

  [(MTLTextureDescriptor *)v39 setWidth:(*(a1 + 8) + (*(a1 + 8) < 0 ? 7 : 0)) >> 3];
  [(MTLTextureDescriptor *)v39 setHeight:(*(a1 + 12) + (*(a1 + 12) < 0 ? 7 : 0)) >> 3];
  [(MTLTextureDescriptor *)v39 setPixelFormat:25];
  v68 = MFXDevice4::createTexture(a2, v39);
  v69 = *(a1 + 248);
  *(a1 + 248) = v68;

  v70 = MFXDevice4::createBuffer(a2, 2, 0);
  v71 = *(a1 + 280);
  *(a1 + 280) = v70;

  v72 = MFXDevice4::createBuffer(a2, 2, 0);
  v73 = *(a1 + 288);
  *(a1 + 288) = v72;

  *[*(a1 + 280) contents] = COERCE_UNSIGNED_INT(1.0);
  *[*(a1 + 288) contents] = COERCE_UNSIGNED_INT(1.0);
  *(a1 + 40) = 0x3F0000003F000000;

  return a1;
}

id MFXDevice4::createComputePipeline(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = *(a1 + 8);
  v8 = 0;
  v6 = computeKernelMetal4(a2, v5, a3, &v8, a4, 0, 1);

  return v6;
}

id MFXDevice4::createBuffer(MFXDevice4 *this, uint64_t a2, uint64_t a3)
{
  var0 = this->var0;
  v6 = this->var2;
  v7 = [var0 newBufferWithLength:a2 options:a3];
  [v6 addAllocation:v7];

  return v7;
}

void BFNet_v1_Filter<MFXDevice4>::BFNet_v1_Filter()
{
  BFNet_v1_Filter<MFXDevice4>::BFNet_v1_Filter();
}

{
    ;
  }
}

{
    ;
  }
}

void BFNet_v1_Filter<MFXDevice4>::encodeAtrous(uint64_t a1, float a2, double a3, double a4, uint64_t a5, uint64_t a6, id *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, uint64_t a20, unsigned __int8 a21)
{
  v57 = *MEMORY[0x277D85DE8];
  v40 = a8;
  v49 = a9;
  v43 = a12;
  v44 = a13;
  v45 = a14;
  v41 = a15;
  v42 = a16;
  v46 = a17;
  v47 = a19;
  v51 = a2;
  [*a7 setComputePipelineState:*(a1 + 72)];
  v26 = (a1 + 120);
  MFXComputeEncoder4::setTexture(a7, *(a1 + 120), 0);
  MFXComputeEncoder4::setTexture(a7, *(a1 + 168), 1u);
  MFXComputeEncoder4::setTexture(a7, *(a1 + 120), 2u);
  MFXComputeEncoder4::setTexture(a7, *(a1 + 8 * (a21 == 0) + 232), 3u);
  MFXComputeEncoder4::setTexture(a7, *(a1 + 248), 0x16u);
  MFXComputeEncoder4::setTexture(a7, *(a1 + 272), 5u);
  MFXComputeEncoder4::setTexture(a7, *(a1 + 8 * a21 + 136), 6u);
  v27 = *a7;
  v28 = *(a1 + 8);
  *&v29 = v28;
  *(&v29 + 1) = SHIDWORD(v28);
  v54 = v29;
  v55 = 1;
  v52 = vdupq_n_s64(0x10uLL);
  v53 = 1;
  [v27 dispatchThreads:&v54 threadsPerThreadgroup:&v52];
  v50 = 0;
  v48 = vdupq_n_s64(8uLL);
  do
  {
    [*a7 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:{1, v40}];
    [*a7 setComputePipelineState:*(a1 + 88)];
    if (v50 == 1)
    {
      v30 = (a1 + 168);
    }

    else
    {
      v30 = &v26[v50 & 1];
    }

    MFXComputeEncoder4::setTexture(a7, *v30, 0);
    MFXComputeEncoder4::setTexture(a7, *(a1 + 152 + 8 * (a21 == 0)), 1u);
    if (v50)
    {
      v31 = &v26[(v50 & 1) == 0];
    }

    else
    {
      v31 = (a1 + 168);
    }

    MFXComputeEncoder4::setTexture(a7, *v31, 2u);
    MFXComputeEncoder4::setTexture(a7, *(a1 + 184), 3u);
    MFXComputeEncoder4::setTexture(a7, *(a1 + 256), 5u);
    MFXComputeEncoder4::setTexture(a7, *(a1 + 176), 7u);
    MFXComputeEncoder4::setTexture(a7, *(a1 + 264), 4u);
    MFXComputeEncoder4::setTexture(a7, v49, 6u);
    v32 = v50;
    v56[0] = 1 << v50;
    v56[1] = v50;
    v56[2] = ~(-1 << v50);
    v56[3] = -4 << v50;
    MFXComputeEncoder4::setBytes(a7, v56, 0x10uLL, 0);
    MFXComputeEncoder4::setBytes(a7, &v50, 4uLL, 1u);
    v33 = *a7;
    v34 = vand_s8(vadd_s32(*(a1 + 8), vdup_n_s32((4 << v32) - 1)), vdup_n_s32(-(4 << v32)));
    *&v35 = v34.u32[0];
    *(&v35 + 1) = v34.u32[1];
    v54 = v35;
    v55 = 1;
    v52 = v48;
    v53 = 1;
    [v33 dispatchThreads:&v54 threadsPerThreadgroup:&v52];
    ++v50;
  }

  while (v50 < 4);
  [*a7 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
  [*a7 setComputePipelineState:*(a1 + 96)];
  MFXComputeEncoder4::setTexture(a7, *v26, 0);
  MFXComputeEncoder4::setTexture(a7, v46, 5u);
  MFXComputeEncoder4::setTexture(a7, v45, 6u);
  MFXComputeEncoder4::setTexture(a7, v44, 7u);
  MFXComputeEncoder4::setTexture(a7, *(a1 + 184), 4u);
  MFXComputeEncoder4::setTexture(a7, v43, 8u);
  MFXComputeEncoder4::setTexture(a7, *(a1 + 272), 9u);
  MFXComputeEncoder4::setBuffer(a7, v47, 0, 0xAu);
  MFXComputeEncoder4::setBytes(a7, &v51, 4uLL, 0xBu);
  if (*(a1 + 297) == 1)
  {
    MFXComputeEncoder4::setTexture(a7, v41, 2u);
    MFXComputeEncoder4::setTexture(a7, v40, 1u);
  }

  if (*(a1 + 298) == 1)
  {
    MFXComputeEncoder4::setTexture(a7, v42, 3u);
  }

  v36 = *a7;
  v37 = *(a1 + 8);
  *&v38 = v37;
  *(&v38 + 1) = SHIDWORD(v37);
  v54 = v38;
  v55 = 1;
  v52 = vdupq_n_s64(8uLL);
  v53 = 1;
  [v36 dispatchThreads:&v54 threadsPerThreadgroup:&v52];
  *(a1 + 40) = a4;

  v39 = *MEMORY[0x277D85DE8];
}

void MFXComputeEncoder4::setTexture(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  [*(a1 + 8) setTexture:objc_msgSend(v5 atIndex:{"gpuResourceID"), a3}];
}

uint64_t MFXComputeEncoder4::setBytes(MFXComputeEncoder4 *this, const void *a2, size_t a3, unsigned int a4)
{
  v8 = (a3 + 15) & 0xFFFFFFF0;
  v9 = v8 + *(this + 4);
  if (v9 > [*(this + 3) length])
  {
    *(this + 4) = 0;
  }

  memcpy(([*(this + 3) contents] + *(this + 4)), a2, a3);
  result = [*(this + 1) setAddress:objc_msgSend(*(this + 3) atIndex:{"gpuAddress") + *(this + 4), a4}];
  *(this + 4) += v8;
  return result;
}

void MFXComputeEncoder4::setBuffer(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v7 = a2;
  [*(a1 + 8) setAddress:objc_msgSend(v7 atIndex:{"gpuAddress") + a3, a4}];
}

void BFNet_v1_Filter<MFXDevice4>::encodePre(uint64_t a1, float a2, double a3, double a4, uint64_t a5, id *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, char a14)
{
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a11;
  v28 = a12;
  v29 = a13;
  v40 = a2;
  [*a6 setComputePipelineState:*(a1 + 48)];
  MFXComputeEncoder4::setTexture(a6, v23, 0);
  MFXComputeEncoder4::setTexture(a6, v24, 1u);
  MFXComputeEncoder4::setTexture(a6, *(a1 + 168), 3u);
  MFXComputeEncoder4::setTexture(a6, v26, 4u);
  MFXComputeEncoder4::setTexture(a6, v27, 5u);
  MFXComputeEncoder4::setTexture(a6, v25, 2u);
  v36 = *(a1 + 16);
  v30 = *(a1 + 24);
  v37 = *(a1 + 28);
  v38 = v30;
  v31 = *(a1 + 40);
  *v35 = a3;
  v35[1] = v31;
  *&v35[2] = a4;
  v39 = a14;
  MFXComputeEncoder4::setBytes(a6, v35, 0x28uLL, 0);
  MFXComputeEncoder4::setBuffer(a6, v28, 0, 1u);
  MFXComputeEncoder4::setBuffer(a6, v29, 0, 3u);
  MFXComputeEncoder4::setBytes(a6, &v40, 4uLL, 4u);
  v32 = *a6;
  v33 = *(a1 + 24);
  *&v34 = v33;
  *(&v34 + 1) = SHIDWORD(v33);
  v43 = v34;
  v44 = 1;
  v41 = vdupq_n_s64(8uLL);
  v42 = 1;
  [v32 dispatchThreads:&v43 threadsPerThreadgroup:&v41];
}

void BFNet_v1_Filter<MFXDevice4>::encodeMid(int32x2_t *a1, void *a2, id *a3, void *a4, void *a5, void *a6, void *a7, void *a8, float a9, double a10, double a11, __n128 a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, char a19, uint64_t a20, __int128 *a21, unsigned __int8 a22)
{
  v48 = a2;
  v30 = a4;
  v31 = a5;
  v53 = a6;
  v52 = a7;
  v56 = a8;
  v32 = a13;
  v49 = a14;
  v54 = a15;
  v51 = a16;
  v33 = a17;
  v34 = a18;
  v70 = a9;
  v68 = a11;
  v69 = a10;
  v67 = a19;
  if (a1[37].i8[0] == 1)
  {
    [*a3 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
    v35 = a21[1];
    v61 = *a21;
    v62 = v35;
    v36 = a21[3];
    v63 = a21[2];
    v64 = v36;
    v75.columns[0] = *a20;
    v75.columns[1] = *(a20 + 16);
    v75.columns[2] = *(a20 + 32);
    v75.columns[3] = *(a20 + 48);
    v76 = __invert_f4(v75);
    v57 = v76.columns[0];
    v58 = v76.columns[1];
    *v76.columns[0].f32 = vcvt_f32_s32(a1[1]);
    __asm { FMOV            V1.2S, #1.0 }

    v76.columns[1].i64[1] = v76.columns[0].i64[0];
    *&v76.columns[0].i64[1] = a10;
    v59 = v76.columns[2];
    v60 = v76.columns[3];
    v65 = a12;
    v66 = vdivq_f32(v76.columns[1], v76.columns[0]);
    [*a3 setComputePipelineState:*&a1[14]];
    MFXComputeEncoder4::setTexture(a3, v32, 0);
    MFXComputeEncoder4::setTexture(a3, v49, 1u);
    MFXComputeEncoder4::setTexture(a3, *&a1[24], 2u);
    MFXComputeEncoder4::setBytes(a3, &v57, 0xA0uLL, 0);
    v41 = *a3;
    v42 = a1[1];
    v43.i64[0] = v42.i32[0];
    v43.i64[1] = v42.i32[1];
    v73 = v43;
    v74 = 1;
    v71 = vdupq_n_s64(0x10uLL);
    v72 = 1;
    [v41 dispatchThreads:&v73 threadsPerThreadgroup:&v71];
  }

  [*a3 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:{1, *&a12}];
  [*a3 setComputePipelineState:*&a1[8]];
  MFXComputeEncoder4::setTexture(a3, v56, 0);
  MFXComputeEncoder4::setTexture(a3, *&a1[15], 1u);
  MFXComputeEncoder4::setTexture(a3, *&a1[21], 2u);
  MFXComputeEncoder4::setTexture(a3, v54, 3u);
  MFXComputeEncoder4::setTexture(a3, v32, 4u);
  MFXComputeEncoder4::setTexture(a3, v53, 5u);
  MFXComputeEncoder4::setTexture(a3, v31, 6u);
  MFXComputeEncoder4::setTexture(a3, v30, 7u);
  MFXComputeEncoder4::setTexture(a3, *&a1[a22 + 19], 8u);
  MFXComputeEncoder4::setTexture(a3, *&a1[(a22 == 0) + 19], 9u);
  MFXComputeEncoder4::setTexture(a3, *&a1[(a22 == 0) + 17], 0xFu);
  MFXComputeEncoder4::setTexture(a3, *&a1[a22 + 17], 0x10u);
  MFXComputeEncoder4::setTexture(a3, v52, 0xAu);
  MFXComputeEncoder4::setTexture(a3, *&a1[16], 0xBu);
  MFXComputeEncoder4::setTexture(a3, v51, 0x11u);
  MFXComputeEncoder4::setTexture(a3, *&a1[24], 0x12u);
  MFXComputeEncoder4::setTexture(a3, *&a1[a22 + 25], 0x15u);
  MFXComputeEncoder4::setTexture(a3, *&a1[(a22 == 0) + 25], 0x17u);
  MFXComputeEncoder4::setTexture(a3, *&a1[31], 0x16u);
  MFXComputeEncoder4::setTexture(a3, *&a1[23], 0xEu);
  MFXComputeEncoder4::setBytes(a3, &v69, 8uLL, 0);
  MFXComputeEncoder4::setBytes(a3, &a1[5], 8uLL, 1u);
  MFXComputeEncoder4::setBytes(a3, &v68, 8uLL, 2u);
  MFXComputeEncoder4::setBuffer(a3, v33, 0, 3u);
  MFXComputeEncoder4::setBuffer(a3, v34, 0, 4u);
  MFXComputeEncoder4::setBytes(a3, &v70, 4uLL, 5u);
  MFXComputeEncoder4::setBytes(a3, &v67, 1uLL, 6u);
  v44 = *a3;
  v45 = vadd_s32(a1[1], 0x800000008);
  v46.i64[0] = (v45.i32[0] & 0xFFFFFFF7);
  v46.i64[1] = (v45.i32[1] & 0xFFFFFFF7);
  v57 = v46;
  v58.i64[0] = 1;
  v73 = vdupq_n_s64(8uLL);
  v74 = 1;
  [v44 dispatchThreads:&v57 threadsPerThreadgroup:&v73];
}

void BFNet_v1_Filter<MFXDevice4>::encodePost(uint64_t a1, uint64_t a2, id *a3, void *a4)
{
  v6 = a4;
  [*a3 setComputePipelineState:*(a1 + 56)];
  v11 = *(a1 + 20);
  v7 = *(a1 + 32);
  v12 = *(a1 + 36);
  v13 = v7;
  MFXComputeEncoder4::setBytes(a3, v10, 0x28uLL, 0);
  MFXComputeEncoder4::setBuffer(a3, v6, 0, 1u);
  MFXComputeEncoder4::setTexture(a3, *(a1 + 256), 0);
  MFXComputeEncoder4::setTexture(a3, *(a1 + 264), 1u);
  MFXComputeEncoder4::setTexture(a3, *(a1 + 272), 2u);
  v8 = (*(a1 + 12) + (*(a1 + 12) >> 31)) >> 1;
  v9 = *a3;
  v16[0] = (*(a1 + 8) + (*(a1 + 8) >> 31)) >> 1;
  v16[1] = v8;
  v16[2] = 1;
  v14 = vdupq_n_s64(8uLL);
  v15 = 1;
  [v9 dispatchThreads:v16 threadsPerThreadgroup:&v14];
}

uint64_t BFNet_v1_Filter<MFXDevice4>::getEncodeIndex(uint64_t a1)
{
  v1 = *(a1 + 299);
  *(a1 + 299) = *(a1 + 299) == 0;
  return v1;
}

int *BRNet_v3_Filter<MFXDevice4>::BRNet_v3_Filter(int *a1, MFXDevice4 *a2, void *a3, int a4, int a5, int a6, unsigned int a7, uint64_t a8, int a9, int a10, char a11, char a12, char a13, char a14, char a15, char a16)
{
  v135 = __PAIR64__(a10, a7);
  v22 = a3;
  *(a1 + 5) = 0u;
  v23 = (a1 + 20);
  v143 = a13;
  *(a1 + 9) = 0u;
  v136 = v22;
  v137 = (a1 + 36);
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 16) = 0;
  *(a1 + 10) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 22) = 0u;
  *(a1 + 23) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 25) = 0u;
  *(a1 + 26) = 0u;
  *(a1 + 27) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 29) = 0u;
  *(a1 + 30) = 0u;
  *(a1 + 31) = 0u;
  *a1 = a4;
  a1[1] = a5;
  v24 = a8;
  *(a1 + 1) = *(a8 + 4);
  a1[4] = a6;
  a1[5] = v135;
  *(a1 + 7) = *(a8 + 12);
  a1[9] = a9;
  *(a1 + 5) = *(a8 + 44);
  v25 = *(a8 + 20);
  *(a1 + 28) = *(a8 + 24);
  *(a1 + 29) = *(a8 + 40);
  a1[12] = a10;
  a1[13] = v25;
  a1[18] = *a8;
  *(a1 + 62) = a11;
  *(a1 + 63) = a13;
  *(a1 + 64) = a14;
  *(a1 + 65) = a15;
  *(a1 + 66) = a16;
  *(a1 + 68) = a16;
  *(a1 + 67) = 0;
  v26 = getenv("MTLFX_EXPOSURE_TOOL_ENABLED");
  if (!v26)
  {
    v26 = "0";
  }

  if (strtol(v26, 0, 0))
  {
    *(a1 + 67) = 1;
  }

  a1[6] = *(a8 + 56) == 0;
  v27 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:65 width:*a1 height:a1[1] mipmapped:0];
  [(MTLTextureDescriptor *)v27 setUsage:3];
  [(MTLTextureDescriptor *)v27 setCompressionMode:1];
  v28 = MFXDevice4::createTexture(a2, v27);
  v29 = *v23;
  *v23 = v28;

  [(MTLTextureDescriptor *)v27 setPixelFormat:115];
  v30 = MFXDevice4::createTexture(a2, v27);
  v31 = *(a1 + 11);
  *(a1 + 11) = v30;

  [(MTLTextureDescriptor *)v27 setWidth:a1[4]];
  [(MTLTextureDescriptor *)v27 setHeight:a1[5]];
  v32 = MFXDevice4::createTexture(a2, v27);
  v33 = *(a1 + 12);
  *(a1 + 12) = v32;

  if (*(a1 + 68) == 1)
  {
    v34 = MFXDevice4::createTexture(a2, v27);
    v35 = *(a1 + 34);
    *(a1 + 34) = v34;

    [*(a1 + 34) setLabel:@"internal_blend"];
    v36 = MFXDevice4::createTexture(a2, v27);
    v37 = *(a1 + 35);
    *(a1 + 35) = v36;

    [*(a1 + 35) setLabel:@"internal_flow_adj_blend"];
  }

  else
  {
    v38 = *(a1 + 34);
    *(a1 + 34) = 0;

    v39 = *(a1 + 35);
    *(a1 + 35) = 0;
  }

  *(a1 + 136) = 0;
  [(MTLTextureDescriptor *)v27 setPixelFormat:25, v135];
  [(MTLTextureDescriptor *)v27 setTextureType:2];
  [(MTLTextureDescriptor *)v27 setWidth:(a1[2] + (a1[2] >> 31)) >> 1];
  [(MTLTextureDescriptor *)v27 setHeight:(a1[3] + (a1[3] >> 31)) >> 1];
  [(MTLTextureDescriptor *)v27 setArrayLength:1];
  v40 = MFXDevice4::createTexture(a2, v27);
  v41 = *(a1 + 13);
  *(a1 + 13) = v40;

  v42 = MFXDevice4::createTexture(a2, v27);
  v43 = *(a1 + 14);
  *(a1 + 14) = v42;

  v44 = MFXDevice4::createTexture(a2, v27);
  v45 = *(a1 + 15);
  *(a1 + 15) = v44;

  v46 = MFXDevice4::createTexture(a2, v27);
  v47 = *(a1 + 16);
  *(a1 + 16) = v46;

  if (v143)
  {
    v48 = 30;
  }

  else
  {
    v48 = 65;
  }

  [(MTLTextureDescriptor *)v27 setPixelFormat:v48];
  v49 = MFXDevice4::createTexture(a2, v27);
  v50 = *v137;
  *v137 = v49;

  [(MTLTextureDescriptor *)v27 setPixelFormat:25];
  v51 = MFXDevice4::createTexture(a2, v27);
  v52 = *(a1 + 23);
  *(a1 + 23) = v51;

  if (v143)
  {
    v53 = 70;
  }

  else
  {
    v53 = 115;
  }

  [(MTLTextureDescriptor *)v27 setPixelFormat:v53];
  -[MTLTextureDescriptor setWidth:](v27, "setWidth:", [*v137 width] >> 1);
  -[MTLTextureDescriptor setHeight:](v27, "setHeight:", [*v137 height] >> 1);
  v54 = MFXDevice4::createTexture(a2, v27);
  v55 = *(a1 + 19);
  *(a1 + 19) = v54;

  [(MTLTextureDescriptor *)v27 setWidth:(a1[2] + (a1[2] >> 31)) >> 1];
  [(MTLTextureDescriptor *)v27 setHeight:(a1[3] + (a1[3] >> 31)) >> 1];
  v56 = MFXDevice4::createBuffer(a2, 4 * a1[1] * *a1, 32);
  v57 = *(a1 + 20);
  *(a1 + 20) = v56;

  [(MTLTextureDescriptor *)v27 setPixelFormat:25];
  v58 = MFXDevice4::createTexture(a2, v27);
  v59 = *(a1 + 24);
  *(a1 + 24) = v58;

  v60 = MFXDevice4::createTexture(a2, v27);
  v61 = *(a1 + 25);
  *(a1 + 25) = v60;

  v62 = MFXDevice4::createTexture(a2, v27);
  v63 = *(a1 + 26);
  *(a1 + 26) = v62;

  v64 = MFXDevice4::createTexture(a2, v27);
  v65 = *(a1 + 27);
  *(a1 + 27) = v64;

  [(MTLTextureDescriptor *)v27 setPixelFormat:23];
  v66 = MFXDevice4::createTexture(a2, v27);
  v67 = *(a1 + 28);
  *(a1 + 28) = v66;

  v68 = MFXDevice4::createTexture(a2, v27);
  v69 = *(a1 + 29);
  *(a1 + 29) = v68;

  [(MTLTextureDescriptor *)v27 setPixelFormat:115];
  v70 = MFXDevice4::createTexture(a2, v27);
  v71 = *(a1 + 30);
  *(a1 + 30) = v70;

  v72 = MFXDevice4::createTexture(a2, v27);
  v73 = *(a1 + 31);
  *(a1 + 31) = v72;

  if (*(a1 + 65) == 1)
  {
    [(MTLTextureDescriptor *)v27 setPixelFormat:13];
    [(MTLTextureDescriptor *)v27 setWidth:a1[4]];
    [(MTLTextureDescriptor *)v27 setHeight:a1[5]];
    v74 = MFXDevice4::createTexture(a2, v27);
    v75 = *(a1 + 32);
    *(a1 + 32) = v74;

    v76 = MFXDevice4::createTexture(a2, v27);
    v77 = *(a1 + 33);
    *(a1 + 33) = v76;
  }

  [(MTLTextureDescriptor *)v27 setPixelFormat:65];
  [(MTLTextureDescriptor *)v27 setWidth:*a1];
  [(MTLTextureDescriptor *)v27 setHeight:a1[1]];
  v78 = MFXDevice4::createTexture(a2, v27);
  v79 = *(a1 + 21);
  *(a1 + 21) = v78;

  [(MTLTextureDescriptor *)v27 setPixelFormat:25];
  v80 = MFXDevice4::createTexture(a2, v27);
  v81 = *(a1 + 22);
  *(a1 + 22) = v80;

  v82 = MFXDevice4::createBuffer(a2, 2, 0);
  v83 = *(a1 + 37);
  *(a1 + 37) = v82;

  v84 = MFXDevice4::createBuffer(a2, 2, 0);
  v85 = *(a1 + 38);
  *(a1 + 38) = v84;

  *[*(a1 + 37) contents] = COERCE_UNSIGNED_INT(1.0);
  *[*(a1 + 38) contents] = COERCE_UNSIGNED_INT(1.0);
  v86 = MFXDevice4::createBuffer(a2, 1, 32);
  v87 = *(a1 + 39);
  *(a1 + 39) = v86;

  v88 = MFXDevice4::createBuffer(a2, 0x2000, 32);
  v89 = *(a1 + 40);
  *(a1 + 40) = v88;

  if (a16)
  {
    v90 = MFXDevice4::createBuffer(a2, 0x2000, 32);
    v91 = *(a1 + 41);
    *(a1 + 41) = v90;
  }

  v92 = v24;
  v93 = objc_opt_new();
  v94 = v93;
  v95 = a12;
  if (a12)
  {
    v95 = *(a1 + 62);
  }

  *(a1 + 60) = v95;
  [v93 setConstantValue:a1 + 15 type:53 atIndex:10];
  [v94 setConstantValue:&v143 type:53 atIndex:13];
  [v94 setConstantValue:a1 + 16 type:53 atIndex:14];
  [v94 setConstantValue:a1 + 6 type:53 atIndex:15];
  [v94 setConstantValue:a1 + 66 type:53 atIndex:16];
  [v94 setConstantValue:a1 + 65 type:53 atIndex:17];
  [v94 setConstantValue:a1 + 67 type:53 atIndex:18];
  [v94 setConstantValue:a1 + 17 type:53 atIndex:23];
  if (*v92)
  {
    v96 = 1;
  }

  else
  {
    v96 = a16;
  }

  v142 = v96;
  [v94 setConstantValue:&v142 type:53 atIndex:22];
  v141 = 1023826251;
  [v94 setConstantValue:&v141 type:3 atIndex:9];
  if (a16)
  {
    v97 = MFXDevice4::createComputePipeline(a2, v136, @"luma_log_sum_denoiser", v94);
    v98 = @"luma_log_sum_to_exposure_denoiser";
  }

  else
  {
    v97 = MFXDevice4::createComputePipeline(a2, v136, @"luma_log_sum", v94);
    v98 = @"luma_log_sum_to_exposure";
  }

  v99 = *(a1 + 42);
  *(a1 + 42) = v97;

  v100 = MFXDevice4::createComputePipeline(a2, v136, v98, v94);
  v101 = *(a1 + 43);
  *(a1 + 43) = v100;

  v102 = MFXDevice4::createComputePipeline(a2, v136, @"exposure_texture_to_buffer", v94);
  v103 = *(a1 + 44);
  *(a1 + 44) = v102;

  v104 = MFXDevice4::createComputePipeline(a2, v136, @"brnetv3_build_tensors_low_resolution", v94);
  v105 = *(a1 + 45);
  *(a1 + 45) = v104;

  v140 = 0;
  [v94 setConstantValue:&v140 type:53 atIndex:12];
  v106 = MFXDevice4::createComputePipeline(a2, v136, @"brnetv3_lowres_signals", v94);
  v107 = *(a1 + 48);
  *(a1 + 48) = v106;

  v140 = 1;
  [v94 setConstantValue:&v140 type:53 atIndex:12];
  v108 = MFXDevice4::createComputePipeline(a2, v136, @"brnetv3_lowres_signals", v94);
  v109 = *(a1 + 61);
  *(a1 + 61) = v108;

  v110 = MFXDevice4::createComputePipeline(a2, v136, @"brnetv3_warp_history_high_resolution", v94);
  v111 = *(a1 + 47);
  *(a1 + 47) = v110;

  v112 = MFXDevice4::createComputePipeline(a2, v136, @"brnetv3_anisotropic_gaussian_filter", v94);
  v113 = *(a1 + 49);
  *(a1 + 49) = v112;

  v139 = 4;
  [v94 setConstantValue:&v139 type:41 atIndex:0];
  v114 = MFXDevice4::createComputePipeline(a2, v136, @"brnetv3_output_spatial_lr", v94);
  v115 = *(a1 + 50);
  *(a1 + 50) = v114;

  v116 = MFXDevice4::createComputePipeline(a2, v136, @"brnetv3_output_temporal", v94);
  v117 = *(a1 + 51);
  *(a1 + 51) = v116;

  v138 = 1;
  [v94 setConstantValue:&v138 type:53 atIndex:5];
  v118 = MFXDevice4::createComputePipeline(a2, v136, @"brnetv3_flow_splat", v94);
  v119 = *(a1 + 55);
  *(a1 + 55) = v118;

  v138 = 0;
  [v94 setConstantValue:&v138 type:53 atIndex:5];
  v120 = MFXDevice4::createComputePipeline(a2, v136, @"brnetv3_flow_splat", v94);
  v121 = *(a1 + 56);
  *(a1 + 56) = v120;

  v122 = MFXDevice4::createComputePipeline(a2, v136, @"brnetv3_flow_splat_texture", v94);
  v123 = *(a1 + 57);
  *(a1 + 57) = v122;

  v124 = MFXDevice4::createComputePipeline(a2, v136, @"brnetv3_flow_diff_texture", v94);
  v125 = *(a1 + 58);
  *(a1 + 58) = v124;

  v126 = MFXDevice4::createComputePipeline(a2, v136, @"brnetv3_flow_splat_init_forward_z", v94);
  v127 = *(a1 + 59);
  *(a1 + 59) = v126;

  v128 = MFXDevice4::createComputePipeline(a2, v136, @"brnetv3_update_sample_statistics", v94);
  v129 = *(a1 + 60);
  *(a1 + 60) = v128;

  if (*(a1 + 64) == 1)
  {
    v130 = MFXDevice4::createComputePipeline(a2, v136, @"brnetv3_copy_reactive_mask", v94);
    v131 = *(a1 + 62);
    *(a1 + 62) = v130;
  }

  if (*(a1 + 66) == 1)
  {
    v132 = MFXDevice4::createComputePipeline(a2, v136, @"dilateFlow", 0);
    v133 = *(a1 + 63);
    *(a1 + 63) = v132;
  }

  return a1;
}

void BRNet_v3_Filter<MFXDevice4>::BRNet_v3_Filter()
{
  BRNet_v3_Filter<MFXDevice4>::BRNet_v3_Filter();
}

{
    ;
  }
}

{
    ;
  }
}

void BRNet_v3_Filter<MFXDevice4>::encodePre(uint64_t a1, void *a2, MFXComputeEncoder4 *a3, void *a4, void *a5, void *a6, void *a7, void *a8, float32x2_t a9, float32x2_t a10, float a11, double a12, float a13, void *a14, char a15, char a16, char a17, unsigned int a18, unsigned __int8 a19)
{
  v59 = a19;
  v29 = a18;
  v55 = a2;
  v30 = a4;
  v56 = a5;
  v31 = a6;
  v32 = a7;
  v57 = a8;
  v58 = a14;
  v67 = a15;
  v66 = a13;
  *(a1 + 61) = 0;
  v33 = v29 - *(a1 + 8) / 2;
  if (v33 < 0)
  {
    v33 = *(a1 + 8) / 2 - v29;
  }

  if (v33 <= 2)
  {
    v34 = HIWORD(v29) - *(a1 + 12) / 2;
    if (v34 < 0)
    {
      v34 = *(a1 + 12) / 2 - HIWORD(v29);
    }

    if (v34 <= 2)
    {
      *(a1 + 61) = 1;
    }
  }

  v35 = *a3;
  if (a17)
  {
    [v35 setComputePipelineState:*(a1 + 336)];
    MFXComputeEncoder4::setTexture(a3, v30, 0);
    MFXComputeEncoder4::setBytes(a3, &a18, 4uLL, 1u);
    MFXComputeEncoder4::setBytes(a3, &v66, 4uLL, 2u);
    MFXComputeEncoder4::setBuffer(a3, *(a1 + 320), 0, 0);
    v36 = *a3;
    v70 = xmmword_2398F2880;
    v71 = 1;
    v68 = xmmword_2398F28F0;
    v69 = 1;
    [v36 dispatchThreadgroups:&v70 threadsPerThreadgroup:&v68];
    [*a3 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
    [*a3 setComputePipelineState:*(a1 + 344)];
    MFXComputeEncoder4::setBuffer(a3, *(a1 + 320), 0, 0);
    LODWORD(v61[0]) = a18 * HIWORD(a18);
    MFXComputeEncoder4::setBytes(a3, v61, 4uLL, 1u);
    MFXComputeEncoder4::setBuffer(a3, *(a1 + 296 + 8 * v59), 0, 2u);
    MFXComputeEncoder4::setBuffer(a3, *(a1 + 296 + 8 * (v59 == 0)), 0, 3u);
    MFXComputeEncoder4::setBuffer(a3, *(a1 + 312), 0, 4u);
    MFXComputeEncoder4::setBytes(a3, &v67, 1uLL, 5u);
    v37 = *a3;
    v70 = vdupq_n_s64(1uLL);
    v71 = 1;
    v68 = xmmword_2398F2890;
    v69 = 1;
    [v37 dispatchThreadgroups:&v70 threadsPerThreadgroup:&v68];
  }

  else
  {
    [v35 setComputePipelineState:*(a1 + 352)];
    MFXComputeEncoder4::setTexture(a3, v57, 0);
    MFXComputeEncoder4::setBuffer(a3, *(a1 + 296 + 8 * v59), 0, 0);
    MFXComputeEncoder4::setBuffer(a3, *(a1 + 296 + 8 * (v59 == 0)), 0, 1u);
    MFXComputeEncoder4::setBuffer(a3, *(a1 + 312), 0, 2u);
    MFXComputeEncoder4::setBytes(a3, &v67, 1uLL, 3u);
    v38 = *a3;
    v70 = vdupq_n_s64(1uLL);
    v71 = 1;
    v68 = xmmword_2398F2920;
    v69 = 1;
    [v38 dispatchThreads:&v70 threadsPerThreadgroup:&v68];
  }

  [*a3 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:{1, *&a12}];
  [*a3 setComputePipelineState:*(a1 + 360)];
  MFXComputeEncoder4::setTexture(a3, v30, 0);
  MFXComputeEncoder4::setTexture(a3, v56, 1u);
  MFXComputeEncoder4::setTexture(a3, v31, 2u);
  MFXComputeEncoder4::setTexture(a3, *(a1 + 88), 3u);
  MFXComputeEncoder4::setTexture(a3, *(a1 + 80), 4u);
  v39 = -1.0;
  if (a16)
  {
    v39 = 1.0;
  }

  v65 = v39;
  MFXComputeEncoder4::setBytes(a3, &v65, 4uLL, 0);
  MFXComputeEncoder4::setBytes(a3, &a18, 4uLL, 1u);
  MFXComputeEncoder4::setBytes(a3, &v66, 4uLL, 2u);
  v40 = a1 + 296;
  MFXComputeEncoder4::setBuffer(a3, *(a1 + 296 + 8 * v59), 0, 3u);
  MFXComputeEncoder4::setBuffer(a3, *(a1 + 296 + 8 * (v59 == 0)), 0, 4u);
  v41 = *a3;
  v70.i64[0] = a18 + 2;
  v70.i64[1] = HIWORD(a18) + 2;
  v71 = 1;
  v68 = vdupq_n_s64(8uLL);
  v69 = 1;
  [v41 dispatchThreads:&v70 threadsPerThreadgroup:&v68];
  [*a3 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
  v61[0] = vmul_f32(a9, a10);
  v61[1] = __PAIR64__(v53, LODWORD(a11));
  if ((*(a1 + 60) & 1) == 0)
  {
    [*a3 setComputePipelineState:*(a1 + 376)];
    MFXComputeEncoder4::setTexture(a3, *(a1 + 88), 0);
    MFXComputeEncoder4::setTexture(a3, v32, 1u);
    MFXComputeEncoder4::setTexture(a3, *(a1 + 80), 2u);
    MFXComputeEncoder4::setTexture(a3, *(a1 + 96), 3u);
    MFXComputeEncoder4::setTexture(a3, *(a1 + 272), 4u);
    MFXComputeEncoder4::setTexture(a3, *(a1 + 280), 5u);
    MFXComputeEncoder4::setBytes(a3, v61, 0x18uLL, 0);
    MFXComputeEncoder4::setBytes(a3, &a18, 4uLL, 1u);
    MFXComputeEncoder4::setBuffer(a3, *(v40 + 8 * v59), 0, 2u);
    MFXComputeEncoder4::setBuffer(a3, *(v40 + 8 * (v59 == 0)), 0, 3u);
    MFXComputeEncoder4::setBuffer(a3, *(a1 + 312), 0, 4u);
    v42 = *a3;
    v43 = *(a1 + 16);
    v44.i64[0] = v43;
    v44.i64[1] = SHIDWORD(v43);
    v70 = v44;
    v71 = 1;
    v68 = vdupq_n_s64(8uLL);
    v69 = 1;
    [v42 dispatchThreads:&v70 threadsPerThreadgroup:&v68];
    [*a3 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
  }

  v45 = 384;
  if (*(a1 + 61))
  {
    v45 = 488;
  }

  [*a3 setComputePipelineState:*(a1 + v45)];
  MFXComputeEncoder4::setTexture(a3, *(a1 + 88), 0);
  MFXComputeEncoder4::setTexture(a3, *(a1 + 96), 1u);
  MFXComputeEncoder4::setTexture(a3, *(a1 + 80), 2u);
  MFXComputeEncoder4::setTexture(a3, v32, 3u);
  MFXComputeEncoder4::setTexture(a3, *(a1 + 104 + 8 * v59), 4u);
  MFXComputeEncoder4::setTexture(a3, *(a1 + 120 + 8 * v59), 5u);
  MFXComputeEncoder4::setTexture(a3, *(a1 + 104 + 8 * (v59 == 0)), 6u);
  MFXComputeEncoder4::setTexture(a3, *(a1 + 120 + 8 * (v59 == 0)), 7u);
  MFXComputeEncoder4::setTexture(a3, *(a1 + 144), 8u);
  MFXComputeEncoder4::setTexture(a3, *(a1 + 184), 9u);
  v46 = (a1 + 8 * v59);
  MFXComputeEncoder4::setTexture(a3, v46[24], 0xCu);
  MFXComputeEncoder4::setTexture(a3, v46[26], 0xDu);
  MFXComputeEncoder4::setTexture(a3, v46[28], 0xEu);
  MFXComputeEncoder4::setTexture(a3, *(a1 + 240), 0xFu);
  MFXComputeEncoder4::setTexture(a3, *(a1 + 248), 0x10u);
  v47 = *(a1 + 28);
  v63 = *(a1 + 32);
  v64 = v47;
  v62 = *(a1 + 36);
  MFXComputeEncoder4::setBytes(a3, v61, 0x18uLL, 0);
  MFXComputeEncoder4::setBytes(a3, &a18, 4uLL, 1u);
  MFXComputeEncoder4::setBuffer(a3, v58, 0, 2u);
  MFXComputeEncoder4::setBuffer(a3, *(v40 + 8 * v59), 0, 3u);
  MFXComputeEncoder4::setBuffer(a3, *(v40 + 8 * (v59 == 0)), 0, 4u);
  MFXComputeEncoder4::setBuffer(a3, *(a1 + 312), 0, 5u);
  [*a3 setThreadgroupMemoryLength:0x1000uLL / objc_msgSend(*(a1 + 384) atIndex:{"threadExecutionWidth"), 0}];
  v48 = (*(a1 + 8) + (*(a1 + 8) >> 31)) >> 1;
  v60[1] = *(a1 + 12) / 2;
  v60[0] = v48;
  MFXComputeEncoder4::setBytes(a3, v60, 4uLL, 6u);
  v49 = *a3;
  v50 = *(a1 + 28);
  v51.i64[0] = v50;
  v51.i64[1] = SHIDWORD(v50);
  v70 = v51;
  v71 = 1;
  v68 = vdupq_n_s64(8uLL);
  v69 = 1;
  [v49 dispatchThreads:&v70 threadsPerThreadgroup:&v68];
}

void BRNet_v3_Filter<MFXDevice4>::encodeExposureCalcForDenoiser(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5, int a6, int a7, unsigned int a8, float a9)
{
  v17 = a3;
  v18 = a4;
  v26 = a5;
  v25 = a7;
  v24 = a9;
  v19 = *a2;
  if (a6)
  {
    [v19 setComputePipelineState:*(a1 + 336)];
    MFXComputeEncoder4::setTexture(a2, v17, 0);
    MFXComputeEncoder4::setBytes(a2, &v25, 4uLL, 1u);
    MFXComputeEncoder4::setBytes(a2, &v24, 4uLL, 2u);
    MFXComputeEncoder4::setBuffer(a2, *(a1 + 320), 0, 0);
    MFXComputeEncoder4::setBuffer(a2, *(a1 + 328), 0, 3u);
    v20 = *a2;
    v29 = xmmword_2398F2880;
    v30 = 1;
    v27 = xmmword_2398F28F0;
    v28 = 1;
    [v20 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
    [*a2 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
    [*a2 setComputePipelineState:*(a1 + 344)];
    MFXComputeEncoder4::setBuffer(a2, *(a1 + 320), 0, 0);
    v23 = v25 * HIWORD(v25);
    MFXComputeEncoder4::setBytes(a2, &v23, 4uLL, 1u);
    MFXComputeEncoder4::setBuffer(a2, *(a1 + 296 + 8 * a8), 0, 2u);
    MFXComputeEncoder4::setBuffer(a2, *(a1 + 296 + 8 * (a8 == 0)), 0, 3u);
    MFXComputeEncoder4::setBuffer(a2, *(a1 + 312), 0, 4u);
    MFXComputeEncoder4::setBytes(a2, &v26, 1uLL, 5u);
    MFXComputeEncoder4::setBuffer(a2, *(a1 + 328), 0, 6u);
    v21 = *a2;
    v29 = vdupq_n_s64(1uLL);
    v30 = 1;
    v27 = xmmword_2398F2890;
    v28 = 1;
    [v21 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  }

  else
  {
    [v19 setComputePipelineState:*(a1 + 352)];
    MFXComputeEncoder4::setTexture(a2, v18, 0);
    MFXComputeEncoder4::setBuffer(a2, *(a1 + 296 + 8 * a8), 0, 0);
    MFXComputeEncoder4::setBuffer(a2, *(a1 + 296 + 8 * (a8 == 0)), 0, 1u);
    MFXComputeEncoder4::setBuffer(a2, *(a1 + 312), 0, 2u);
    MFXComputeEncoder4::setBytes(a2, &v26, 1uLL, 3u);
    v22 = *a2;
    v29 = vdupq_n_s64(1uLL);
    v30 = 1;
    v27 = xmmword_2398F2920;
    v28 = 1;
    [v22 dispatchThreads:&v29 threadsPerThreadgroup:&v27];
  }
}

void BRNet_v3_Filter<MFXDevice4>::encodePreForDenoise(uint64_t a1, float32x2_t a2, float32x2_t a3, float a4, double a5, float a6, uint64_t a7, id *a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, char a19, char a20, unsigned int a21, unsigned __int8 a22)
{
  v30 = a21;
  v58 = a9;
  v57 = a10;
  v56 = a11;
  v31 = a12;
  v55 = a14;
  v54 = a15;
  v53 = a16;
  v32 = a17;
  v33 = a18;
  v65 = a6;
  *(a1 + 61) = 0;
  v34 = v30 - *(a1 + 8) / 2;
  if (v34 < 0)
  {
    v34 = *(a1 + 8) / 2 - v30;
  }

  if (v34 <= 2)
  {
    v35 = HIWORD(v30) - *(a1 + 12) / 2;
    if (v35 < 0)
    {
      v35 = *(a1 + 12) / 2 - HIWORD(v30);
    }

    if (v35 <= 2)
    {
      *(a1 + 61) = 1;
    }
  }

  [*a8 setComputePipelineState:{*(a1 + 360), *&a5}];
  MFXComputeEncoder4::setTexture(a8, v58, 0);
  MFXComputeEncoder4::setTexture(a8, v57, 1u);
  MFXComputeEncoder4::setTexture(a8, v56, 2u);
  MFXComputeEncoder4::setTexture(a8, *(a1 + 88), 3u);
  MFXComputeEncoder4::setTexture(a8, *(a1 + 80), 4u);
  v36 = -1.0;
  if (a20)
  {
    v36 = 1.0;
  }

  v64 = v36;
  MFXComputeEncoder4::setBytes(a8, &v64, 4uLL, 0);
  MFXComputeEncoder4::setBytes(a8, &a21, 4uLL, 1u);
  MFXComputeEncoder4::setBytes(a8, &v65, 4uLL, 2u);
  v37 = a22;
  v38 = a1 + 296;
  MFXComputeEncoder4::setBuffer(a8, *(a1 + 296 + 8 * a22), 0, 3u);
  MFXComputeEncoder4::setBuffer(a8, *(a1 + 296 + 8 * (v37 == 0)), 0, 4u);
  v39 = *a8;
  *&v68 = a21 + 2;
  *(&v68 + 1) = HIWORD(a21) + 2;
  v69 = 1;
  v66 = vdupq_n_s64(8uLL);
  v67 = 1;
  [v39 dispatchThreads:&v68 threadsPerThreadgroup:&v66];
  v60[0] = vmul_f32(a2, a3);
  v60[1] = __PAIR64__(v51, LODWORD(a4));
  if ((*(a1 + 60) & 1) == 0)
  {
    [*a8 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
    [*a8 setComputePipelineState:*(a1 + 376)];
    MFXComputeEncoder4::setTexture(a8, *(a1 + 88), 0);
    MFXComputeEncoder4::setTexture(a8, v31, 1u);
    MFXComputeEncoder4::setTexture(a8, *(a1 + 80), 2u);
    MFXComputeEncoder4::setTexture(a8, *(a1 + 96), 3u);
    MFXComputeEncoder4::setTexture(a8, *(a1 + 272), 4u);
    MFXComputeEncoder4::setTexture(a8, *(a1 + 280), 5u);
    MFXComputeEncoder4::setBytes(a8, v60, 0x18uLL, 0);
    MFXComputeEncoder4::setBytes(a8, &a21, 4uLL, 1u);
    MFXComputeEncoder4::setBuffer(a8, *(v38 + 8 * v37), 0, 2u);
    MFXComputeEncoder4::setBuffer(a8, *(v38 + 8 * (v37 == 0)), 0, 3u);
    MFXComputeEncoder4::setBuffer(a8, *(a1 + 312), 0, 4u);
    v40 = *a8;
    v41 = *(a1 + 16);
    *&v42 = v41;
    *(&v42 + 1) = SHIDWORD(v41);
    v68 = v42;
    v69 = 1;
    v66 = vdupq_n_s64(8uLL);
    v67 = 1;
    [v40 dispatchThreads:&v68 threadsPerThreadgroup:&v66];
  }

  [*a8 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
  v43 = 384;
  if (*(a1 + 61))
  {
    v43 = 488;
  }

  [*a8 setComputePipelineState:*(a1 + v43)];
  MFXComputeEncoder4::setTexture(a8, *(a1 + 88), 0);
  MFXComputeEncoder4::setTexture(a8, *(a1 + 96), 1u);
  MFXComputeEncoder4::setTexture(a8, *(a1 + 80), 2u);
  MFXComputeEncoder4::setTexture(a8, v31, 3u);
  MFXComputeEncoder4::setTexture(a8, *(a1 + 104 + 8 * v37), 4u);
  MFXComputeEncoder4::setTexture(a8, *(a1 + 120 + 8 * v37), 5u);
  MFXComputeEncoder4::setTexture(a8, *(a1 + 104 + 8 * (v37 == 0)), 6u);
  MFXComputeEncoder4::setTexture(a8, *(a1 + 120 + 8 * (v37 == 0)), 7u);
  MFXComputeEncoder4::setTexture(a8, *(a1 + 144), 8u);
  MFXComputeEncoder4::setTexture(a8, *(a1 + 184), 9u);
  v44 = (a1 + 8 * v37);
  MFXComputeEncoder4::setTexture(a8, v44[24], 0xCu);
  MFXComputeEncoder4::setTexture(a8, v44[26], 0xDu);
  MFXComputeEncoder4::setTexture(a8, v44[28], 0xEu);
  MFXComputeEncoder4::setTexture(a8, *(a1 + 240), 0xFu);
  MFXComputeEncoder4::setTexture(a8, *(a1 + 248), 0x10u);
  MFXComputeEncoder4::setTexture(a8, v55, 0x11u);
  MFXComputeEncoder4::setTexture(a8, v54, 0x12u);
  MFXComputeEncoder4::setTexture(a8, v53, 0x13u);
  MFXComputeEncoder4::setTexture(a8, v32, 0x14u);
  MFXComputeEncoder4::setBytes(a8, &a21, 4uLL, 1u);
  v45 = *(a1 + 28);
  v62 = *(a1 + 32);
  v63 = v45;
  v61 = *(a1 + 36);
  MFXComputeEncoder4::setBytes(a8, v60, 0x18uLL, 0);
  MFXComputeEncoder4::setBuffer(a8, v33, 0, 2u);
  MFXComputeEncoder4::setBuffer(a8, *(v38 + 8 * v37), 0, 3u);
  MFXComputeEncoder4::setBuffer(a8, *(v38 + 8 * (v37 == 0)), 0, 4u);
  MFXComputeEncoder4::setBuffer(a8, *(a1 + 312), 0, 5u);
  [*a8 setThreadgroupMemoryLength:0x1000uLL / objc_msgSend(*(a1 + 384) atIndex:{"threadExecutionWidth"), 0}];
  v46 = (*(a1 + 8) + (*(a1 + 8) >> 31)) >> 1;
  v59[1] = *(a1 + 12) / 2;
  v59[0] = v46;
  MFXComputeEncoder4::setBytes(a8, v59, 4uLL, 6u);
  v47 = *a8;
  v48 = *(a1 + 28);
  *&v49 = v48;
  *(&v49 + 1) = SHIDWORD(v48);
  v68 = v49;
  v69 = 1;
  v66 = vdupq_n_s64(8uLL);
  v67 = 1;
  [v47 dispatchThreads:&v68 threadsPerThreadgroup:&v66];
}

void BRNet_v3_Filter<MFXDevice4>::encodeMid(int *a1, void *a2, id *a3, void *a4, void *a5, char a6, unsigned int a7, int a8, float32x2_t a9, float32x2_t a10, double a11)
{
  v21 = a2;
  v22 = a4;
  v23 = a5;
  v40 = a9;
  v39 = a7;
  v38 = a11;
  if ((*(a1 + 66) & 1) == 0)
  {
    v24 = *a3;
    if (a6)
    {
      v25 = a1 + 110;
    }

    else
    {
      [v24 setComputePipelineState:*(a1 + 59)];
      MFXComputeEncoder4::setBuffer(a3, *(a1 + 20), 0, 0);
      [*a3 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
      v26 = *a3;
      *v43 = a1[1] * *a1;
      *&v43[8] = vdupq_n_s64(1uLL);
      v41 = xmmword_2398F2910;
      v42 = 1;
      [v26 dispatchThreads:v43 threadsPerThreadgroup:&v41];
      v25 = a1 + 112;
      v24 = *a3;
    }

    [v24 setComputePipelineState:*v25];
    MFXComputeEncoder4::setTexture(a3, *(a1 + 10), 0);
    MFXComputeEncoder4::setTexture(a3, v23, 1u);
    MFXComputeEncoder4::setBuffer(a3, *(a1 + 20), 0, 0);
    MFXComputeEncoder4::setBytes(a3, &v40, 8uLL, 1u);
    MFXComputeEncoder4::setBytes(a3, a1, 4uLL, 2u);
    v27 = *a3;
    *v43 = a7;
    *&v43[8] = HIWORD(a7);
    *&v43[16] = 1;
    v41 = vdupq_n_s64(8uLL);
    v42 = 1;
    [v27 dispatchThreads:v43 threadsPerThreadgroup:&v41];
    [*a3 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
    [*a3 setComputePipelineState:*(a1 + 57)];
    MFXComputeEncoder4::setTexture(a3, *(a1 + 10), 0);
    MFXComputeEncoder4::setTexture(a3, *(a1 + 21), 1u);
    MFXComputeEncoder4::setBuffer(a3, *(a1 + 20), 0, 0);
    MFXComputeEncoder4::setBytes(a3, &v40, 8uLL, 1u);
    MFXComputeEncoder4::setBytes(a3, a1, 4uLL, 2u);
    v28 = *a3;
    *&v29 = *a1;
    *(&v29 + 1) = HIDWORD(*a1);
    *v43 = v29;
    *&v43[16] = 1;
    v41 = vdupq_n_s64(8uLL);
    v42 = 1;
    [v28 dispatchThreads:v43 threadsPerThreadgroup:&v41];
    [*a3 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
    [*a3 setComputePipelineState:*(a1 + 58)];
    MFXComputeEncoder4::setTexture(a3, *(a1 + 10), 0);
    MFXComputeEncoder4::setTexture(a3, *(a1 + 21), 1u);
    MFXComputeEncoder4::setTexture(a3, *(a1 + 22), 2u);
    MFXComputeEncoder4::setBytes(a3, &v40, 8uLL, 0);
    v30 = *a3;
    *v43 = a7;
    *&v43[8] = HIWORD(a7);
    *&v43[16] = 1;
    v41 = vdupq_n_s64(8uLL);
    v42 = 1;
    [v30 dispatchThreads:v43 threadsPerThreadgroup:&v41];
    [*a3 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
  }

  [*a3 setComputePipelineState:*(a1 + 60)];
  MFXComputeEncoder4::setTexture(a3, *(a1 + 10), 0);
  MFXComputeEncoder4::setTexture(a3, *(a1 + 22), 1u);
  MFXComputeEncoder4::setTexture(a3, *&a1[2 * a8 + 48], 2u);
  MFXComputeEncoder4::setTexture(a3, *&a1[2 * a8 + 52], 3u);
  MFXComputeEncoder4::setTexture(a3, *&a1[2 * (a8 == 0) + 48], 4u);
  MFXComputeEncoder4::setTexture(a3, *&a1[2 * (a8 == 0) + 52], 5u);
  MFXComputeEncoder4::setTexture(a3, *&a1[2 * a8 + 56], 6u);
  MFXComputeEncoder4::setTexture(a3, *&a1[2 * (a8 == 0) + 56], 8u);
  MFXComputeEncoder4::setTexture(a3, *(a1 + 11), 0xAu);
  v37 = vmul_f32(v40, a10);
  MFXComputeEncoder4::setBytes(a3, &v37, 8uLL, 0);
  MFXComputeEncoder4::setBytes(a3, &v39, 4uLL, 1u);
  MFXComputeEncoder4::setBytes(a3, &v38, 8uLL, 2u);
  v31 = (a1[3] + (a1[3] >> 31)) >> 1;
  v32 = *a3;
  *v43 = (a1[2] + (a1[2] >> 31)) >> 1;
  *&v43[8] = v31;
  *&v43[16] = 1;
  v41 = vdupq_n_s64(8uLL);
  v42 = 1;
  [v32 dispatchThreads:v43 threadsPerThreadgroup:&v41];
  if (*(a1 + 60) == 1)
  {
    [*a3 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
    v36[0] = vmul_f32(v40, a10);
    *&v36[1] = v38;
    [*a3 setComputePipelineState:*(a1 + 47)];
    MFXComputeEncoder4::setTexture(a3, *(a1 + 11), 0);
    MFXComputeEncoder4::setTexture(a3, v22, 1u);
    MFXComputeEncoder4::setTexture(a3, *(a1 + 10), 2u);
    MFXComputeEncoder4::setTexture(a3, *(a1 + 12), 3u);
    MFXComputeEncoder4::setTexture(a3, *(a1 + 34), 4u);
    MFXComputeEncoder4::setTexture(a3, *(a1 + 35), 5u);
    MFXComputeEncoder4::setBytes(a3, v36, 0x18uLL, 0);
    MFXComputeEncoder4::setBytes(a3, &v39, 4uLL, 1u);
    MFXComputeEncoder4::setBuffer(a3, *&a1[2 * a8 + 74], 0, 2u);
    MFXComputeEncoder4::setBuffer(a3, *&a1[2 * (a8 == 0) + 74], 0, 3u);
    MFXComputeEncoder4::setBuffer(a3, *(a1 + 39), 0, 4u);
    v33 = *a3;
    v34 = *(a1 + 2);
    *&v35 = v34;
    *(&v35 + 1) = SHIDWORD(v34);
    *v43 = v35;
    *&v43[16] = 1;
    v41 = vdupq_n_s64(8uLL);
    v42 = 1;
    [v33 dispatchThreads:v43 threadsPerThreadgroup:&v41];
  }
}

void BRNet_v3_Filter<MFXDevice4>::encodePost(int32x2_t *a1, float32x2_t a2, double a3, float a4, float a5, float a6, uint64_t a7, id *a8, void *a9, void *a10, void *a11, void *a12, void *a13, int a14, unsigned int a15, unsigned __int8 a16)
{
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v63 = a2;
  v62 = a6;
  v29 = a15;
  *&v30 = v29 / a1[2].i32[0];
  v31 = HIWORD(a15);
  *(&v30 + 1) = v31 / a1[2].i32[1];
  v61 = v30;
  v32 = [v26 width];
  v33 = [v26 height];
  *&v34 = v29 / v32;
  *(&v34 + 1) = v31 / v33;
  v60 = v34;
  v35 = a1[5].i32[0];
  v58 = a1[5].i32[1];
  v59 = v35;
  v57 = a1[6].i32[0];
  [*a8 setComputePipelineState:*&a1[50]];
  MFXComputeEncoder4::setBuffer(a8, v24, 0, 0);
  MFXComputeEncoder4::setTexture(a8, *&a1[19], 0);
  MFXComputeEncoder4::setBytes(a8, &v57, 8uLL, 1u);
  v36 = [*&a1[19] width];
  v37 = [*&a1[19] height];
  v38 = *a8;
  *&v66 = v36;
  *(&v66 + 1) = v37;
  v67 = 1;
  v64 = vdupq_n_s64(8uLL);
  v65 = 1;
  [v38 dispatchThreads:&v66 threadsPerThreadgroup:&v64];
  [*a8 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
  [*a8 setComputePipelineState:*&a1[51]];
  MFXComputeEncoder4::setTexture(a8, *&a1[18], 0);
  MFXComputeEncoder4::setBuffer(a8, v24, 0, 0);
  MFXComputeEncoder4::setBytes(a8, &v57, 8uLL, 1u);
  v39 = [*&a1[18] width];
  v40 = [*&a1[18] height];
  v41 = *a8;
  *&v66 = v39;
  *(&v66 + 1) = v40;
  v67 = 1;
  v64 = vdupq_n_s64(8uLL);
  v65 = 1;
  [v41 dispatchThreads:&v66 threadsPerThreadgroup:&v64];
  [*a8 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
  [*a8 setComputePipelineState:*&a1[49]];
  MFXComputeEncoder4::setTexture(a8, *&a1[11], 0);
  MFXComputeEncoder4::setTexture(a8, *&a1[12], 1u);
  MFXComputeEncoder4::setTexture(a8, v25, 3u);
  MFXComputeEncoder4::setTexture(a8, v28, 4u);
  MFXComputeEncoder4::setTexture(a8, *&a1[22], 5u);
  MFXComputeEncoder4::setTexture(a8, *&a1[23], 6u);
  MFXComputeEncoder4::setTexture(a8, *&a1[10], 7u);
  MFXComputeEncoder4::setTexture(a8, *&a1[19], 0xBu);
  MFXComputeEncoder4::setTexture(a8, *&a1[18], 0xCu);
  MFXComputeEncoder4::setTexture(a8, *&a1[30], 0xDu);
  MFXComputeEncoder4::setTexture(a8, *&a1[31], 0xEu);
  v42 = a16 == 0;
  MFXComputeEncoder4::setTexture(a8, *&a1[v42 + 24], 0xFu);
  MFXComputeEncoder4::setTexture(a8, *&a1[v42 + 26], 0x10u);
  if ((a1[8].i8[0] & 1) != 0 || (a1[8].i8[1] & 1) != 0 || a1[8].i8[4] == 1)
  {
    __asm { FMOV            V1.2S, #1.0 }

    *&v66 = vmul_f32(vdiv_f32(_D1, vcvt_f32_s32(a1[2])), a2);
    MFXComputeEncoder4::setBytes(a8, &v66, 8uLL, 6u);
    if (a1[8].i8[0])
    {
      MFXComputeEncoder4::setBytes(a8, &v60, 8uLL, 7u);
      MFXComputeEncoder4::setTexture(a8, v26, 0x11u);
      MFXComputeEncoder4::setTexture(a8, v27, 0x12u);
    }
  }

  MFXComputeEncoder4::setTexture(a8, *&a1[35], 0x13u);
  MFXComputeEncoder4::setTexture(a8, *&a1[34], 0x14u);
  if (a1[8].i8[1] == 1)
  {
    MFXComputeEncoder4::setTexture(a8, *&a1[a16 + 32], 8u);
    MFXComputeEncoder4::setTexture(a8, *&a1[v42 + 32], 9u);
  }

  v56 = __PAIR64__(LODWORD(a5), LODWORD(a4));
  MFXComputeEncoder4::setBytes(a8, &v56, 8uLL, 0);
  MFXComputeEncoder4::setBytes(a8, &v61, 8uLL, 1u);
  MFXComputeEncoder4::setBuffer(a8, *&a1[39], 0, 2u);
  MFXComputeEncoder4::setBytes(a8, &v62, 4uLL, 3u);
  MFXComputeEncoder4::setBuffer(a8, *&a1[a16 + 37], 0, 4u);
  MFXComputeEncoder4::setBytes(a8, &v63, 8uLL, 5u);
  v48 = *a8;
  v49 = a1[2];
  *&v50 = v49.i32[0];
  *(&v50 + 1) = v49.i32[1];
  v66 = v50;
  v67 = 1;
  v64 = vdupq_n_s64(8uLL);
  v65 = 1;
  [v48 dispatchThreads:&v66 threadsPerThreadgroup:&v64];
  if (a1[8].i8[0] == 1)
  {
    [*a8 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
    [*a8 setComputePipelineState:*&a1[62]];
    MFXComputeEncoder4::setTexture(a8, v26, 0);
    MFXComputeEncoder4::setTexture(a8, v27, 1u);
    MFXComputeEncoder4::setBytes(a8, &v60, 8uLL, 1u);
    v51 = *a8;
    v52 = a1[2];
    *&v53 = v52.i32[0];
    *(&v53 + 1) = v52.i32[1];
    v66 = v53;
    v67 = 1;
    v64 = vdupq_n_s64(8uLL);
    v65 = 1;
    [v51 dispatchThreads:&v66 threadsPerThreadgroup:&v64];
  }
}

void BRNet_v3_Filter<MFXDevice4>::encodeMidForDenoise(int *a1, double a2, uint64_t a3, id *a4, void *a5, void *a6, uint64_t a7, int a8, int a9)
{
  v15 = a5;
  v16 = a6;
  v27 = a2;
  HIDWORD(v26) = a9;
  v17 = -1.0;
  if (a8)
  {
    v17 = 1.0;
  }

  *&v26 = v17;
  [*a4 setComputePipelineState:{*(a1 + 63), v26, *&v27}];
  MFXComputeEncoder4::setTexture(a4, v15, 0);
  MFXComputeEncoder4::setTexture(a4, v16, 1u);
  MFXComputeEncoder4::setTexture(a4, *(a1 + 10), 2u);
  MFXComputeEncoder4::setBytes(a4, &v26, 4uLL, 0);
  MFXComputeEncoder4::setBytes(a4, &v26 + 4, 4uLL, 1u);
  v18 = *a4;
  *v30 = WORD2(v26) + 2;
  *&v30[8] = HIWORD(v26) + 2;
  *&v30[16] = 1;
  v28 = vdupq_n_s64(8uLL);
  v29 = 1;
  [v18 dispatchThreads:v30 threadsPerThreadgroup:&v28];
  [*a4 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
  v19 = *a4;
  if (a8)
  {
    v20 = a1 + 110;
  }

  else
  {
    [v19 setComputePipelineState:*(a1 + 59)];
    MFXComputeEncoder4::setBuffer(a4, *(a1 + 20), 0, 0);
    v21 = *a4;
    *v30 = a1[1] * *a1;
    *&v30[8] = vdupq_n_s64(1uLL);
    v28 = xmmword_2398F2910;
    v29 = 1;
    [v21 dispatchThreads:v30 threadsPerThreadgroup:&v28];
    [*a4 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
    v20 = a1 + 112;
    v19 = *a4;
  }

  [v19 setComputePipelineState:*v20];
  MFXComputeEncoder4::setTexture(a4, *(a1 + 10), 0);
  MFXComputeEncoder4::setTexture(a4, v15, 1u);
  MFXComputeEncoder4::setBuffer(a4, *(a1 + 20), 0, 0);
  MFXComputeEncoder4::setBytes(a4, &v27, 8uLL, 1u);
  MFXComputeEncoder4::setBytes(a4, a1, 4uLL, 2u);
  v22 = *a4;
  *v30 = WORD2(v26);
  *&v30[8] = HIWORD(v26);
  *&v30[16] = 1;
  v28 = vdupq_n_s64(8uLL);
  v29 = 1;
  [v22 dispatchThreads:v30 threadsPerThreadgroup:&v28];
  [*a4 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
  [*a4 setComputePipelineState:*(a1 + 57)];
  MFXComputeEncoder4::setTexture(a4, *(a1 + 10), 0);
  MFXComputeEncoder4::setTexture(a4, *(a1 + 21), 1u);
  MFXComputeEncoder4::setBuffer(a4, *(a1 + 20), 0, 0);
  MFXComputeEncoder4::setBytes(a4, &v27, 8uLL, 1u);
  MFXComputeEncoder4::setBytes(a4, a1, 4uLL, 2u);
  v23 = *a4;
  *&v24 = *a1;
  *(&v24 + 1) = HIDWORD(*a1);
  *v30 = v24;
  *&v30[16] = 1;
  v28 = vdupq_n_s64(8uLL);
  v29 = 1;
  [v23 dispatchThreads:v30 threadsPerThreadgroup:&v28];
  [*a4 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
  [*a4 setComputePipelineState:*(a1 + 58)];
  MFXComputeEncoder4::setTexture(a4, *(a1 + 10), 0);
  MFXComputeEncoder4::setTexture(a4, *(a1 + 21), 1u);
  MFXComputeEncoder4::setTexture(a4, *(a1 + 22), 2u);
  MFXComputeEncoder4::setBytes(a4, &v27, 8uLL, 0);
  v25 = *a4;
  *v30 = WORD2(v26);
  *&v30[8] = HIWORD(v26);
  *&v30[16] = 1;
  v28 = vdupq_n_s64(8uLL);
  v29 = 1;
  [v25 dispatchThreads:v30 threadsPerThreadgroup:&v28];
}

uint64_t BRNet_v3_Filter<MFXDevice4>::getEncodeIndex(uint64_t a1)
{
  v1 = *(a1 + 136);
  *(a1 + 136) = *(a1 + 136) == 0;
  return v1;
}

float BRNet_v3_Filter<MFXDevice4>::getInternalExposure(uint64_t a1)
{
  _H0 = *[*(a1 + 8 * *(a1 + 136) + 296) contents];
  __asm { FCVT            S0, H0 }

  return result;
}

id computeKernelMetal4(void *a1, void *a2, void *a3, id *a4, void *a5, unint64_t a6, uint64_t a7)
{
  v13 = a2;
  v14 = functionFromLibraryMetal4(a1, a3, a5);
  v15 = objc_alloc_init(MEMORY[0x277CD6B10]);
  [v15 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:a7];
  [v15 setComputeFunctionDescriptor:v14];
  if (a6)
  {
    [v15 setMaxTotalThreadsPerThreadgroup:a6];
  }

  v16 = [v13 newComputePipelineStateWithDescriptor:v15 compilerTaskOptions:0 error:a4];
  if (*a4)
  {
    v17 = [*a4 description];
    NSLog(&cfstr_ErrorCompiling.isa, v17);

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  if (!v16 || [v16 maxTotalThreadsPerThreadgroup] < a6)
  {
    goto LABEL_5;
  }

  v18 = v16;
LABEL_6:

  return v18;
}

void sub_2398EABF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21)
{
  MEMORY[0x23EE7AA60](v21, 0x10A0C400D23B8DDLL);

  _Unwind_Resume(a1);
}

void FrameGenImpl<MFXDevice4>::encodeTo(uint32x2_t *a1, uint64_t a2, void *a3, uint32x2_t *a4)
{
  v7 = a3;
  v8 = *a4;
  MFXComputeEncoder4::beginEncoding(*(a2 + 32), v7, *(a2 + 24));
  v9 = *(a2 + 32);
  if (a4[9].i8[0] == 1)
  {
    a1[57].i32[0] = 0;
  }

  v10 = a4[7];
  if (v10)
  {
    [*v9 waitForFence:*&v10 beforeEncoderStages:0x8000000];
  }

  v11 = [*&a4[4] width];
  v12 = [*&a4[4] height];
  if (MTLTraceEnabled())
  {
    v13 = a4[11].u16[0] | (a4[11].i32[1] << 16) | (v11 << 32);
    MFXDevice4::emitSignPostForComputeEncoder(a2);
  }

  v14 = vcvt_f32_u32(__PAIR64__(v12, v11));
  v15 = vcvt_f32_u32(a4[11]);
  v108 = vdiv_f32(vmul_f32(a4[8], v14), v15);
  v16 = -1.0;
  v17 = 1.0;
  if (a4[9].i8[1])
  {
    v16 = 1.0;
    v17 = 0.0;
  }

  v109 = v16;
  v110 = v17;
  v18 = a1[58].i32[1];
  v111 = a4[9].i32[1];
  v112 = v18;
  v19 = vcvt_f32_u32(a1[59]);
  v116 = vdiv_f32(v19, v15);
  v117 = vdiv_f32(v15, v14);
  __asm { FMOV            V0.2S, #1.0 }

  v118 = vdiv_f32(_D0, v15);
  v119 = vdiv_f32(_D0, v19);
  v25 = [v8 width];
  v104 = a2;
  v115 = 80 * v25 * [v8 height] / 0x384;
  v26 = *a4[10].i32;
  v27 = *&a4[10].i32[1];
  v113 = v26 / (v26 - v27);
  v114 = -(v27 * v26) / (v26 - v27);
  MFXComputeEncoder4::setBytes(v9, &v108, 0x48uLL, 0);
  [*v9 setLabel:@"MTLFX_Frame_Interpolation"];
  [*v9 pushDebugGroup:@"Downsample"];
  [*v9 setComputePipelineState:*a1];
  MFXComputeEncoder4::setTexture(v9, v8, 0);
  MFXComputeEncoder4::setTexture(v9, *&a1[a1[57].u32[1] + 22], 1u);
  MFXComputeEncoder4::setBuffer(v9, *&a1[56], 4 * (2304 * a1[57].i32[1]), 1u);
  v28 = [v8 width];
  v29 = [v8 height];
  v30 = *v9;
  v122.i64[0] = v28;
  v122.i64[1] = v29;
  v123 = 1;
  v120 = vdupq_n_s64(0x20uLL);
  v121 = 1;
  [v30 dispatchThreads:&v122 threadsPerThreadgroup:&v120];
  [*v9 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
  v105 = v8;
  if (a1[58].i32[0] >= 2u)
  {
    v107 = vdupq_n_s64(0x10uLL);
    v31 = a1;
    v32 = 1;
    do
    {
      v33 = *&v31[a1[57].u32[1] + 22];
      v34 = *&v31[a1[57].u32[1] + 24];
      [*v9 setComputePipelineState:*&a1[2]];
      MFXComputeEncoder4::setTexture(v9, v33, 0);
      MFXComputeEncoder4::setTexture(v9, v34, 1u);
      v35 = [v34 width];
      v36 = [v34 height];
      v37 = *v9;
      v122.i64[0] = v35;
      v122.i64[1] = v36;
      v123 = 1;
      v120 = v107;
      v121 = 1;
      [v37 dispatchThreads:&v122 threadsPerThreadgroup:&v120];
      [*v9 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];

      ++v32;
      v31 += 2;
    }

    while (v32 < a1[58].u32[0]);
  }

  [*v9 popDebugGroup];
  if (a1[57].i32[0])
  {
    [*v9 pushDebugGroup:@"Analyze histogram"];
    MFXComputeEncoder4::setBuffer(v9, *&a1[56], 4 * (2304 * a1[57].i32[1]), 1u);
    MFXComputeEncoder4::setBuffer(v9, *&a1[56], 4 * (9 * (256 - (a1[57].i32[1] << 8))), 2u);
    MFXComputeEncoder4::setBuffer(v9, *&a1[56], 18432, 3u);
    [*v9 setComputePipelineState:*&a1[1]];
    v38 = *v9;
    v122 = xmmword_2398F28D0;
    v123 = 1;
    v120 = xmmword_2398F28E0;
    v121 = 1;
    [v38 dispatchThreadgroups:&v122 threadsPerThreadgroup:&v120];
    [*v9 popDebugGroup];
    [*v9 pushDebugGroup:@"Optical Motion Vectors"];
    v103 = &a4[3];
    MFXComputeEncoder4::setTexture(v9, *&a4[3], 4u);
    v101 = a4;
    v102 = v7;
    v39 = a1[58].u32[0];
    if (v39)
    {
      v40 = 0;
      v41 = a1 + 43;
      v42 = -1;
      v106 = vdupq_n_s64(0x10uLL);
      do
      {
        v43 = v39 + v42;
        v44 = *&a1[(v39 + v42) + 36];
        if (v40)
        {
          v45 = v41[v43 + 1];
        }

        else
        {
          v45 = 0;
        }

        v46 = v45;
        [*v9 setComputePipelineState:*&a1[4]];
        MFXComputeEncoder4::setTexture(v9, v44, 0);
        v47 = &a1[2 * v43 + 22];
        MFXComputeEncoder4::setTexture(v9, *(v47 + 8 * a1[57].u32[1]), 1u);
        MFXComputeEncoder4::setTexture(v9, *(v47 + 8 * (1 - a1[57].i32[1])), 2u);
        MFXComputeEncoder4::setTexture(v9, v46, 3u);
        LODWORD(v47) = [v44 width];
        v48 = [v44 height];
        v49 = *v9;
        v122.i64[0] = v47;
        v122.i64[1] = v48;
        v123 = 1;
        v120 = xmmword_2398F28F0;
        v121 = 1;
        [v49 dispatchThreadgroups:&v122 threadsPerThreadgroup:&v120];
        [*v9 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
        [*v9 setComputePipelineState:*&a1[14]];
        MFXComputeEncoder4::setTexture(v9, *&v41[v43], 0);
        MFXComputeEncoder4::setTexture(v9, v44, 1u);
        v50 = [v44 width];
        v51 = [v44 height];
        v52 = *v9;
        v122.i64[0] = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
        v122.i64[1] = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
        v123 = 1;
        v120 = v106;
        v121 = 1;
        [v52 dispatchThreads:&v122 threadsPerThreadgroup:&v120];
        [*v9 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];

        ++v40;
        v39 = a1[58].u32[0];
        --v42;
      }

      while (v40 < v39);
    }

    v7 = v102;
    [*v9 popDebugGroup];
    a4 = v101;
    [*v9 pushDebugGroup:@"clear temp motion vectors"];
    [*v9 setComputePipelineState:*&a1[6]];
    MFXComputeEncoder4::setTexture(v9, *&a1[18], 0);
    MFXComputeEncoder4::setTexture(v9, *&a1[19], 1u);
    v53 = [*&a1[18] width];
    v54 = [*&a1[18] height];
    v55 = *v9;
    v122.i64[0] = v53;
    v122.i64[1] = v54;
    v123 = 1;
    v120 = vdupq_n_s64(0x10uLL);
    v121 = 1;
    [v55 dispatchThreads:&v122 threadsPerThreadgroup:&v120];
    [*v9 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
    [*v9 popDebugGroup];
    [*v9 pushDebugGroup:@"Splat optical motion vectors"];
    [*v9 setComputePipelineState:*&a1[5]];
    MFXComputeEncoder4::setTexture(v9, *&a1[18], 0);
    MFXComputeEncoder4::setTexture(v9, *&a1[19], 1u);
    MFXComputeEncoder4::setTexture(v9, *&a1[a1[57].u32[1] + 26], 2u);
    MFXComputeEncoder4::setTexture(v9, *&a1[(1 - a1[57].i32[1]) + 26], 3u);
    MFXComputeEncoder4::setTexture(v9, *&a1[43], 4u);
    MFXComputeEncoder4::setTexture(v9, *&a1[50], 5u);
    v56 = [*&a1[18] width];
    v57 = [*&a1[18] height];
    v58 = *v9;
    v122.i64[0] = v56;
    v122.i64[1] = v57;
    v123 = 1;
    v120 = vdupq_n_s64(8uLL);
    v121 = 1;
    [v58 dispatchThreads:&v122 threadsPerThreadgroup:&v120];
    [*v9 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
    [*v9 popDebugGroup];
    [*v9 pushDebugGroup:@"Inpaint optical motion vectors"];
    [*v9 setComputePipelineState:*&a1[13]];
    MFXComputeEncoder4::setTexture(v9, *&a1[55], 0);
    MFXComputeEncoder4::setTexture(v9, *&a1[18], 1u);
    MFXComputeEncoder4::setTexture(v9, *&a1[19], 2u);
    v59 = [*&a1[55] width];
    v60 = ([*&a1[55] height] + 15) & 0xFFFFFFFFFFFFFFF0;
    v61 = *v9;
    v122.i64[0] = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
    v122.i64[1] = v60;
    v123 = 1;
    v120 = vdupq_n_s64(0x10uLL);
    v121 = 1;
    [v61 dispatchThreads:&v122 threadsPerThreadgroup:&v120];
    [*v9 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
    [*v9 popDebugGroup];
    [*v9 pushDebugGroup:@"clear game motion vectors"];
    [*v9 setComputePipelineState:*&a1[7]];
    MFXComputeEncoder4::setTexture(v9, *&a1[20], 0);
    MFXComputeEncoder4::setTexture(v9, *&a1[21], 1u);
    v62 = *v9;
    v122 = vandq_s8(vaddw_u32(vdupq_n_s64(0xFuLL), v101[11]), vdupq_n_s64(0x1FFFFFFF0uLL));
    v123 = 1;
    v120 = vdupq_n_s64(0x10uLL);
    v121 = 1;
    [v62 dispatchThreads:&v122 threadsPerThreadgroup:&v120];
    [*v9 popDebugGroup];
    v63 = *v9;
    if (v101[9].i8[3] == 1)
    {
      [v63 pushDebugGroup:@"dilate depth"];
      [*v9 setComputePipelineState:*&a1[9]];
    }

    else
    {
      [v63 pushDebugGroup:@"dilate depth & motion vectors"];
      [*v9 setComputePipelineState:*&a1[10]];
      MFXComputeEncoder4::setTexture(v9, *v103, 2u);
      MFXComputeEncoder4::setTexture(v9, *&a1[53], 3u);
    }

    MFXComputeEncoder4::setTexture(v9, *&v101[2], 0);
    v64 = a1 + 51;
    MFXComputeEncoder4::setTexture(v9, *&a1[a1[57].u32[1] + 51], 1u);
    v65 = *v9;
    v66 = v101[11];
    v67.i64[0] = v66.u32[0];
    v67.i64[1] = v66.u32[1];
    v122 = v67;
    v123 = 1;
    v120 = vdupq_n_s64(0x10uLL);
    v121 = 1;
    [v65 dispatchThreads:&v122 threadsPerThreadgroup:&v120];
    [*v9 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
    [*v9 popDebugGroup];
    [*v9 pushDebugGroup:@"Splat game motion vectors"];
    [*v9 setComputePipelineState:*&a1[8]];
    MFXComputeEncoder4::setTexture(v9, *&a1[20], 0);
    MFXComputeEncoder4::setTexture(v9, *&a1[21], 1u);
    MFXComputeEncoder4::setTexture(v9, v105, 2u);
    MFXComputeEncoder4::setTexture(v9, *&v101[1], 3u);
    v68 = &a1[53];
    v69 = v103;
    if (!v101[9].i8[3])
    {
      v69 = &a1[53];
    }

    MFXComputeEncoder4::setTexture(v9, *v69, 4u);
    MFXComputeEncoder4::setTexture(v9, *&v64[a1[57].u32[1]], 5u);
    MFXComputeEncoder4::setTexture(v9, *&v64[1 - a1[57].i32[1]], 6u);
    v70 = *v9;
    v71 = v101[11];
    v72.i64[0] = v71.u32[0];
    v72.i64[1] = v71.u32[1];
    v122 = v72;
    v123 = 1;
    v120 = vdupq_n_s64(0x10uLL);
    v121 = 1;
    [v70 dispatchThreads:&v122 threadsPerThreadgroup:&v120];
    [*v9 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
    [*v9 popDebugGroup];
    v73 = v101[11].u32[0];
    if ([*v68 width] == v73 && (v74 = v101[11].u32[1], objc_msgSend(*v68, "height") == v74))
    {
      v75 = @"Fill cracks game motion vectors";
      v76 = 12;
    }

    else
    {
      v75 = @"Upsample game motion vectors";
      v76 = 11;
    }

    [*v9 pushDebugGroup:v75];
    [*v9 setComputePipelineState:*&a1[v76]];
    MFXComputeEncoder4::setTexture(v9, *v68, 0);
    MFXComputeEncoder4::setTexture(v9, *&a1[20], 1u);
    MFXComputeEncoder4::setTexture(v9, *&a1[21], 2u);
    MFXComputeEncoder4::setTexture(v9, *&a1[54], 3u);
    MFXComputeEncoder4::setTexture(v9, *&v64[a1[57].u32[1]], 4u);
    MFXComputeEncoder4::setTexture(v9, *&v64[1 - a1[57].i32[1]], 5u);
    v77 = [*v68 width];
    v78 = ([*v68 height] + 15) & 0xFFFFFFFFFFFFFFF0;
    v79 = *v9;
    v122.i64[0] = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
    v122.i64[1] = v78;
    v123 = 1;
    v120 = vdupq_n_s64(0x10uLL);
    v121 = 1;
    [v79 dispatchThreads:&v122 threadsPerThreadgroup:&v120];
    [*v9 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
    [*v9 popDebugGroup];
  }

  v80 = a4[7];
  if (v80)
  {
    [*v9 updateFence:*&v80 afterEncoderStages:0x8000000];
  }

  MFXComputeEncoder4::endEncoding(v9);
  MFXRenderEncoder4::beginEncoding((v104 + 40), v7, *&a4[4], 672, *(v104 + 24));
  [*(v104 + 40) setLabel:@"MTLFX_Frame_Interpolation_Fragment"];
  v81 = a1[57].u32[0];
  if (v81 <= 1)
  {
    v82 = @"Copy image";
  }

  else
  {
    v82 = @"Warp image";
  }

  [*(v104 + 40) pushDebugGroup:v82];
  v83 = a4[7];
  if (v83)
  {
    [*(v104 + 40) waitForFence:*&v83 beforeEncoderStages:2];
  }

  v84 = *&a4[6];
  MFXRenderEncoder4::setTileBuffer(v104 + 40, *&a1[56], 18432, 0);
  v85 = *(v104 + 40);
  if (v81 <= 1)
  {
    [v85 setRenderPipelineState:*&a1[17]];
    if (a4[9].i8[2] == 1)
    {
      MFXRenderEncoder4::setTileTexture(v104 + 40, v105, 1u);
      v86 = 2;
      goto LABEL_41;
    }

    if (v84)
    {
      v88 = v84;
    }

    else
    {
      v88 = v105;
    }

    MFXRenderEncoder4::setTileTexture(v104 + 40, v88, 1u);
    v87 = 0;
    v86 = 2;
  }

  else
  {
    [v85 setRenderPipelineState:*&a1[16]];
    MFXRenderEncoder4::setTileTexture(v104 + 40, *&a1[54], 1u);
    MFXRenderEncoder4::setTileTexture(v104 + 40, v105, 3u);
    MFXRenderEncoder4::setTileTexture(v104 + 40, *&a4[1], 4u);
    MFXRenderEncoder4::setTileTexture(v104 + 40, *&a1[53], 5u);
    MFXRenderEncoder4::setTileTexture(v104 + 40, *&a1[55], 6u);
    if (a4[9].i8[2] == 1)
    {
      MFXRenderEncoder4::setTileTexture(v104 + 40, 0, 7u);
      v86 = 8;
LABEL_41:
      v87 = v84;
      goto LABEL_47;
    }

    MFXRenderEncoder4::setTileTexture(v104 + 40, v84, 7u);
    v87 = 0;
    v86 = 8;
  }

LABEL_47:
  MFXRenderEncoder4::setTileTexture(v104 + 40, v87, v86);
  v89 = *(v104 + 40);
  v122 = vdupq_n_s64(0x20uLL);
  v123 = 1;
  [v89 dispatchThreadsPerTile:&v122];
  [*(v104 + 40) popDebugGroup];
  v90 = a4[7];
  if (v90)
  {
    [*(v104 + 40) updateFence:*&v90 afterEncoderStages:2];
  }

  MFXComputeEncoder4::endEncoding((v104 + 40));
  v91 = a4;
  if (a4[5])
  {
    MFXComputeEncoder4::beginEncoding(*(v104 + 32), v7, *(v104 + 24));
    v92 = *(v104 + 32);
    v93 = v91[7];
    if (v93)
    {
      [*v92 waitForFence:*&v93 beforeEncoderStages:0x8000000];
    }

    [*v92 pushDebugGroup:@"Debug output"];
    [*v92 setComputePipelineState:*&a1[15]];
    MFXComputeEncoder4::setTexture(v92, *&v91[5], 0);
    MFXComputeEncoder4::setTexture(v92, *&v91[4], 1u);
    MFXComputeEncoder4::setTexture(v92, *&v91[2], 2u);
    MFXComputeEncoder4::setTexture(v92, *&a1[53], 3u);
    MFXComputeEncoder4::setTexture(v92, *&a1[55], 4u);
    v94 = [*&v91[4] width];
    v95 = [*&v91[4] height];
    v96 = *v92;
    v122.i64[0] = v94;
    v122.i64[1] = v95;
    v123 = 1;
    v120 = vdupq_n_s64(0x10uLL);
    v121 = 1;
    [v96 dispatchThreads:&v122 threadsPerThreadgroup:&v120];
    [*v92 popDebugGroup];
    v97 = v91[7];
    if (v97)
    {
      [*v92 updateFence:*&v97 afterEncoderStages:0x8000000];
    }

    MFXComputeEncoder4::endEncoding(v92);
  }

  a1[58].i32[1] = v91[9].i32[1];
  a1[59] = v91[11];
  a1[57].i32[1] = 1 - a1[57].i32[1];
  v98 = a1[43];
  a1[43] = a1[50];
  a1[50] = v98;
  v99 = a1[57].i32[0];
  if ((v99 + 1) < 0x10)
  {
    v100 = v99 + 1;
  }

  else
  {
    v100 = 16;
  }

  a1[57].i32[0] = v100;
}

uint64_t FrameGenImpl<MFXDevice4>::FrameGenImpl(uint64_t a1, MFXDevice4 *a2, void *a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a3;
  *(a1 + 176) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 468) = 1015580809;
  v14 = 1;
  *(a1 + 448) = 0u;
  if (((a9 - 70) > 0x14 || ((1 << (a9 - 70)) & 0x100C03) == 0) && ((a9 - 586) > 0x35 || ((1 << (a9 - 74)) & 0x30000000000001) == 0))
  {
    v14 = 0;
  }

  if (a5 >= a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = a5;
  }

  v16 = 29 - __clz(v15);
  if (v16 >= 7)
  {
    v16 = 7;
  }

  *(a1 + 464) = v16;
  v107 = 1;
  v106 = 0;
  v17 = objc_opt_new();
  v18 = v17;
  if (v14)
  {
    v19 = &v106;
  }

  else
  {
    v19 = &v107;
  }

  [v17 setConstantValue:v19 type:53 atIndex:1];
  v20 = MFXDevice4::createComputePipeline(a2, v13, @"computeLuminance", v18);
  v21 = *a1;
  *a1 = v20;

  v22 = MFXDevice4::createComputePipeline(a2, v13, @"analyzeHistogram", 0);
  v23 = *(a1 + 8);
  *(a1 + 8) = v22;

  v24 = MFXDevice4::createComputePipeline(a2, v13, @"generateLuminancePyramid", 0);
  v25 = *(a1 + 24);
  *(a1 + 24) = v24;

  v26 = MFXDevice4::createComputePipeline(a2, v13, @"downSample", 0);
  v27 = *(a1 + 16);
  *(a1 + 16) = v26;

  v28 = MFXDevice4::createComputePipeline(a2, v13, @"findOpticalMotionVectorsV3", 0);
  v29 = *(a1 + 32);
  *(a1 + 32) = v28;

  v30 = MFXDevice4::createComputePipeline(a2, v13, @"initMotionVectors", 0);
  v31 = *(a1 + 48);
  *(a1 + 48) = v30;

  v32 = MFXDevice4::createComputePipeline(a2, v13, @"splatOpticalMotionVectors", 0);
  v33 = *(a1 + 40);
  *(a1 + 40) = v32;

  [v18 setConstantValue:&v106 type:53 atIndex:2];
  v34 = MFXDevice4::createComputePipeline(a2, v13, @"dilateDepth", v18);
  v35 = *(a1 + 72);
  *(a1 + 72) = v34;

  [v18 setConstantValue:&v107 type:53 atIndex:2];
  v36 = MFXDevice4::createComputePipeline(a2, v13, @"dilateDepth", v18);
  v37 = *(a1 + 80);
  *(a1 + 80) = v36;

  v38 = MFXDevice4::createComputePipeline(a2, v13, @"clearAppMotionVectors", 0);
  v39 = *(a1 + 56);
  *(a1 + 56) = v38;

  v40 = MFXDevice4::createComputePipeline(a2, v13, @"splatAppMotionVectors", 0);
  v41 = *(a1 + 64);
  *(a1 + 64) = v40;

  v42 = MFXDevice4::createComputePipeline(a2, v13, @"upsampleAppMotionVectors", 0);
  v43 = *(a1 + 88);
  *(a1 + 88) = v42;

  v44 = MFXDevice4::createComputePipeline(a2, v13, @"fillCracksAppMotionVectors", 0);
  v45 = *(a1 + 96);
  *(a1 + 96) = v44;

  v46 = MFXDevice4::createComputePipeline(a2, v13, @"inpaintMotionVectors", 0);
  v47 = *(a1 + 104);
  *(a1 + 104) = v46;

  v48 = MFXDevice4::createComputePipeline(a2, v13, @"medianFilter", 0);
  v49 = *(a1 + 112);
  *(a1 + 112) = v48;

  v50 = MFXDevice4::createComputePipeline(a2, v13, @"debugShader", 0);
  v51 = *(a1 + 120);
  *(a1 + 120) = v50;

  v52 = MFXDevice4::createTileShader(a2, v13, @"warpImage", a9, 0);
  v53 = *(a1 + 128);
  *(a1 + 128) = v52;

  v54 = MFXDevice4::createTileShader(a2, v13, @"copyImage", a9, 0);
  v55 = *(a1 + 136);
  *(a1 + 136) = v54;

  v101 = a5 >> 3;
  v102 = v18;
  v56 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:53 width:? height:? mipmapped:?];
  [(MTLTextureDescriptor *)v56 setUsage:35];
  v57 = MFXDevice4::createTexture(a2, v56);
  v58 = *(a1 + 144);
  *(a1 + 144) = v57;

  v59 = MFXDevice4::createTexture(a2, v56);
  v60 = *(a1 + 152);
  *(a1 + 152) = v59;

  v61 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:53 width:a6 height:a7 mipmapped:0];

  [(MTLTextureDescriptor *)v61 setUsage:35];
  v62 = MFXDevice4::createTexture(a2, v61);
  v63 = *(a1 + 160);
  *(a1 + 160) = v62;

  v64 = MFXDevice4::createTexture(a2, v61);
  v65 = *(a1 + 168);
  *(a1 + 168) = v64;

  v66 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:55 width:a6 height:a7 mipmapped:0];

  [(MTLTextureDescriptor *)v66 setUsage:16387];
  v67 = MFXDevice4::createTexture(a2, v66);
  v68 = *(a1 + 408);
  *(a1 + 408) = v67;

  v69 = MFXDevice4::createTexture(a2, v66);
  v70 = *(a1 + 416);
  *(a1 + 416) = v69;

  if (*(a1 + 464))
  {
    v105 = v13;
    v71 = 0;
    do
    {
      v72 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:10 width:a4 >> v71 height:a5 >> v71 mipmapped:0];

      [(MTLTextureDescriptor *)v72 setUsage:16387];
      v73 = 0;
      v74 = 1;
      v75 = a1 + 176 + 16 * v71;
      do
      {
        v76 = v74;
        v77 = MFXDevice4::createTexture(a2, v72);
        v78 = *(v75 + 8 * v73);
        *(v75 + 8 * v73) = v77;

        v74 = 0;
        v73 = 1;
      }

      while ((v76 & 1) != 0);
      ++v71;
      v79 = *(a1 + 464);
      v66 = v72;
    }

    while (v71 < v79);
    if (v79)
    {
      v80 = 0;
      v13 = v105;
      do
      {
        v81 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:65 width:a4 >> (v80 + 3) height:a5 >> (v80 + 3) mipmapped:0];

        [(MTLTextureDescriptor *)v81 setUsage:16387];
        v82 = MFXDevice4::createTexture(a2, v81);
        v83 = a1 + 8 * v80;
        v84 = *(v83 + 288);
        *(v83 + 288) = v82;

        v85 = MFXDevice4::createTexture(a2, v81);
        v86 = *(v83 + 344);
        *(v83 + 344) = v85;

        if (!v80)
        {
          v87 = MFXDevice4::createTexture(a2, v81);
          v88 = *(a1 + 400);
          *(a1 + 400) = v87;
        }

        ++v80;
        v72 = v81;
      }

      while (v80 < *(a1 + 464));
    }

    else
    {
      v81 = v72;
      v13 = v105;
    }
  }

  else
  {
    v81 = v66;
  }

  v89 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:65 width:a4 height:a5 mipmapped:0];

  [(MTLTextureDescriptor *)v89 setUsage:16387];
  v90 = MFXDevice4::createTexture(a2, v89);
  v91 = *(a1 + 424);
  *(a1 + 424) = v90;

  v92 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:13 width:a4 height:a5 mipmapped:0];

  [(MTLTextureDescriptor *)v92 setUsage:16387];
  v93 = MFXDevice4::createTexture(a2, v92);
  v94 = *(a1 + 432);
  *(a1 + 432) = v93;

  v95 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:65 width:a4 >> 3 height:v101 mipmapped:0];

  [(MTLTextureDescriptor *)v95 setUsage:16387];
  v96 = MFXDevice4::createTexture(a2, v95);
  v97 = *(a1 + 440);
  *(a1 + 440) = v96;

  v98 = MFXDevice4::createBuffer(a2, 18436, 32);
  v99 = *(a1 + 448);
  *(a1 + 448) = v98;

  return a1;
}

void sub_2398ED4B0(_Unwind_Exception *a1)
{
  for (i = 49; i != 42; --i)
  {
  }

  do
  {
  }

  while (i != 35);
  do
  {
  }

  while (i != 21);

  _Unwind_Resume(a1);
}

id MFXDevice4::createTileShader(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = objc_opt_new();
  v13 = functionFromLibraryMetal4(v9, v10, v11);
  [v12 setTileFunctionDescriptor:v13];

  [v12 setThreadgroupSizeMatchesTileSize:1];
  v14 = [v12 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript:0];
  [v15 setPixelFormat:a4];

  v16 = *(a1 + 8);
  v19 = 0;
  v17 = [v16 newRenderPipelineStateWithDescriptor:v12 compilerTaskOptions:0 error:&v19];

  return v17;
}

id *FrameGenImpl<MFXDevice4>::~FrameGenImpl(id *a1)
{
  for (i = 49; i != 42; --i)
  {
  }

  do
  {
  }

  while (i != 35);
  do
  {
  }

  while (i != 21);

  return a1;
}

void MFXRenderEncoder4::setTileBuffer(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v7 = a2;
  [*(a1 + 8) setAddress:objc_msgSend(v7 atIndex:{"gpuAddress") + a3, a4}];
}

void MFXRenderEncoder4::setTileTexture(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  [*(a1 + 8) setTexture:objc_msgSend(v5 atIndex:{"gpuResourceID"), a3}];
}

void MFXRenderEncoder4::beginEncoding(id *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v20 = a2;
  v9 = a3;
  v10 = a5;
  v11 = objc_opt_new();
  v12 = [v11 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript:0];
  [v13 setTexture:v9];

  v14 = [v11 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript:0];
  [v15 setLoadAction:0];

  v16 = [v11 colorAttachments];
  v17 = [v16 objectAtIndexedSubscript:0];
  [v17 setStoreAction:1];

  [v11 setThreadgroupMemoryLength:a4];
  [v11 setTileWidth:32];
  [v11 setTileHeight:32];
  v18 = [v20 renderCommandEncoderWithDescriptor:v11];
  v19 = *a1;
  *a1 = v18;

  objc_storeStrong(a1 + 1, a5);
  if (a4)
  {
    [*a1 setThreadgroupMemoryLength:a4 offset:0 atIndex:0];
  }

  [*a1 setArgumentTable:v10 atStages:4];
}

void MPSGraphMPSGraphExecutableWrapper::~MPSGraphMPSGraphExecutableWrapper(MPSGraphMPSGraphExecutableWrapper *this)
{
  if (!this->_prewarmComplete)
  {
    prewarm_group = this->_prewarm_group;
    if (prewarm_group)
    {
      dispatch_group_wait(prewarm_group, 0xFFFFFFFFFFFFFFFFLL);
    }
  }
}

void getMTLFXTemporalScalerVersionOverride(char *__s1, uint64_t a2, uint64_t *a3)
{
  if (*__s1 == 118 && __s1[1] == 49 && !__s1[2])
  {
    v6 = 0;
  }

  else
  {
    v6 = 65537;
    if (strcmp(__s1, "TAAU"))
    {
      if (!strcmp(__s1, "BRNet3"))
      {
        v6 = 0x10000;
      }

      else
      {
        if (strcmp(__s1, "BRNet4"))
        {
          NSLog(&cfstr_MtlfxTemporalS_1.isa, __s1);
          goto LABEL_12;
        }

        v6 = 65538;
      }
    }
  }

  if (v6 != a2)
  {
    NSLog(&cfstr_Mtlfxtemporals.isa, __s1, a2, v6);
    goto LABEL_13;
  }

LABEL_12:
  v6 = a2;
LABEL_13:
  *a3 = v6;
}

void findEnvVarNum<BOOL>()
{
    ;
  }
}

void findEnvVarNum<int>()
{
    ;
  }
}

void findEnvVarNum<unsigned int>()
{
    ;
  }
}

void FrameGenImpl<MFXDevice3>::encodeTo()
{
    ;
  }
}

void FrameGenImpl<MFXDevice3>::~FrameGenImpl()
{
    ;
  }
}

void BFNet_v1_Filter<MFXDevice3>::encodePost()
{
    ;
  }
}

void BFNet_v1_Filter<MFXDevice3>::encodeAtrous()
{
    ;
  }
}

void BFNet_v1_Filter<MFXDevice3>::encodeMid()
{
    ;
  }
}

void BFNet_v1_Filter<MFXDevice3>::encodePre()
{
    ;
  }
}

void BFNet_v1_Filter<MFXDevice3>::~BFNet_v1_Filter()
{
    ;
  }
}

void BFNet_v1_Filter<MFXDevice4>::encodePost()
{
    ;
  }
}

void BFNet_v1_Filter<MFXDevice4>::encodeAtrous()
{
    ;
  }
}

void BFNet_v1_Filter<MFXDevice4>::encodeMid()
{
    ;
  }
}

void BFNet_v1_Filter<MFXDevice4>::encodePre()
{
    ;
  }
}

void BFNet_v1_Filter<MFXDevice4>::~BFNet_v1_Filter()
{
    ;
  }
}

void BRNet_v3_Filter<MFXDevice3>::encodePost()
{
    ;
  }
}

void BRNet_v3_Filter<MFXDevice3>::encodeMidForDenoise()
{
    ;
  }
}

void BRNet_v3_Filter<MFXDevice3>::encodePreForDenoise()
{
    ;
  }
}

void BRNet_v3_Filter<MFXDevice3>::encodeExposureCalcForDenoiser()
{
    ;
  }
}

void BRNet_v3_Filter<MFXDevice3>::encodeMid()
{
    ;
  }
}

void BRNet_v3_Filter<MFXDevice3>::encodePre()
{
    ;
  }
}

void BRNet_v3_Filter<MFXDevice3>::~BRNet_v3_Filter()
{
    ;
  }
}

void BRNet_v3_Filter<MFXDevice4>::encodePost()
{
    ;
  }
}

void BRNet_v3_Filter<MFXDevice4>::encodeMidForDenoise()
{
    ;
  }
}

void BRNet_v3_Filter<MFXDevice4>::encodePreForDenoise()
{
    ;
  }
}

void BRNet_v3_Filter<MFXDevice4>::encodeExposureCalcForDenoiser()
{
    ;
  }
}

void BRNet_v3_Filter<MFXDevice4>::encodeMid()
{
    ;
  }
}

void BRNet_v3_Filter<MFXDevice4>::encodePre()
{
    ;
  }
}

void BRNet_v3_Filter<MFXDevice4>::~BRNet_v3_Filter()
{
    ;
  }
}

void BRNet_v3_Filter<MFXDevice3>::getInternalExposure()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}