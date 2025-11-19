id *gpuImageBufferCreate(id *a1, uint64_t a2, void *a3, void *a4, unint64_t a5, unsigned int a6)
{
  v9 = *a1;
  if (a2)
  {
    v10 = a5;
    v11 = [v9 newBufferWithBytesNoCopy:a2 length:a5 * a3 options:0x100000 deallocator:0];
  }

  else
  {
    v13 = [v9 minimumLinearTextureAlignmentForPixelFormat:70];
    v10 = (v13 + (a6 >> 3) * a4 - 1) / v13 * v13;
    v11 = [*a1 newBufferWithLength:v10 * a3 options:0];
  }

  v14 = v11;
  if (v11)
  {
    v15 = malloc_type_malloc(0x20uLL, 0x1080040ABB4582EuLL);
    v15[1] = a3;
    v15[2] = a4;
    v15[3] = v10;
    objc_storeStrong(v15, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void gpuImageBufferDestroy(void **a1)
{
  v2 = *a1;
  *a1 = 0;

  free(a1);
}

__n128 gpuImageBufferGetInfo(uint64_t a1, uint64_t a2)
{
  *a2 = [*a1 contents];
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = *(a1 + 24);
  return result;
}

uint64_t gpuImageMatrixMultiply_ARGB8888(uint64_t a1, void *a2, uint64_t a3, __int16 *a4, int a5, int16x4_t *a6, int32x4_t *a7)
{
  context = objc_autoreleasePoolPush();
  v14 = *(*(*(a1 + 16) + 16) + 280);
  v15 = *(a1 + 8);
  v16 = [v14 threadExecutionWidth];
  v17 = [v14 maxTotalThreadsPerThreadgroup];
  v18 = 1.0 / a5;
  v19.i16[0] = *a4;
  v19.i16[1] = a4[4];
  v19.i16[2] = a4[8];
  v19.i16[3] = a4[12];
  v20.i16[0] = a4[1];
  v20.i16[1] = a4[5];
  v20.i16[2] = a4[9];
  v20.i16[3] = a4[13];
  v21.i16[0] = a4[2];
  v21.i16[1] = a4[6];
  v21.i16[2] = a4[10];
  v21.i16[3] = a4[14];
  v22.i16[0] = a4[3];
  v22.i16[1] = a4[7];
  v22.i16[2] = a4[11];
  v22.i16[3] = a4[15];
  v33[0] = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v19)), v18);
  v33[1] = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v20)), v18);
  v33[2] = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v21)), v18);
  v33[3] = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v22)), v18);
  v23 = *(a3 + 24);
  v34 = a2[3];
  v35 = v23;
  v36 = 0;
  if (a6)
  {
    LOBYTE(v36) = 1;
    v33[4] = vdivq_f32(vcvtq_f32_s32(vmovl_s16(*a6)), vdupq_n_s32(0x437F0000u));
  }

  if (a7)
  {
    HIBYTE(v36) = 1;
    v24 = vcvtq_f32_s32(*a7);
    v25.i64[0] = 0x3000000030000000;
    v25.i64[1] = 0x3000000030000000;
    v25.i32[0] = vmulq_f32(v24, v25).u32[0];
    v26 = vdivq_f32(v24, vdupq_n_s32(0x4F00000Cu));
    v26.i32[0] = v25.i32[0];
    v33[5] = vmulq_n_f32(v26, v18);
  }

  [v15 setComputePipelineState:{v14, context}];
  [v15 setBuffer:*a2 offset:0 atIndex:0];
  [v15 setBuffer:*a3 offset:0 atIndex:1];
  [v15 setBytes:v33 length:112 atIndex:2];
  v31 = vextq_s8(*(a3 + 8), *(a3 + 8), 8uLL);
  v32 = 1;
  v30[0] = v16;
  v30[1] = v17 / v16;
  v30[2] = 1;
  [v15 dispatchThreads:&v31 threadsPerThreadgroup:v30];

  objc_autoreleasePoolPop(contexta);
  return 0;
}

uint64_t gpuImagePiecewisePolynomial_PlanarF(uint64_t a1, uint64_t a2, void *a3, void *a4, int *a5, int a6, unsigned int a7)
{
  if (a7 > 1)
  {
    return -5;
  }

  v15 = *(a1 + 8);
  v16 = *(*(*(a1 + 16) + 16) + 400);
  [v15 setComputePipelineState:v16];
  context = objc_autoreleasePoolPush();
  v17 = [v16 threadExecutionWidth];
  v18 = [v16 maxTotalThreadsPerThreadgroup];
  [v15 setBuffer:*a2 offset:0 atIndex:0];
  [v15 setBuffer:*a3 offset:0 atIndex:1];
  v19 = a6 + 1;
  v20 = 4 * (a6 + 1);
  [v15 setBytes:*a4 length:v20 atIndex:2];
  if (a7 == 1)
  {
    [v15 setBytes:a4[1] length:v20 atIndex:3];
    v21 = a5[2];
    v29 = a5[1];
    v31 = v21;
  }

  else
  {
    v26.i32[0] = 0;
    [v15 setBytes:&v26 length:4 atIndex:3];
    v29 = 2139095040;
    v31 = a5[1];
  }

  v30 = *a5;
  v28[0] = *(a2 + 24);
  v28[1] = v19;
  [v15 setBytes:v28 length:20 atIndex:4];
  if (v20 <= 0)
  {
    v22 = -(-v20 & 0xF);
  }

  else
  {
    v22 = v20 & 0xF;
  }

  v23 = v20 - v22 + 16;
  [v15 setThreadgroupMemoryLength:v23 atIndex:2];
  [v15 setThreadgroupMemoryLength:v23 atIndex:3];
  v26 = vextq_s8(*(a2 + 8), *(a2 + 8), 8uLL);
  v27 = 1;
  v25[0] = v17;
  v25[1] = v18 / v17;
  v25[2] = 1;
  [v15 dispatchThreads:&v26 threadsPerThreadgroup:v25];
  objc_autoreleasePoolPop(context);

  return 0;
}

id *gpuCreateSession(char a1, int *a2)
{
  v4 = MTLCreateSystemDefaultDevice();
  if (v4)
  {
    if (gpuIsAppleFamily())
    {
      v5 = [v4 newCommandQueue];
      if (!v5 && *a2)
      {
        *a2 = -4;
      }

      v6 = gpuGetLibrary(v4);
      if (v6)
      {
        if (v5)
        {
          v7 = malloc_type_calloc(1uLL, 0x18uLL, 0xA0040114AFA65uLL);
          v8 = v7;
          if (v7)
          {
            objc_storeStrong(v7, v4);
            objc_storeStrong(v8 + 1, v5);
            if (a1)
            {
              v9 = v4;
              v10 = v6;
              v11 = malloc_type_calloc(1uLL, 0x1A0uLL, 0x8004090B23163uLL);
              if (v11)
              {
                v12 = [v10 newFunctionWithName:@"histogram_argb8"];
                v13 = v12;
                if (v12)
                {
                  v12 = [v9 newComputePipelineStateWithFunction:v12 error:0];
                }

                v14 = *v11;
                *v11 = v12;

                v15 = [v10 newFunctionWithName:@"fill_histogram_buffer_kernel"];
                v16 = [v9 newComputePipelineStateWithFunction:v15 error:0];
                v17 = v11[1];
                v11[1] = v16;

                v18 = [v10 newFunctionWithName:@"copy_histogram_buffer_kernel"];
                v19 = [v9 newComputePipelineStateWithFunction:v18 error:0];
                v20 = v11[2];
                v11[2] = v19;

                v21 = [v10 newFunctionWithName:@"box_horizontal_edge_mode_background_argb8_3x1"];
                v22 = [v9 newComputePipelineStateWithFunction:v21 error:0];
                v23 = v11[3];
                v11[3] = v22;

                v24 = [v10 newFunctionWithName:@"box_horizontal_edge_mode_extend_argb8_3x1"];
                v25 = [v9 newComputePipelineStateWithFunction:v24 error:0];
                v26 = v11[4];
                v11[4] = v25;

                v27 = [v10 newFunctionWithName:@"box_horizontal_edge_mode_background_argb8_3x1_widthLEMaxTGSize"];
                v28 = [v9 newComputePipelineStateWithFunction:v27 error:0];
                v29 = v11[5];
                v11[5] = v28;

                v30 = [v10 newFunctionWithName:@"box_horizontal_edge_mode_extend_argb8_3x1_widthLEMaxTGSize"];
                v31 = [v9 newComputePipelineStateWithFunction:v30 error:0];
                v32 = v11[6];
                v11[6] = v31;

                v33 = [v10 newFunctionWithName:@"box_vertical_edge_mode_background_argb8_1x3"];
                v34 = [v9 newComputePipelineStateWithFunction:v33 error:0];
                v35 = v11[7];
                v11[7] = v34;

                v36 = [v10 newFunctionWithName:@"box_vertical_edge_mode_extend_argb8_1x3"];
                v37 = [v9 newComputePipelineStateWithFunction:v36 error:0];
                v38 = v11[8];
                v11[8] = v37;

                v39 = [v10 newFunctionWithName:@"box_edge_mode_background_argb_3x3"];
                v40 = [v9 newComputePipelineStateWithFunction:v39 error:0];
                v41 = v11[9];
                v11[9] = v40;

                v42 = [v10 newFunctionWithName:@"box_edge_mode_extend_argb_3x3"];
                v43 = [v9 newComputePipelineStateWithFunction:v42 error:0];
                v44 = v11[10];
                v11[10] = v43;

                v45 = [v10 newFunctionWithName:@"box_edge_mode_background_argb_NxM"];
                v46 = [v9 newComputePipelineStateWithFunction:v45 error:0];
                v47 = v11[11];
                v11[11] = v46;

                v48 = [v10 newFunctionWithName:@"box_edge_mode_extend_argb_NxM"];
                v49 = [v9 newComputePipelineStateWithFunction:v48 error:0];
                v50 = v11[12];
                v11[12] = v49;

                v51 = [v10 newFunctionWithName:@"box_edge_mode_background_texture_argb_3x3"];
                v52 = [v9 newComputePipelineStateWithFunction:v51 error:0];
                v53 = v11[13];
                v11[13] = v52;

                v54 = [v10 newFunctionWithName:@"box_edge_mode_extend_texture_argb_3x3"];
                v55 = [v9 newComputePipelineStateWithFunction:v54 error:0];
                v56 = v11[14];
                v11[14] = v55;

                v57 = [v10 newFunctionWithName:@"box_edge_mode_background_argb_simd_NxM"];
                v58 = [v9 newComputePipelineStateWithFunction:v57 error:0];
                v59 = v11[15];
                v11[15] = v58;

                v60 = [v10 newFunctionWithName:@"box_edge_mode_extend_argb_simd_NxM"];
                v61 = [v9 newComputePipelineStateWithFunction:v60 error:0];
                v62 = v11[16];
                v11[16] = v61;

                v63 = [v10 newFunctionWithName:@"imageconvolution_separable_edge_mode_background_argb_Nx1"];
                v64 = [v9 newComputePipelineStateWithFunction:v63 error:0];
                v65 = v11[17];
                v11[17] = v64;

                v66 = [v10 newFunctionWithName:@"imageconvolution_separable_edge_mode_extend_argb_Nx1"];
                v67 = [v9 newComputePipelineStateWithFunction:v66 error:0];
                v68 = v11[18];
                v11[18] = v67;

                v69 = [v10 newFunctionWithName:@"imageconvolution_separable_edge_mode_background_argb_1xM"];
                v70 = [v9 newComputePipelineStateWithFunction:v69 error:0];
                v71 = v11[19];
                v11[19] = v70;

                v72 = [v10 newFunctionWithName:@"imageconvolution_separable_edge_mode_extend_argb_1xM"];
                v73 = [v9 newComputePipelineStateWithFunction:v72 error:0];
                v74 = v11[20];
                v11[20] = v73;

                v75 = [v10 newFunctionWithName:@"imageconvolution_separable_edge_mode_background_argb_3x3"];
                v76 = [v9 newComputePipelineStateWithFunction:v75 error:0];
                v77 = v11[23];
                v11[23] = v76;

                v78 = [v10 newFunctionWithName:@"imageconvolution_separable_edge_mode_extend_argb_3x3"];
                v79 = [v9 newComputePipelineStateWithFunction:v78 error:0];
                v80 = v11[24];
                v11[24] = v79;

                v81 = [v10 newFunctionWithName:@"imageconvolution_separable_edge_mode_background_argb_NxM"];
                v82 = [v9 newComputePipelineStateWithFunction:v81 error:0];
                v83 = v11[21];
                v11[21] = v82;

                v84 = [v10 newFunctionWithName:@"imageconvolution_separable_edge_mode_extend_argb_NxM"];
                v85 = [v9 newComputePipelineStateWithFunction:v84 error:0];
                v86 = v11[22];
                v11[22] = v85;

                v87 = [v10 newFunctionWithName:@"imageconvolution_separable_edge_mode_background_texture_argb_3x3"];
                v88 = [v9 newComputePipelineStateWithFunction:v87 error:0];
                v89 = v11[25];
                v11[25] = v88;

                v90 = [v10 newFunctionWithName:@"imageconvolution_separable_edge_mode_extend_texture_argb_3x3"];
                v91 = [v9 newComputePipelineStateWithFunction:v90 error:0];
                v92 = v11[26];
                v11[26] = v91;

                v93 = [v10 newFunctionWithName:@"imageconvolution_edge_mode_background_texture_argb8_3x3"];
                v94 = [v9 newComputePipelineStateWithFunction:v93 error:0];
                v95 = v11[31];
                v11[31] = v94;

                v96 = [v10 newFunctionWithName:@"imageconvolution_edge_mode_extend_texture_argb8_3x3"];
                v97 = [v9 newComputePipelineStateWithFunction:v96 error:0];
                v98 = v11[32];
                v11[32] = v97;

                v99 = [v10 newFunctionWithName:@"imageconvolution_edge_mode_background_texture_argb8"];
                v100 = [v9 newComputePipelineStateWithFunction:v99 error:0];
                v101 = v11[33];
                v11[33] = v100;

                v102 = [v10 newFunctionWithName:@"imageconvolution_edge_mode_extend_texture_argb8"];
                v103 = [v9 newComputePipelineStateWithFunction:v102 error:0];
                v104 = v11[34];
                v11[34] = v103;

                v105 = [v10 newFunctionWithName:@"imageconvolution_edge_mode_background_argb8_3x3"];
                v106 = [v9 newComputePipelineStateWithFunction:v105 error:0];
                v107 = v11[29];
                v11[29] = v106;

                v108 = [v10 newFunctionWithName:@"imageconvolution_edge_mode_extend_argb8_3x3"];
                v109 = [v9 newComputePipelineStateWithFunction:v108 error:0];
                v110 = v11[30];
                v11[30] = v109;

                v111 = [v10 newFunctionWithName:@"imageconvolution_edge_mode_background_argb8"];
                v112 = [v9 newComputePipelineStateWithFunction:v111 error:0];
                v113 = v11[27];
                v11[27] = v112;

                v114 = [v10 newFunctionWithName:@"imageconvolution_edge_mode_extend_argb8"];
                v115 = [v9 newComputePipelineStateWithFunction:v114 error:0];
                v116 = v11[28];
                v11[28] = v115;

                v117 = [v10 newFunctionWithName:@"matrix_multiply_argb8"];
                v118 = [v9 newComputePipelineStateWithFunction:v117 error:0];
                v119 = v11[35];
                v11[35] = v118;

                v120 = [v10 newFunctionWithName:@"permute_argb8"];
                v121 = [v9 newComputePipelineStateWithFunction:v120 error:0];
                v122 = v11[36];
                v11[36] = v121;

                v123 = [v10 newFunctionWithName:@"alpha_blend_argb8"];
                v124 = [v9 newComputePipelineStateWithFunction:v123 error:0];
                v125 = v11[37];
                v11[37] = v124;

                v126 = [v10 newFunctionWithName:@"premultiplied_alpha_blend_argb8"];
                v127 = [v9 newComputePipelineStateWithFunction:v126 error:0];
                v128 = v11[38];
                v11[38] = v127;

                v129 = [v10 newFunctionWithName:@"nonpremultiplied_to_premultiplied_alpha_blend_argb8"];
                v130 = [v9 newComputePipelineStateWithFunction:v129 error:0];
                v131 = v11[39];
                v11[39] = v130;

                v132 = [v10 newFunctionWithName:@"premultiplied_const_alpha_blend_argb8"];
                v133 = [v9 newComputePipelineStateWithFunction:v132 error:0];
                v134 = v11[40];
                v11[40] = v133;

                v135 = [v10 newFunctionWithName:@"premultiply_RGBA8888"];
                v136 = [v9 newComputePipelineStateWithFunction:v135 error:0];
                v137 = v11[41];
                v11[41] = v136;

                v138 = [v10 newFunctionWithName:@"premultiply_ARGB8888"];
                v139 = [v9 newComputePipelineStateWithFunction:v138 error:0];
                v140 = v11[42];
                v11[42] = v139;

                v141 = [v10 newFunctionWithName:@"unpremultiply_RGBA8888"];
                v142 = [v9 newComputePipelineStateWithFunction:v141 error:0];
                v143 = v11[43];
                v11[43] = v142;

                v144 = [v10 newFunctionWithName:@"unpremultiply_ARGB8888"];
                v145 = [v9 newComputePipelineStateWithFunction:v144 error:0];
                v146 = v11[44];
                v11[44] = v145;

                v147 = [v10 newFunctionWithName:@"deinterleave_argb8"];
                v148 = [v9 newComputePipelineStateWithFunction:v147 error:0];
                v149 = v11[45];
                v11[45] = v148;

                v150 = [v10 newFunctionWithName:@"interleave_argb8"];
                v151 = [v9 newComputePipelineStateWithFunction:v150 error:0];
                v152 = v11[46];
                v11[46] = v151;

                v153 = [v10 newFunctionWithName:@"piecewise_gamma_planarf"];
                v154 = [v9 newComputePipelineStateWithFunction:v153 error:0];
                v155 = v11[47];
                v11[47] = v154;

                v156 = [v10 newFunctionWithName:@"populate_gamma_lookup_planar8"];
                v157 = [v9 newComputePipelineStateWithFunction:v156 error:0];
                v158 = v11[48];
                v11[48] = v157;

                v159 = [v10 newFunctionWithName:@"table_lookup_planar8"];
                v160 = [v9 newComputePipelineStateWithFunction:v159 error:0];
                v161 = v11[49];
                v11[49] = v160;

                v162 = [v10 newFunctionWithName:@"polynomial_planarF"];
                v163 = [v9 newComputePipelineStateWithFunction:v162 error:0];
                v164 = v11[50];
                v11[50] = v163;

                v165 = [v10 newFunctionWithName:@"rotate_90_argb8"];
                v166 = [v9 newComputePipelineStateWithFunction:v165 error:0];
                v167 = v11[51];
                v11[51] = v166;
              }

              v8[2] = v11;
            }

            goto LABEL_24;
          }

          if (*a2)
          {
            v8 = 0;
            v168 = -1;
            goto LABEL_22;
          }
        }
      }

      else if (*a2)
      {
        v8 = 0;
        v168 = -4;
LABEL_22:
        *a2 = v168;
LABEL_24:

        goto LABEL_25;
      }

      v8 = 0;
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if (!*a2)
  {
LABEL_17:
    v8 = 0;
    goto LABEL_25;
  }

  v8 = 0;
  *a2 = -2;
LABEL_25:

  return v8;
}

id *gpuExecuteBlockBegin(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = malloc_type_calloc(1uLL, 0x18uLL, 0xA0040114AFA65uLL);
  v3[2] = a1;
  v4 = [a1[1] commandBuffer];
  v5 = *v3;
  *v3 = v4;

  v6 = [*v3 computeCommandEncoderWithDispatchType:0];
  v7 = v3[1];
  v3[1] = v6;

  objc_autoreleasePoolPop(v2);
  return v3;
}

void gpuExecuteBlockEnd(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  [a1[1] endEncoding];
  [*a1 commit];
  [*a1 waitUntilCompleted];
  v3 = *a1;
  *a1 = 0;

  v4 = a1[1];
  a1[1] = 0;

  free(a1);

  objc_autoreleasePoolPop(v2);
}

void gpuExecuteBlockEndWithCompletionHandler(id *a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  [a1[1] endEncoding];
  v5 = *a1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __gpuExecuteBlockEndWithCompletionHandler_block_invoke;
  v9[3] = &unk_278BE2148;
  v6 = v3;
  v10 = v6;
  [v5 addCompletedHandler:v9];
  [*a1 commitAndWaitUntilSubmitted];
  v7 = *a1;
  *a1 = 0;

  v8 = a1[1];
  a1[1] = 0;

  free(a1);
  objc_autoreleasePoolPop(v4);
}

uint64_t gpuImageRotate90_ARGB8888(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5)
{
  v10 = *(a1 + 8);
  v11 = *(*(*(a1 + 16) + 16) + 408);
  [v10 setComputePipelineState:v11];
  v12 = objc_autoreleasePoolPush();
  v13 = [v11 threadExecutionWidth];
  v14 = [v11 maxTotalThreadsPerThreadgroup];
  [v10 setBuffer:*a2 offset:0 atIndex:0];
  [v10 setBuffer:*a3 offset:0 atIndex:1];
  v15 = *(a2 + 16);
  v16 = *(a2 + 8);
  v56[0] = v15;
  v56[1] = v16;
  v17 = *(a3 + 16);
  v56[2] = *(a2 + 24);
  v18 = *(a3 + 8);
  v19 = *(a3 + 24);
  v58 = v17;
  v59 = v18;
  v60 = v19;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v20 = 1;
        v21 = 1;
LABEL_8:
        v63 = 0;
        v64 = v21;
        v57 = v20;
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    v37 = 1;
LABEL_46:
    v63 = v37;
    v64 = 0;
    LODWORD(v57) = a4;
    HIDWORD(v57) = a4;
    v38 = (v17 - v15) / 2;
    v39 = (v18 - v16) / 2;
    v61 = v38;
    v62 = v39;
    if (v17 != v15)
    {
      v40 = v15 & 1;
      if ((v17 & 1) != v40)
      {
        if (v17)
        {
          v41 = v38 & 1;
        }

        else
        {
          v41 = 0;
        }

        if (v15)
        {
          v41 = !(v38 & 1);
        }

        v42 = v38 & 1;
        if ((v17 - v15 + 1) <= 2)
        {
          v43 = 0;
        }

        else
        {
          v43 = v41;
        }

        v44 = v38 + v40;
        v45 = v38 | v17 & 1;
        if (v42)
        {
          v45 = v44;
        }

        if (v45 <= 1)
        {
          v45 = 1;
        }

        v46 = v43 + v45;
        v61 = v46;
        if (v17 < v15)
        {
          if ((v40 & (v15 - v17 == 3)) != 0)
          {
            v47 = -2;
          }

          else
          {
            v47 = -1;
          }

          v61 = v46 + v47;
        }
      }
    }

    if (v18 != v16)
    {
      v32 = v16 & 1;
      if ((v18 & 1) != v32)
      {
        if (v18)
        {
          v48 = v39 & 1;
        }

        else
        {
          v48 = 0;
        }

        if (v16)
        {
          v48 = !(v39 & 1);
        }

        if ((v18 - v16 + 1) <= 2)
        {
          v49 = 0;
        }

        else
        {
          v49 = v48;
        }

        v50 = v39 | v18 & 1;
        if (v39)
        {
          v50 = v39 + v32;
        }

        if (v50 <= 1)
        {
          v50 = 1;
        }

        v36 = v49 + v50;
        v62 = v49 + v50;
        if (v18 < v16)
        {
          goto LABEL_80;
        }
      }
    }

    goto LABEL_84;
  }

  if (a4 == 2)
  {
    a4 = 1;
    v37 = -1;
    goto LABEL_46;
  }

  if (a4 == 3)
  {
    v20 = 0x100000000;
    v21 = -1;
    goto LABEL_8;
  }

LABEL_9:
  v22 = (v17 - v16) / 2;
  v23 = (v18 - v15) / 2;
  v61 = v22;
  v62 = v23;
  if (v17 != v16)
  {
    v24 = v16 & 1;
    if ((v17 & 1) != v24)
    {
      if (v17)
      {
        v25 = v22 & 1;
      }

      else
      {
        v25 = 0;
      }

      if (v16)
      {
        v25 = !(v22 & 1);
      }

      v26 = v22 & 1;
      if ((v17 - v16 + 1) <= 2)
      {
        v27 = 0;
      }

      else
      {
        v27 = v25;
      }

      v28 = v22 + v24;
      v29 = v22 | v17 & 1;
      if (v26)
      {
        v29 = v28;
      }

      if (v29 <= 1)
      {
        v29 = 1;
      }

      v30 = v27 + v29;
      v61 = v30;
      if (v17 < v16)
      {
        if ((v24 & (v16 - v17 == 3)) != 0)
        {
          v31 = -2;
        }

        else
        {
          v31 = -1;
        }

        v61 = v30 + v31;
      }
    }
  }

  if (v18 != v15)
  {
    v32 = v15 & 1;
    if ((v18 & 1) != v32)
    {
      if (v18)
      {
        v33 = v23 & 1;
      }

      else
      {
        v33 = 0;
      }

      if (v15)
      {
        v33 = !(v23 & 1);
      }

      if ((v18 - v15 + 1) <= 2)
      {
        v34 = 0;
      }

      else
      {
        v34 = v33;
      }

      v35 = v23 | v18 & 1;
      if (v23)
      {
        v35 = v23 + v32;
      }

      if (v35 <= 1)
      {
        v35 = 1;
      }

      v36 = v34 + v35;
      v62 = v34 + v35;
      if (v18 < v15)
      {
        v16 = v15;
LABEL_80:
        if ((v32 & (v16 - v18 == 3)) != 0)
        {
          v51 = -2;
        }

        else
        {
          v51 = -1;
        }

        v62 = v36 + v51;
      }
    }
  }

LABEL_84:
  v65 = *a5;
  [v10 setBytes:v56 length:52 atIndex:2];
  v54 = vextq_s8(*(a3 + 8), *(a3 + 8), 8uLL);
  v55 = 1;
  v53[0] = v13;
  v53[1] = v14 / v13;
  v53[2] = 1;
  [v10 dispatchThreads:&v54 threadsPerThreadgroup:v53];
  objc_autoreleasePoolPop(v12);

  return 0;
}

uint64_t gpuImagePiecewiseGamma_Planar8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __int128 *a5, unsigned int a6, float a7)
{
  v14 = *(a1 + 8);
  v15 = objc_autoreleasePoolPush();
  v16 = a2[1];
  v27[0] = a2[2];
  v27[1] = v16;
  v28 = *a5;
  v17 = *(a4 + 8);
  v29 = a7;
  v30 = v17;
  v31 = a6 / 255.0;
  [v14 setComputePipelineState:*(*(*(a1 + 16) + 16) + 384)];
  v18 = [**(a1 + 16) newBufferWithLength:256 options:32];
  [v14 setBuffer:v18 offset:0 atIndex:0];
  [v14 setBytes:v27 length:40 atIndex:1];
  v25 = xmmword_23D6FC3C0;
  v26 = 1;
  v23 = xmmword_23D6FC3C0;
  v24 = 1;
  [v14 dispatchThreads:&v25 threadsPerThreadgroup:&v23];
  v19 = *(*(*(a1 + 16) + 16) + 392);
  [v14 setComputePipelineState:v19];
  v20 = [v19 threadExecutionWidth];
  v21 = [v19 maxTotalThreadsPerThreadgroup];
  [v14 setBuffer:*a2 offset:0 atIndex:0];
  [v14 setBuffer:*a3 offset:0 atIndex:1];
  [v14 setBuffer:v18 offset:0 atIndex:2];
  [v14 setBytes:a3 + 24 length:8 atIndex:3];
  v25 = vextq_s8(*(a3 + 8), *(a3 + 8), 8uLL);
  v26 = 1;
  *&v23 = v20;
  *(&v23 + 1) = v21 / v20;
  v24 = 1;
  [v14 dispatchThreads:&v25 threadsPerThreadgroup:&v23];

  objc_autoreleasePoolPop(v15);
  return 0;
}

uint64_t gpuImagePiecewiseGamma_PlanarF(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, void *a5, float a6, float a7)
{
  v14 = *(a1 + 8);
  v15 = *(*(*(a1 + 16) + 16) + 376);
  [v14 setComputePipelineState:v15];
  v16 = objc_autoreleasePoolPush();
  v17 = [v15 threadExecutionWidth];
  v18 = [v15 maxTotalThreadsPerThreadgroup];
  v19 = a2[3];
  v20 = *a2;
  v21 = a2[1];
  v27[0] = a2[2];
  v27[1] = v21;
  *&v22 = *a5;
  *(&v22 + 1) = *a4;
  v27[2] = v19;
  v28 = v22;
  LODWORD(v22) = *(a4 + 8);
  v29 = a6;
  v30 = v22;
  v31 = a7;
  [v14 setBuffer:v20 offset:0 atIndex:0];
  [v14 setBuffer:*a3 offset:0 atIndex:1];
  [v14 setBytes:v27 length:40 atIndex:2];
  v25 = vextq_s8(*(a2 + 1), *(a2 + 1), 8uLL);
  v26 = 1;
  v24[0] = v17;
  v24[1] = v18 / v17;
  v24[2] = 1;
  [v14 dispatchThreads:&v25 threadsPerThreadgroup:v24];
  objc_autoreleasePoolPop(v16);

  return 0;
}

uint64_t gpuImageHistogramCalculation_ARGB8888(uint64_t a1, uint64_t a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 16);
  v8 = *(v7 + 16);
  v9 = a3[1];
  if (v9 != *a3 + 2048 || (v10 = a3[2], v10 != v9 + 2048))
  {
    v45 = 0u;
    v46 = 0u;
LABEL_4:
    v11 = [*v7 newBufferWithBytesNoCopy:? length:? options:? deallocator:?];
    v12 = v45;
    *&v45 = v11;

    v13 = [**(a1 + 16) newBufferWithBytesNoCopy:a3[1] length:2048 options:0x100000 deallocator:0];
    v14 = *(&v45 + 1);
    *(&v45 + 1) = v13;

    v15 = [**(a1 + 16) newBufferWithBytesNoCopy:a3[2] length:2048 options:0x100000 deallocator:0];
    v16 = v46;
    *&v46 = v15;

    v17 = [**(a1 + 16) newBufferWithBytesNoCopy:a3[3] length:2048 options:0x100000 deallocator:0];
    v18 = 0;
    v19 = *(&v46 + 1);
    *(&v46 + 1) = v17;
    goto LABEL_5;
  }

  v35 = a3[3];
  v45 = 0u;
  v46 = 0u;
  if (v35 != v10 + 2048)
  {
    goto LABEL_4;
  }

  v36 = [*v7 newBufferWithBytesNoCopy:? length:? options:? deallocator:?];
  v19 = v45;
  *&v45 = v36;
  v18 = 1;
LABEL_5:

  v20 = *(a1 + 8);
  v21 = *(a2 + 8);
  v40 = *(a2 + 16);
  v41 = v21;
  v22 = *(a2 + 24);
  v24 = v21 + 15;
  v23 = v21 < -15;
  v25 = v21 + 30;
  if (!v23)
  {
    v25 = v24;
  }

  v42 = *(a2 + 24);
  v43 = v25 >> 4;
  v44 = (v25 >> 4) * v22;
  v26 = [**(a1 + 16) newBufferWithLength:4096 options:32];
  [v20 setComputePipelineState:*(*(*(a1 + 16) + 16) + 8)];
  [v20 setBuffer:v26 offset:0 atIndex:0];
  *v39 = vdupq_n_s64(1uLL);
  *&v39[16] = 1;
  v37 = xmmword_23D6FC3C0;
  v38 = 1;
  [v20 dispatchThreadgroups:v39 threadsPerThreadgroup:&v37];
  [v20 setComputePipelineState:*v8];
  [v20 setBuffer:*a2 offset:0 atIndex:0];
  [v20 setBuffer:v26 offset:0 atIndex:1];
  [v20 setBuffer:v26 offset:1024 atIndex:2];
  [v20 setBuffer:v26 offset:2048 atIndex:3];
  [v20 setBuffer:v26 offset:3072 atIndex:4];
  [v20 setBytes:&v40 length:24 atIndex:5];
  [v20 setThreadgroupMemoryLength:4096 atIndex:0];
  v27 = v40 + 510;
  if (v40 >= -255)
  {
    v27 = v40 + 255;
  }

  v28 = v27 >> 8;
  v29 = v41 + 30;
  if (v41 >= -15)
  {
    v29 = v41 + 15;
  }

  *v39 = v28;
  *&v39[8] = v29 >> 4;
  *&v39[16] = 1;
  v37 = xmmword_23D6FC3C0;
  v38 = 1;
  [v20 dispatchThreadgroups:v39 threadsPerThreadgroup:&v37];
  [v20 setComputePipelineState:*(*(*(a1 + 16) + 16) + 16)];
  [v20 setBuffer:v26 offset:0 atIndex:0];
  [v20 setBuffer:v45 offset:0 atIndex:1];
  if (v18)
  {
    [v20 setBuffer:v45 offset:2048 atIndex:2];
    [v20 setBuffer:v45 offset:4096 atIndex:3];
    v30 = v45;
    v31 = 6144;
  }

  else
  {
    [v20 setBuffer:*(&v45 + 1) offset:0 atIndex:2];
    [v20 setBuffer:v46 offset:0 atIndex:3];
    v31 = 0;
    v30 = *(&v46 + 1);
  }

  [v20 setBuffer:v30 offset:v31 atIndex:4];
  *v39 = 4;
  *&v39[8] = vdupq_n_s64(1uLL);
  v37 = xmmword_23D6FC3C0;
  v38 = 1;
  [v20 dispatchThreadgroups:v39 threadsPerThreadgroup:&v37];

  for (i = 24; i != -8; i -= 8)
  {
  }

  objc_autoreleasePoolPop(v6);
  v33 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_23D6F9AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  for (i = 24; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t gpuImageConvert_ARGB8888toPlanar8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v12 = *(a1 + 8);
  v13 = *(*(*(a1 + 16) + 16) + 360);
  [v12 setComputePipelineState:v13];
  v14 = objc_autoreleasePoolPush();
  v15 = [v13 threadExecutionWidth];
  v16 = [v13 maxTotalThreadsPerThreadgroup];
  [v12 setBuffer:*a2 offset:0 atIndex:0];
  [v12 setBuffer:*a3 offset:0 atIndex:1];
  [v12 setBuffer:*a4 offset:0 atIndex:2];
  [v12 setBuffer:*a5 offset:0 atIndex:3];
  [v12 setBuffer:*a6 offset:0 atIndex:4];
  [v12 setBytes:a2 + 16 length:4 atIndex:5];
  [v12 setBytes:a2 + 24 length:4 atIndex:6];
  [v12 setBytes:a3 + 3 length:4 atIndex:7];
  v19 = vextq_s8(*(a2 + 8), *(a2 + 8), 8uLL);
  v20 = 1;
  v18[0] = v15;
  v18[1] = v16 / v15;
  v18[2] = 1;
  [v12 dispatchThreads:&v19 threadsPerThreadgroup:v18];
  objc_autoreleasePoolPop(v14);

  return 0;
}

uint64_t gpuImageConvert_Planar8toARGB8888(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v12 = *(a1 + 8);
  v13 = *(*(*(a1 + 16) + 16) + 368);
  [v12 setComputePipelineState:v13];
  v14 = objc_autoreleasePoolPush();
  v15 = [v13 threadExecutionWidth];
  v16 = [v13 maxTotalThreadsPerThreadgroup];
  [v12 setBuffer:*a2 offset:0 atIndex:0];
  [v12 setBuffer:*a3 offset:0 atIndex:1];
  [v12 setBuffer:*a4 offset:0 atIndex:2];
  [v12 setBuffer:*a5 offset:0 atIndex:3];
  [v12 setBuffer:*a6 offset:0 atIndex:4];
  [v12 setBytes:a6 + 16 length:4 atIndex:5];
  [v12 setBytes:a2 + 3 length:4 atIndex:6];
  [v12 setBytes:a6 + 24 length:4 atIndex:7];
  v19 = vextq_s8(*(a6 + 8), *(a6 + 8), 8uLL);
  v20 = 1;
  v18[0] = v15;
  v18[1] = v16 / v15;
  v18[2] = 1;
  [v12 dispatchThreads:&v19 threadsPerThreadgroup:v18];
  objc_autoreleasePoolPop(v14);

  return 0;
}

uint64_t gpuImagePermuteChannels_ARGB8888(uint64_t a1, void *a2, uint64_t a3, __int32 *a4)
{
  v8 = *(a1 + 8);
  [v8 setComputePipelineState:*(*(*(a1 + 16) + 16) + 288)];
  v9 = objc_autoreleasePoolPush();
  v10 = [*(*(*(a1 + 16) + 16) + 288) threadExecutionWidth];
  v11 = [*(*(*(a1 + 16) + 16) + 288) maxTotalThreadsPerThreadgroup];
  v12.i32[0] = *a4;
  v17 = vmovl_s16(vsub_s16(0x18001800180018, vshl_n_s16(*&vmovl_u8(v12), 3uLL)));
  [v8 setBuffer:*a2 offset:0 atIndex:0];
  [v8 setBuffer:*a3 offset:0 atIndex:1];
  [v8 setBytes:a3 + 16 length:4 atIndex:2];
  [v8 setBytes:a3 + 24 length:4 atIndex:3];
  [v8 setBytes:&v17 length:16 atIndex:4];
  v15 = vextq_s8(*(a3 + 8), *(a3 + 8), 8uLL);
  v16 = 1;
  v14[0] = v10;
  v14[1] = v11 / v10;
  v14[2] = 1;
  [v8 dispatchThreads:&v15 threadsPerThreadgroup:v14];
  objc_autoreleasePoolPop(v9);

  return 0;
}

void gpuImageBlend(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  [v10 setComputePipelineState:v9];
  v11 = objc_autoreleasePoolPush();
  v12 = [v9 threadExecutionWidth];
  v13 = [v9 maxTotalThreadsPerThreadgroup];
  [v10 setBuffer:*a3 offset:0 atIndex:0];
  [v10 setBuffer:*a4 offset:0 atIndex:1];
  [v10 setBuffer:*a5 offset:0 atIndex:2];
  [v10 setBytes:a5 + 16 length:4 atIndex:3];
  [v10 setBytes:a5 + 24 length:4 atIndex:4];
  v15 = vextq_s8(*(a5 + 8), *(a5 + 8), 8uLL);
  v16 = 1;
  v14[0] = v12;
  v14[1] = v13 / v12;
  v14[2] = 1;
  [v10 dispatchThreads:&v15 threadsPerThreadgroup:v14];
  objc_autoreleasePoolPop(v11);
}

uint64_t gpuImagePremultipliedConstAlphaBlend_ARGB8888(uint64_t a1, void *a2, void *a3, uint64_t a4, float a5)
{
  v11 = a5;
  v9 = *(*(*(a1 + 16) + 16) + 320);
  [*(a1 + 8) setBytes:&v11 length:4 atIndex:5];
  gpuImageBlend(v9, *(a1 + 8), a2, a3, a4);

  return 0;
}

id gpuGetLibrary(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleWithIdentifier:@"com.apple.vectornumerics.AccelerateGPU"];
  v4 = [v3 pathForResource:@"default" ofType:@"metallib"];
  v5 = [v4 stringByResolvingSymlinksInPath];
  v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  v7 = [v2 newLibraryWithURL:v6 error:0];

  return v7;
}

uint64_t gpuImageTentConvolve_ARGB8888(uint64_t a1, void *a2, void *a3, __int16 a4, __int16 a5, unsigned int a6, unsigned int a7, int *a8, unsigned int a9)
{
  if (a6 < 2)
  {
    v18 = 0;
  }

  else
  {
    v17 = malloc_type_malloc(4 * a6, 0x100004052888210uLL);
    if (!v17)
    {
      return -2;
    }

    v18 = v17;
    v19 = ((a6 >> 1) + 1);
    v20 = v19;
    if (v20 >= 1)
    {
      v21 = 0;
      v22 = a6 - 1;
      do
      {
        v23 = ((v21 + 1.0) / v19) / v19;
        v17[v21] = v23;
        v17[v22] = v23;
        ++v21;
        --v22;
      }

      while (v20 != v21);
    }
  }

  if (a7 >= 2)
  {
    v24 = malloc_type_malloc(4 * a7, 0x100004052888210uLL);
    if (v24)
    {
      v25 = v24;
      v26 = ((a7 >> 1) + 1);
      v27 = v26;
      if (v27 >= 1)
      {
        v28 = 0;
        v29 = a7 - 1;
        do
        {
          v30 = ((v28 + 1.0) / v26) / v26;
          v24[v28] = v30;
          v24[v29] = v30;
          ++v28;
          --v29;
        }

        while (v27 != v28);
      }

      goto LABEL_15;
    }

    return -2;
  }

  v25 = 0;
LABEL_15:
  v31 = gpuImageSeparableConvolution_ARGB8888(a1, a2, a3, a4, a5, v18, a6, v25, a7, a8, a9);
  if (v18)
  {
    free(v18);
  }

  if (v25)
  {
    free(v25);
  }

  return v31;
}

void gpuImagePremultiplyUnpremultiply(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  [v8 setComputePipelineState:v7];
  v9 = objc_autoreleasePoolPush();
  v10 = [v7 threadExecutionWidth];
  v11 = [v7 maxTotalThreadsPerThreadgroup];
  [v8 setBuffer:*a3 offset:0 atIndex:0];
  [v8 setBuffer:*a4 offset:0 atIndex:1];
  [v8 setBytes:a3 + 3 length:4 atIndex:2];
  v13 = vextq_s8(*(a4 + 8), *(a4 + 8), 8uLL);
  v14 = 1;
  v12[0] = v10;
  v12[1] = v11 / v10;
  v12[2] = 1;
  [v8 dispatchThreads:&v13 threadsPerThreadgroup:v12];
  objc_autoreleasePoolPop(v9);
}

uint64_t gpuImageConvolution_ARGB8888(uint64_t a1, void *a2, void *a3, __int16 a4, __int16 a5, float *a6, unsigned int a7, unsigned int a8, int *a9, unsigned int a10)
{
  if (a9)
  {
    v18 = *a9;
  }

  else
  {
    v18 = 0;
  }

  context = objc_autoreleasePoolPush();
  if (a7 == 1 && a8 == 1)
  {
    [*(a1 + 8) endEncoding];
    v19 = [*a1 blitCommandEncoder];
    [v19 copyFromBuffer:*a2 sourceOffset:0 toBuffer:*a3 destinationOffset:0 size:a3[1] * a3[3]];
    [v19 endEncoding];
    v20 = [*a1 computeCommandEncoderWithDispatchType:0];
    v21 = *(a1 + 8);
    *(a1 + 8) = v20;

LABEL_7:
    objc_autoreleasePoolPop(context);
    return 0;
  }

  if (a7 == 1)
  {
    v23 = 0;
  }

  else
  {
    if (a8 != 1)
    {
      v46 = *(*(a1 + 16) + 16);
      v25 = [*a2 contents];
      v26 = [*a3 contents];
      v45 = a6;
      if ((a2[3] & 0xF) != 0 || (a3[3] & 0xF) != 0)
      {
        v27 = 0;
        v28 = (a10 >> 3) & 1;
      }

      else
      {
        v28 = (a10 >> 3) & 1;
        if (v18)
        {
          v29 = (a10 >> 3) & 1;
        }

        else
        {
          v29 = 1;
        }

        if ((v26 & 0xF) != 0)
        {
          v30 = 0;
        }

        else
        {
          v30 = v29;
        }

        if ((v25 & 0xF) != 0)
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }
      }

      v31 = a7 == 3 && a8 == 3;
      v32 = !v31;
      v43 = v32;
      v33 = 248;
      if (!v31)
      {
        v33 = 264;
      }

      v34 = 232;
      if (!v31)
      {
        v34 = 216;
      }

      if (!v27)
      {
        v33 = v34;
      }

      v35 = *(v46 + v33 + 8 * v28);
      v48 = v27;
      v47 = *(a1 + 8);
      if (v27)
      {
        v42 = v35;
        v41 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:a2[2] height:a2[1] mipmapped:0];
        v44 = [*a2 newTextureWithDescriptor:v41 offset:0 bytesPerRow:a2[3]];
        v36 = v45;
        v37 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:a3[2] height:a3[1] mipmapped:0];
        v38 = [*a3 newTextureWithDescriptor:v37 offset:0 bytesPerRow:a3[3]];

        v39 = v42;
      }

      else
      {
        v44 = 0;
        v38 = 0;
        v39 = v35;
        v36 = v45;
      }

      v55 = vrev32_s16(vmovn_s32(vuzp1q_s32(*(a2 + 1), *(a3 + 1))));
      v56 = a4;
      v57 = a5;
      v40 = a3[3];
      v58 = a2[3];
      v59 = v40;
      v63 = v18;
      v62 = v18 == 0;
      v60 = a7 >> 1;
      v61 = a8 >> 1;
      [v47 setComputePipelineState:v39];
      if (v48)
      {
        [v47 setTexture:v44 atIndex:0];
        [v47 setTexture:v38 atIndex:1];
      }

      else
      {
        [v47 setBuffer:*a2 offset:0 atIndex:0];
        [v47 setBuffer:*a3 offset:0 atIndex:1];
      }

      [v47 setBytes:v36 length:4 * a8 * a7 atIndex:2];
      [v47 setBytes:&v55 length:32 atIndex:3];
      if (v48)
      {
        if (v43)
        {
          [v47 setThreadgroupMemoryLength:4 * a8 * a7 atIndex:0];
        }

        v52 = (v55.u16[2] + 63) >> 6;
        v53 = (v55.u16[3] + 63) >> 6;
        v54 = 1;
        v50 = vdupq_n_s64(0x20uLL);
        v51 = 1;
        [v47 dispatchThreadgroups:&v52 threadsPerThreadgroup:&v50];
      }

      else
      {
        [v47 setThreadgroupMemoryLength:((8 * v60 + 128) * (2 * v61 + 32)) & 0x3FFFFFFF0 atIndex:0];
        v52 = (v55.u16[2] + 31) >> 5;
        v53 = (v55.u16[3] + 31) >> 5;
        v54 = 1;
        v50 = vdupq_n_s64(0x20uLL);
        v51 = 1;
        [v47 dispatchThreadgroups:&v52 threadsPerThreadgroup:&v50];
      }

      goto LABEL_7;
    }

    v23 = a6;
    a6 = 0;
  }

  v24 = gpuImageSeparableConvolution_ARGB8888(a1, a2, a3, a4, a5, v23, a7, a6, a8, a9, a10);
  objc_autoreleasePoolPop(context);
  return v24;
}

uint64_t gpuImageSeparableConvolution_ARGB8888(uint64_t a1, void *a2, void *a3, __int16 a4, __int16 a5, float *a6, unsigned int a7, float *a8, unsigned int a9, int *a10, unsigned int a11)
{
  if (a10)
  {
    v64 = *a10;
  }

  else
  {
    v64 = 0;
  }

  v18 = 1.0;
  v19 = 1.0;
  if (a6)
  {
    v19 = *a6;
  }

  v20 = a9;
  if (a8)
  {
    v18 = *a8;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = v21;
  v24 = a7 == 1 && a9 == 1;
  if (!v24 || v19 != 1.0 || v18 != 1.0)
  {
    objc_autoreleasePoolPop(v21);
    v66 = a7;
    if (!v24 || v19 == 1.0 && v18 == 1.0)
    {
      v27 = 0;
      if (a7 == 1 && a8 && v19 != 1.0)
      {
        v28 = malloc_type_malloc(4 * a9, 0x100004052888210uLL);
        if (!v28)
        {
          return -2;
        }

        v27 = v28;
        if (!a9)
        {
          v59 = a5;
          v61 = 0;
LABEL_46:
          v37 = (a11 >> 3) & 1;
          context = objc_autoreleasePoolPush();
          v38 = *(*(a1 + 16) + 16);
          v39 = [*a2 contents];
          v40 = [*a3 contents];
          if (v66 == 3 && v20 == 3)
          {
            if ((a2[3] & 0xF) != 0 || (a3[3] & 0xF) != 0 || (v39 & 0xF) != 0 || (v40 & 0xF) != 0)
            {
              v41 = 0;
              v42 = (v38 + 8 * v37 + 184);
            }

            else
            {
              if (v64)
              {
                v41 = (a11 >> 3) & 1;
              }

              else
              {
                v41 = 1;
              }

              v56 = v38 + 8 * v37;
              v57 = (v56 + 200);
              v42 = (v56 + 184);
              if (v41)
              {
                v42 = v57;
              }
            }

            v43 = v66;
          }

          else
          {
            v44 = (v38 + 8 * v37);
            v45 = v44 + 21;
            if (v20 == 1)
            {
              v45 = v44 + 17;
            }

            v42 = v44 + 19;
            v43 = v66;
            if (v66 != 1)
            {
              v42 = v45;
            }

            v41 = 0;
          }

          v46 = *v42;
          v47 = *(a1 + 8);
          v69 = vrev32_s16(vmovn_s32(vuzp1q_s32(*(a2 + 1), *(a3 + 1))));
          v70 = a4;
          v71 = v59;
          v48 = a3[3];
          v72 = a2[3];
          v73 = v48;
          v74 = v64;
          v75 = v43 >> 1;
          v76 = v20 >> 1;
          v60 = v46;
          if (v20 * v43 <= 0x31)
          {
            v50 = [v46 maxTotalThreadsPerThreadgroup] >> 5;
            v49 = 32;
            if (v50 >= 0x20)
            {
              v50 = 32;
            }
          }

          else
          {
            v49 = 16;
            v50 = 16;
          }

          v65 = v50;
          [v47 setComputePipelineState:v60];
          if (v41)
          {
            v51 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:a2[2] height:a2[1] mipmapped:0];
            v63 = [*a2 newTextureWithDescriptor:v51 offset:0 bytesPerRow:a2[3]];
            v52 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:a3[2] height:a3[1] mipmapped:0];
            v53 = [*a3 newTextureWithDescriptor:v52 offset:0 bytesPerRow:a3[3]];
            [v47 setTexture:v63 atIndex:0];
            [v47 setTexture:v53 atIndex:1];
          }

          else
          {
            [v47 setBuffer:*a2 offset:0 atIndex:0];
            [v47 setBuffer:*a3 offset:0 atIndex:1];
          }

          [v47 setBytes:&v69 length:28 atIndex:2];
          if (v61 | a6)
          {
            if (v61)
            {
              v54 = v61;
            }

            else
            {
              v54 = a6;
            }

            [v47 setBytes:v54 length:4 * v66 atIndex:3];
          }

          else
          {
            LODWORD(v68[0]) = 1065353216;
            [v47 setBytes:v68 length:4 * v66 atIndex:3];
          }

          if (v27 | a8)
          {
            if (v27)
            {
              v55 = v27;
            }

            else
            {
              v55 = a8;
            }

            [v47 setBytes:v55 length:4 * v20 atIndex:4];
          }

          else
          {
            LODWORD(v68[0]) = 1065353216;
            [v47 setBytes:v68 length:4 * v20 atIndex:4];
          }

          [v47 setThreadgroupMemoryLength:(8 * v75 + 4 * v49) * (v65 + 2 * v76) atIndex:0];
          v68[0] = (v49 + v69.u16[2] - 1) / v49;
          v68[1] = (v65 + v69.u16[3] - 1) / v65;
          v68[2] = 1;
          v67[0] = v49;
          v67[1] = v65;
          v67[2] = 1;
          [v47 dispatchThreadgroups:v68 threadsPerThreadgroup:v67];

          objc_autoreleasePoolPop(context);
          if (v61)
          {
            free(v61);
          }

          if (v27)
          {
            free(v27);
          }

          return 0;
        }

        for (i = 0; i != a9; ++i)
        {
          *&v28[i * 4] = v19 * a8[i];
        }
      }

      v61 = 0;
      v59 = a5;
      if (!a6 || a9 != 1)
      {
        goto LABEL_46;
      }

      if (v18 == 1.0)
      {
        v61 = 0;
LABEL_44:
        v20 = 1;
        goto LABEL_46;
      }

      v30 = malloc_type_malloc(4 * a7, 0x100004052888210uLL);
      if (v30)
      {
        v61 = v30;
        if (a7)
        {
          v31 = 0;
          do
          {
            *&v30[v31 * 4] = v18 * a6[v31];
            ++v31;
          }

          while (a7 != v31);
        }

        goto LABEL_44;
      }
    }

    else
    {
      v35 = malloc_type_malloc(0xCuLL, 0x100004052888210uLL);
      if (v35)
      {
        v27 = v35;
        v59 = a5;
        v61 = 0;
        *v35 = 0.0;
        v35[1] = v19 * v18;
        v35[2] = 0.0;
        v20 = 3;
        goto LABEL_46;
      }
    }

    return -2;
  }

  [*(a1 + 8) endEncoding];
  v32 = [*a1 blitCommandEncoder];
  [v32 copyFromBuffer:*a2 sourceOffset:0 toBuffer:*a3 destinationOffset:0 size:a3[1] * a3[3]];
  [v32 endEncoding];
  v33 = [*a1 computeCommandEncoderWithDispatchType:0];
  v34 = *(a1 + 8);
  *(a1 + 8) = v33;

  objc_autoreleasePoolPop(v22);
  return 0;
}

uint64_t gpuImageBoxConvolve_ARGB8888(uint64_t a1, void *a2, void *a3, __int16 a4, __int16 a5, unsigned int a6, unsigned int a7, int *a8, unsigned int a9)
{
  if (a8)
  {
    v16 = *a8;
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = v17;
  if (a6 == 1 && a7 == 1)
  {
    [*(a1 + 8) endEncoding];
    v19 = [*a1 blitCommandEncoder];
    [v19 copyFromBuffer:*a2 sourceOffset:0 toBuffer:*a3 destinationOffset:0 size:a3[1] * a3[3]];
    [v19 endEncoding];
    v20 = [*a1 computeCommandEncoderWithDispatchType:0];
    v21 = *(a1 + 8);
    *(a1 + 8) = v20;

    goto LABEL_52;
  }

  v64 = a4;
  v67 = a5;
  v68 = v17;
  v22 = (a9 >> 3) & 1;
  v23 = *(*(a1 + 16) + 16);
  v24 = [*a2 contents];
  v25 = [*a3 contents];
  if (a6 < 2 || a7 < 2)
  {
    if (a6 == 3)
    {
      v30 = *(v23 + 24);
      v29 = v23 + 24;
      v31 = [v30 maxTotalThreadsPerThreadgroup];
      v32 = a3[2];
      v33 = v32 > v31;
      LODWORD(v63) = v32 <= v31;
      v34 = v29 + 16;
      if (v33)
      {
        v34 = v29;
      }

      v65 = *(v34 + 8 * v22);
      v66 = 0;
      v28 = 0;
      HIDWORD(v63) = 0;
      v69 = 0;
      v27 = 0;
      v35 = a3[2];
      v36 = 512;
      if (v35 > 0x200)
      {
        v36 = v31;
      }

      v33 = v35 > 0x100;
      v37 = 256;
      if (v33)
      {
        v37 = v36;
      }

      v62 = v37;
      goto LABEL_23;
    }

    v39 = (v23 + 8 * v22);
    if (a7 == 3)
    {
      v66 = v39[7];
      v40 = [v66 maxTotalThreadsPerThreadgroup];
      v18 = v68;
      v62 = 0;
      v63 = 0;
      v69 = 0;
      v27 = 0;
      v65 = 0;
      v41 = a3[2];
      v42 = 512;
      if (v41 > 0x200)
      {
        v42 = v40;
      }

      if (v41 <= 0x100)
      {
        v28 = 256;
      }

      else
      {
        v28 = v42;
      }

      v38 = 24;
      goto LABEL_34;
    }

LABEL_32:
    v27 = v39[15];
    v69 = v39[11];
    v62 = 0;
    v63 = 0;
    v28 = 0;
    v65 = 0;
    v66 = 0;
    v38 = 36;
    goto LABEL_33;
  }

  if (a6 != 3 || a7 != 3)
  {
    v39 = (v23 + 8 * v22);
    goto LABEL_32;
  }

  if ((a2[3] & 0xF) != 0 || (a3[3] & 0xF) != 0 || (v24 & 0xF) != 0 || (v25 & 0xF) != 0)
  {
    HIDWORD(v63) = 0;
    v26 = (v23 + 8 * v22 + 72);
  }

  else
  {
    if (v16)
    {
      v59 = (a9 >> 3) & 1;
    }

    else
    {
      v59 = 1;
    }

    v60 = v23 + 8 * v22;
    v61 = (v60 + 104);
    v26 = (v60 + 72);
    HIDWORD(v63) = v59;
    if (v59)
    {
      v26 = v61;
    }
  }

  v27 = *v26;
  v62 = 0;
  v28 = 0;
  LODWORD(v63) = 0;
  v69 = 0;
  v65 = 0;
  v66 = 0;
LABEL_23:
  v38 = 24;
LABEL_33:
  v18 = v68;
LABEL_34:
  v43 = *(a1 + 8);
  v44 = v43;
  v74 = vrev32_s16(vmovn_s32(vuzp1q_s32(*(a2 + 1), *(a3 + 1))));
  v75 = v64;
  v76 = v67;
  v45 = a3[3];
  v77 = a2[3];
  v78 = v45;
  v79 = v16;
  v80 = a6 >> 1;
  v81 = a7 >> 1;
  if (v27)
  {
    v82 = 1.0 / a6;
    v83 = 1.0 / a7;
    if (a7 * a6 <= 0x31)
    {
      v49 = v27;
      v52 = [v27 maxTotalThreadsPerThreadgroup];
      v46 = 32;
      if (v52 >> 5 >= 0x20)
      {
        v47 = 32;
      }

      else
      {
        v47 = v52 >> 5;
      }

      v48 = v27;
    }

    else
    {
      v46 = 16;
      v47 = 16;
      v48 = v69;
      v49 = v27;
    }

    [v44 setComputePipelineState:{v48, v62}];
    if (HIDWORD(v63))
    {
      v53 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:a2[2] height:a2[1] mipmapped:0];
      v54 = [*a2 newTextureWithDescriptor:v53 offset:0 bytesPerRow:a2[3]];
      v55 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:a3[2] height:a3[1] mipmapped:0];
      v56 = [*a3 newTextureWithDescriptor:v55 offset:0 bytesPerRow:a3[3]];
      [v44 setTexture:v54 atIndex:0];
      [v44 setTexture:v56 atIndex:1];

      v18 = v68;
    }

    else
    {
      [v44 setBuffer:*a2 offset:0 atIndex:0];
      [v44 setBuffer:*a3 offset:0 atIndex:1];
    }

    [v44 setBytes:&v74 length:v38 atIndex:2];
    [v44 setThreadgroupMemoryLength:(8 * v80 + 4 * v46) * (v47 + 2 * v81) atIndex:0];
    v72 = (v46 + v74.u16[2] - 1) / v46;
    v73.i64[0] = (v47 + v74.u16[3] - 1) / v47;
    v73.i64[1] = 1;
    v70 = v46;
    v71.i64[0] = v47;
    v71.i64[1] = 1;
    [v44 dispatchThreadgroups:&v72 threadsPerThreadgroup:&v70];
    v51 = v65;
    v50 = v66;
  }

  else
  {
    v50 = v66;
    v49 = 0;
    v51 = v65;
    if (v66)
    {
      [v43 setComputePipelineState:v66];
      [v44 setBuffer:*a2 offset:0 atIndex:0];
      [v44 setBuffer:*a3 offset:0 atIndex:1];
      [v44 setBytes:&v74 length:24 atIndex:2];
      v72 = (v28 + v74.u16[2] - 1) / v28;
      v73.i64[0] = (v74.u16[3] + 31) >> 5;
      v73.i64[1] = 1;
      v70 = v28;
      v71 = vdupq_n_s64(1uLL);
      [v44 dispatchThreadgroups:&v72 threadsPerThreadgroup:&v70];
    }

    if (v65)
    {
      [v44 setComputePipelineState:v65];
      [v44 setBuffer:*a2 offset:0 atIndex:0];
      [v44 setBuffer:*a3 offset:0 atIndex:1];
      [v44 setBytes:&v74 length:24 atIndex:2];
      if (v63)
      {
        [v44 setThreadgroupMemoryLength:4 * v74.u16[2] + 8 atIndex:0];
        v72 = v74.u16[3];
        v73 = vdupq_n_s64(1uLL);
        v70 = v62;
        v71 = v73;
      }

      else
      {
        v58 = [v65 maxTotalThreadsPerThreadgroup];
        [v44 setThreadgroupMemoryLength:4 * v58 + 8 atIndex:0];
        v72 = (v58 + v74.u16[2] - 1) / v58;
        v73.i64[0] = v74.u16[3];
        v73.i64[1] = 1;
        v70 = v58;
        v71 = vdupq_n_s64(1uLL);
      }

      [v44 dispatchThreadgroups:&v72 threadsPerThreadgroup:&v70];
    }
  }

LABEL_52:
  objc_autoreleasePoolPop(v18);
  return 0;
}