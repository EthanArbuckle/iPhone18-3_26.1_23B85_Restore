@interface PanoramaAssemblyStage
- (CGRect)boundingBox;
- (PanoramaAssemblyStage)initWithContext:(id)a3 robustPanoParams:(id *)a4;
- (__n128)panoHomography;
- (__n64)_stagingHomography;
- (int)_addStagingBuffer;
- (int)_bindOutput;
- (int)addStagingToOutput:(id)a3;
- (int)clearStagingBuffer:(id)a3 withEncoder:(id)a4;
- (int)finishProcessing;
- (int)prepareToProcess:(int)a3 sliceWidth:(unint64_t)a4 sliceHeight:(unint64_t)a5 gridWidth:(unint64_t)a6 gridHeight:(unint64_t)a7;
- (int)renderDirtyStagingBuffers;
- (int)resetState;
- (uint64_t)addHomogToStaging:(uint64_t)a3;
- (uint64_t)addSlice:(double)a3 metadata:(double)a4 sliceHomography:(double)a5 stitchingMask:(double)a6 roi:(double)a7 sliceType:(double)a8;
- (uint64_t)addSliceToProjectiveGrid:(__n128)a3 atlasHomography:(__n128)a4 panoHomography:(__n128)a5 encoder:(__n128)a6 sliceType:(__n128)a7;
- (uint64_t)addSliceToStagingBuffer:(float32x4_t)a3 sliceLuma:(float32x4_t)a4 sliceChroma:(uint64_t)a5 sliceMask:(void *)a6 sliceGlobalHomography:(void *)a7 encoder:(void *)a8;
- (void)adjustBoundingBox;
- (void)dealloc;
@end

@implementation PanoramaAssemblyStage

- (void)dealloc
{
  free(self->_sliceHomographies);
  self->_sliceHomographies = 0;
  free(self->_atlasHomographies);
  self->_atlasHomographies = 0;
  self->_sliceBufferAllocSize = 0;
  self->_sliceBufferLength = 0;
  nrfInputPixelBuffer = self->_nrfInputPixelBuffer;
  if (nrfInputPixelBuffer)
  {
    CVPixelBufferRelease(nrfInputPixelBuffer);
    self->_nrfInputPixelBuffer = 0;
  }

  nrfOutputPixelBuffer = self->_nrfOutputPixelBuffer;
  if (nrfOutputPixelBuffer)
  {
    CVPixelBufferRelease(nrfOutputPixelBuffer);
    self->_nrfOutputPixelBuffer = 0;
  }

  if (self->_assemblyParams.enableTranslationCorrection)
  {
    free(self->_movingAverageBuffer);
    self->_movingAverageBuffer = 0;
  }

  v5.receiver = self;
  v5.super_class = PanoramaAssemblyStage;
  [(PanoramaAssemblyStage *)&v5 dealloc];
}

- (int)clearStagingBuffer:(id)a3 withEncoder:(id)a4
{
  shaders = self->_shaders;
  v7 = a4;
  v8 = a3;
  v12 = objc_msgSend_resetSliceSizedState(shaders, v9, v10, v11);
  getThreadgroupSizeForShader(v12, &v65);

  v16 = objc_msgSend_resetSliceSizedState(self->_shaders, v13, v14, v15);
  objc_msgSend_setComputePipelineState_(v7, v17, v16, v18);

  v22 = objc_msgSend_luma(v8, v19, v20, v21);
  objc_msgSend_setTexture_atIndex_(v7, v23, v22, 0);

  v27 = objc_msgSend_chroma(v8, v24, v25, v26);
  objc_msgSend_setTexture_atIndex_(v7, v28, v27, 1);

  v32 = objc_msgSend_weights(v8, v29, v30, v31);
  objc_msgSend_setTexture_atIndex_(v7, v33, v32, 2);

  v37 = objc_msgSend_chroma(v8, v34, v35, v36);
  v41 = objc_msgSend_width(v37, v38, v39, v40);
  v45 = objc_msgSend_chroma(v8, v42, v43, v44);
  v64[0] = v41;
  v64[1] = objc_msgSend_height(v45, v46, v47, v48);
  v64[2] = 1;
  v62 = v65;
  v63 = v66;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v7, v49, v64, &v62);

  v60 = *(MEMORY[0x277D860B0] + 16);
  v61 = *MEMORY[0x277D860B0];
  v59 = *(MEMORY[0x277D860B0] + 32);
  objc_msgSend_setHomographyToReference_(v8, v50, v51, v52);
  objc_msgSend_setAtlasHomography_(v8, v53, v54, v55, *&v61, *&v60, *&v59);
  objc_msgSend_setDirty_(v8, v56, 0, v57);

  return 0;
}

- (int)resetState
{
  v152 = *MEMORY[0x277D85DE8];
  v149 = 1056964608;
  v150 = 0;
  v5 = objc_msgSend_commandQueue(self->_metal, a2, v2, v3);
  v9 = objc_msgSend_commandBuffer(v5, v6, v7, v8);

  objc_msgSend_setLabel_(v9, v10, @"Panorama:AssemblyStage:resetState", v11);
  v138 = v9;
  v15 = objc_msgSend_computeCommandEncoder(v9, v12, v13, v14);
  v19 = objc_msgSend_resetPanoSizedState(self->_shaders, v16, v17, v18);
  getThreadgroupSizeForShader(v19, &v147);

  if (self->_projectiveGrid)
  {
    v23 = objc_msgSend_resetPanoSizedState(self->_shaders, v20, v21, v22);
    objc_msgSend_setComputePipelineState_(v15, v24, v23, v25);

    objc_msgSend_setTexture_atIndex_(v15, v26, self->_projectiveGrid, 0);
    objc_msgSend_setBytes_length_atIndex_(v15, v27, &v150, 4, 0);
    v31 = objc_msgSend_width(self->_projectiveGrid, v28, v29, v30);
    v35 = objc_msgSend_height(self->_projectiveGrid, v32, v33, v34);
    *&v145 = v31;
    *(&v145 + 1) = v35;
    v146 = 1;
    v143 = v147;
    v144 = v148;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v15, v36, &v145, &v143);
    v40 = objc_msgSend_resetPanoSizedState(self->_shaders, v37, v38, v39);
    objc_msgSend_setComputePipelineState_(v15, v41, v40, v42);

    objc_msgSend_setTexture_atIndex_(v15, v43, self->_outputMask, 0);
    objc_msgSend_setBytes_length_atIndex_(v15, v44, &v150, 4, 0);
    v48 = objc_msgSend_width(self->_outputMask, v45, v46, v47);
    v52 = objc_msgSend_height(self->_outputMask, v49, v50, v51);
    *&v145 = v48;
    *(&v145 + 1) = v52;
    v146 = 1;
    v143 = v147;
    v144 = v148;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v15, v53, &v145, &v143);
  }

  if (self->_outputBoundLuma)
  {
    v54 = objc_msgSend_resetPanoSizedState(self->_shaders, v20, v21, v22);
    objc_msgSend_setComputePipelineState_(v15, v55, v54, v56);

    objc_msgSend_setTexture_atIndex_(v15, v57, self->_outputBoundLuma, 0);
    objc_msgSend_setBytes_length_atIndex_(v15, v58, &v150, 4, 0);
    v62 = objc_msgSend_width(self->_outputBoundLuma, v59, v60, v61);
    v66 = objc_msgSend_height(self->_outputBoundLuma, v63, v64, v65);
    *&v145 = v62;
    *(&v145 + 1) = v66;
    v146 = 1;
    v143 = v147;
    v144 = v148;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v15, v67, &v145, &v143);
  }

  if (self->_outputBoundChroma)
  {
    v68 = objc_msgSend_resetPanoSizedState(self->_shaders, v20, v21, v22);
    objc_msgSend_setComputePipelineState_(v15, v69, v68, v70);

    objc_msgSend_setTexture_atIndex_(v15, v71, self->_outputBoundChroma, 0);
    objc_msgSend_setBytes_length_atIndex_(v15, v72, &v149, 4, 0);
    v76 = objc_msgSend_width(self->_outputBoundChroma, v73, v74, v75);
    v80 = objc_msgSend_height(self->_outputBoundChroma, v77, v78, v79);
    *&v145 = v76;
    *(&v145 + 1) = v80;
    v146 = 1;
    v143 = v147;
    v144 = v148;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v15, v81, &v145, &v143);
  }

  v82 = objc_msgSend_resetSliceSizedState(self->_shaders, v20, v21, v22);
  getThreadgroupSizeForShader(v82, &v145);
  v147 = v145;
  v148 = v146;

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v83 = self->_dirtyStagingBuffers;
  v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v84, &v139, v151, 16);
  if (v85)
  {
    v89 = v85;
    v90 = *v140;
    do
    {
      for (i = 0; i != v89; ++i)
      {
        if (*v140 != v90)
        {
          objc_enumerationMutation(v83);
        }

        v92 = *(*(&v139 + 1) + 8 * i);
        v93 = objc_msgSend_resetSliceSizedState(self->_shaders, v86, v87, v88);
        objc_msgSend_setComputePipelineState_(v15, v94, v93, v95);

        v99 = objc_msgSend_luma(v92, v96, v97, v98);
        objc_msgSend_setTexture_atIndex_(v15, v100, v99, 0);

        v104 = objc_msgSend_chroma(v92, v101, v102, v103);
        objc_msgSend_setTexture_atIndex_(v15, v105, v104, 1);

        v109 = objc_msgSend_weights(v92, v106, v107, v108);
        objc_msgSend_setTexture_atIndex_(v15, v110, v109, 2);

        v114 = objc_msgSend_chroma(v92, v111, v112, v113);
        v118 = objc_msgSend_width(v114, v115, v116, v117);
        v122 = objc_msgSend_chroma(v92, v119, v120, v121);
        v126 = objc_msgSend_height(v122, v123, v124, v125);
        *&v145 = v118;
        *(&v145 + 1) = v126;
        v146 = 1;
        v143 = v147;
        v144 = v148;
        objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v15, v127, &v145, &v143);
      }

      v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v86, &v139, v151, 16);
    }

    while (v89);
  }

  objc_msgSend_endEncoding(v15, v128, v129, v130);
  objc_msgSend_commit(v138, v131, v132, v133);
  self->_sliceBufferLength = 0;
  if (self->_assemblyParams.enableTranslationCorrection)
  {
    *&self->_startingMean = 0;
    bzero(self->_movingAverageBuffer, 4 * self->_assemblyParams.movingAverageFilterSize);
  }

  else if (self->_assemblyParams.verticalDriftFilterWeight > 0.0)
  {
    objc_msgSend_resetState(self->_atlasFilter, v134, v135, v136);
  }

  return 0;
}

- (uint64_t)addHomogToStaging:(uint64_t)a3
{
  v7 = result;
  v8 = MEMORY[0x277D860B0];
  v9 = *(MEMORY[0x277D860B0] + 12);
  v10 = *(MEMORY[0x277D860B0] + 28);
  v11 = *(MEMORY[0x277D860B0] + 44);
  v12 = *(result + 160);
  if (v12)
  {
    v13 = 0;
    v14 = *(result + 168);
    v15 = v14 + 48 * v12;
    v16 = *(v15 - 32);
    v17 = *(v15 - 16);
    v63 = *(v15 - 48);
    v64 = v16;
    v65 = v17;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    do
    {
      *(&v66 + v13) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a5, COERCE_FLOAT(*(&v63 + v13))), a6, *(&v63 + v13), 1), a7, *(&v63 + v13), 2);
      v13 += 16;
    }

    while (v13 != 48);
    v19 = v66;
    v18 = v67;
    v20 = v68;
  }

  else
  {
    v18 = *(MEMORY[0x277D860B0] + 16);
    v20 = *(MEMORY[0x277D860B0] + 32);
    v19 = *MEMORY[0x277D860B0];
    v14 = *(result + 168);
  }

  v21 = *v8;
  v22 = v8[1];
  v23 = v14 + 48 * v12;
  *v23 = v19.i64[0];
  *(v23 + 8) = v19.i32[2];
  *(v23 + 12) = v9;
  *(v23 + 16) = v18.i64[0];
  *(v23 + 24) = v18.i32[2];
  *(v23 + 28) = v10;
  *(v23 + 32) = v20.i64[0];
  *(v23 + 40) = v20.i32[2];
  *(v23 + 44) = v11;
  v24 = *(result + 160);
  __asm { FMOV            V4.2S, #1.0 }

  if (v24)
  {
    v30.i64[0] = 0x3F0000003F000000;
    v30.i64[1] = 0x3F0000003F000000;
    v31 = vaddq_f32(a7, vmlaq_f32(vmulq_f32(a5, v30), v30, a6));
    *v31.i8 = vadd_f32(vdiv_f32(*v31.i8, vdup_laneq_s32(v31, 2)), 0xBF000000BF000000);
    v32.i64[0] = v31.i64[0];
    *&v32.u32[2] = _D4;
    if (*(result + 112) == 1)
    {
      v33 = *(result + 116);
      v34 = *(result + 268);
      if (v24 <= v33)
      {
        *(result + 268) = *v31.i32 + v34;
        *(*(result + 272) + 4 * ((v24 - 1) % v33)) = v31.i32[0];
        v38 = *(result + 268) / v24;
      }

      else
      {
        v35 = *(result + 272);
        v36 = (v24 - 1) % v33;
        v37 = *v31.i32 + (v34 - *(v35 + 4 * v36));
        *(result + 268) = v37;
        v38 = v37 / v33;
        *(v35 + 4 * v36) = v31.i32[0];
      }

      v42 = *(result + 120);
      if (v24 == v42)
      {
        *(result + 264) = v38;
      }

      v43 = 0;
      v44 = *(result + 176) + 48 * v24;
      v45 = *(v44 - 32);
      v46 = *(v44 - 16);
      v63 = *(v44 - 48);
      v64 = v45;
      v65 = v46;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      do
      {
        *(&v66 + v43) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v63 + v43))), v22, *(&v63 + v43), 1), v32, *(&v63 + v43), 2);
        v43 += 16;
      }

      while (v43 != 48);
      v21 = v66;
      v22 = v67;
      if (v24 < v42)
      {
        goto LABEL_23;
      }

      v47 = fabsf(v68.f32[0]);
      if (v47 <= *(result + 124) || v47 >= *(result + 128))
      {
        goto LABEL_23;
      }

      *v31.i32 = *v31.i32 - (*(result + 132) * v38);
      v31.i32[1] = v32.i32[1];
      v31.i32[2] = _D4.i32[0];
    }

    else
    {
      v41 = *(result + 136);
      if (v41 <= 0.0)
      {
        goto LABEL_23;
      }

      v61 = v22;
      v62 = v21;
      v59 = v32;
      v60 = _D4;
      v58 = *v31.i32;
      result = objc_msgSend_filterSample_(*(result + 328), a2, a3, a4);
      _D4 = v60;
      v22 = v61;
      v21 = v62;
      *v31.i32 = (v41 * *v31.i32) + ((1.0 - v41) * v58);
      *(v31.i64 + 4) = *(v59.i64 + 4);
      v24 = *(v7 + 160);
    }

    v32 = v31;
LABEL_23:
    v48 = 0;
    v40 = *(v7 + 176);
    v49 = v40 + 48 * v24;
    v50 = *(v49 - 32);
    v51 = *(v49 - 16);
    v63 = *(v49 - 48);
    v64 = v50;
    v65 = v51;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    do
    {
      *(&v66 + v48) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v63 + v48))), v22, *(&v63 + v48), 1), v32, *(&v63 + v48), 2);
      v48 += 16;
    }

    while (v48 != 48);
    v21 = v66;
    v22 = v67;
    v39 = v68;
    goto LABEL_26;
  }

  v39 = v8[2];
  v40 = *(result + 176);
LABEL_26:
  v52 = (v40 + 48 * v24);
  *v52 = v21;
  v52[1] = v22;
  v52[2] = v39;
  v53 = *(v7 + 384);
  v54 = vcvt_f32_f64(vminnmq_f64(vcvtq_f64_f32(*v39.f32), v53));
  v55 = vcvtq_f64_f32(vsub_f32(vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vadd_f32(*v39.f32, _D4)), vaddq_f64(v53, *(v7 + 400)))), v54));
  *(v7 + 384) = vcvtq_f64_f32(v54);
  *(v7 + 400) = v55;
  v56 = *(v7 + 152);
  v57 = *(v7 + 160) + 1;
  *(v7 + 160) = v57;
  if (v57 == v56)
  {
    *(v7 + 152) = 2 * v57;
    *(v7 + 168) = malloc_type_realloc(*(v7 + 168), 96 * v57, 0x1000040EED21634uLL);
    result = malloc_type_realloc(*(v7 + 176), 48 * *(v7 + 152), 0x1000040EED21634uLL);
    *(v7 + 176) = result;
  }

  return result;
}

- (__n128)panoHomography
{
  v10 = *MEMORY[0x277D860B0];
  v9 = objc_msgSend_width(*(a1 + 280), a2, a3, a4) / *(a1 + 24);
  objc_msgSend_height(*(a1 + 280), v5, v6, v7);
  result.n128_f32[0] = v9;
  *(result.n128_u64 + 4) = *(&v10 + 4);
  return result;
}

- (uint64_t)addSliceToProjectiveGrid:(__n128)a3 atlasHomography:(__n128)a4 panoHomography:(__n128)a5 encoder:(__n128)a6 sliceType:(__n128)a7
{
  v56[0] = a2;
  v56[1] = a3;
  v56[2] = a4;
  v55[0] = a5;
  v55[1] = a6;
  v55[2] = a7;
  v54[0] = a15;
  v54[1] = a16;
  v54[2] = a17;
  v19 = *(a1 + 16);
  v20 = a9;
  v24 = objc_msgSend_addSliceToProjectiveGrid(v19, v21, v22, v23);
  getThreadgroupSizeForShader(v24, &v52);

  v50 = *(a1 + 56);
  v51 = a10;
  v28 = objc_msgSend_addSliceToProjectiveGrid(*(a1 + 16), v25, v26, v27);
  objc_msgSend_setComputePipelineState_(v20, v29, v28, v30);

  objc_msgSend_setTexture_atIndex_(v20, v31, *(a1 + 184), 0);
  objc_msgSend_setBytes_length_atIndex_(v20, v32, v56, 48, 0);
  objc_msgSend_setBytes_length_atIndex_(v20, v33, v55, 48, 1);
  objc_msgSend_setBytes_length_atIndex_(v20, v34, v54, 48, 2);
  objc_msgSend_setBytes_length_atIndex_(v20, v35, &v51, 4, 3);
  objc_msgSend_setBytes_length_atIndex_(v20, v36, &v50, 4, 4);
  v40 = objc_msgSend_width(*(a1 + 184), v37, v38, v39);
  v44 = objc_msgSend_height(*(a1 + 184), v41, v42, v43);
  v49[0] = v40;
  v49[1] = v44;
  v49[2] = 1;
  v47 = v52;
  v48 = v53;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v20, v45, v49, &v47);

  return 0;
}

- (__n64)_stagingHomography
{
  result.n64_f32[0] = *(a1 + 64) / *(a1 + 24);
  __asm { FMOV            V1.4S, #1.0 }

  result.n64_u32[1] = HIDWORD(*MEMORY[0x277D860B0]);
  return result;
}

- (uint64_t)addSliceToStagingBuffer:(float32x4_t)a3 sliceLuma:(float32x4_t)a4 sliceChroma:(uint64_t)a5 sliceMask:(void *)a6 sliceGlobalHomography:(void *)a7 encoder:(void *)a8
{
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  objc_msgSend_homographyToReference(v15, v20, v21, v22);
  v104 = __invert_f3(v103);
  v26 = 0;
  v99 = v104;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  do
  {
    *(&v100 + v26 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*&v99.columns[v26])), a3, *v99.columns[v26].f32, 1), a4, v99.columns[v26], 2);
    ++v26;
  }

  while (v26 != 3);
  v97 = 0u;
  v98 = 0u;
  v96 = 0u;
  v96.i32[2] = DWORD2(v100);
  v97.i32[2] = DWORD2(v101);
  v96.i64[0] = v100;
  v97.i64[0] = v101;
  v98.i32[2] = DWORD2(v102);
  v98.i64[0] = v102;
  objc_msgSend__stagingHomography(a1, v23, v24, v25);
  v30 = 0;
  v31 = v96;
  v32 = v97;
  v33 = v98;
  v99.columns[0] = v34;
  v99.columns[1] = v35;
  v99.columns[2] = v36;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  do
  {
    *(&v100 + v30 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, COERCE_FLOAT(*&v99.columns[v30])), v32, *v99.columns[v30].f32, 1), v33, v99.columns[v30], 2);
    ++v30;
  }

  while (v30 != 3);
  v96.i32[2] = DWORD2(v100);
  v97.i32[2] = DWORD2(v101);
  v96.i64[0] = v100;
  v97.i64[0] = v101;
  v98.i32[2] = DWORD2(v102);
  v98.i64[0] = v102;
  v37 = objc_msgSend_dirty(v15, v27, v28, v29);
  v94 = *(a1 + 296);
  v95 = v37;
  v41 = objc_msgSend_addSliceToStaging(*(a1 + 16), v38, v39, v40);
  getThreadgroupSizeForShader(v41, &v100);

  v45 = objc_msgSend_addSliceToStaging(*(a1 + 16), v42, v43, v44);
  objc_msgSend_setComputePipelineState_(v19, v46, v45, v47);

  objc_msgSend_setTexture_atIndex_(v19, v48, v16, 0);
  objc_msgSend_setTexture_atIndex_(v19, v49, v17, 1);
  objc_msgSend_setTexture_atIndex_(v19, v50, v18, 2);
  v54 = objc_msgSend_luma(v15, v51, v52, v53);
  objc_msgSend_setTexture_atIndex_(v19, v55, v54, 3);

  v59 = objc_msgSend_chroma(v15, v56, v57, v58);
  objc_msgSend_setTexture_atIndex_(v19, v60, v59, 4);

  v64 = objc_msgSend_weights(v15, v61, v62, v63);
  objc_msgSend_setTexture_atIndex_(v19, v65, v64, 5);

  objc_msgSend_setBytes_length_atIndex_(v19, v66, &v96, 48, 0);
  objc_msgSend_setBytes_length_atIndex_(v19, v67, &v94, 4, 1);
  objc_msgSend_setBytes_length_atIndex_(v19, v68, &v95, 4, 2);
  v72 = objc_msgSend_chroma(v15, v69, v70, v71);
  v76 = objc_msgSend_width(v72, v73, v74, v75);
  v80 = objc_msgSend_chroma(v15, v77, v78, v79);
  v84 = objc_msgSend_height(v80, v81, v82, v83);
  v99.columns[0].i64[0] = v76;
  v99.columns[0].i64[1] = v84;
  v99.columns[1].i64[0] = 1;
  v92 = v100;
  v93 = v101;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v19, v85, &v99, &v92);

  objc_msgSend_setDirty_(v15, v86, 1, v87);
  return 0;
}

- (int)addStagingToOutput:(id)a3
{
  v4 = a3;
  v185 = 0u;
  v186 = 0u;
  v184 = 0u;
  objc_msgSend_homographyToReference(v4, v5, v6, v7);
  DWORD2(v184) = v8;
  DWORD2(v185) = v9;
  *&v184 = v10;
  *&v185 = v11;
  DWORD2(v186) = v12;
  *&v186 = v13;
  v183 = 0;
  v17 = objc_msgSend_commandQueue(self->_metal, v14, v15, v16);
  v21 = objc_msgSend_commandBuffer(v17, v18, v19, v20);

  objc_msgSend_setLabel_(v21, v22, @"Panorama:AssemblyStage:prepareForDenoising", v23);
  v27 = objc_msgSend_computeCommandEncoder(v21, v24, v25, v26);
  v31 = objc_msgSend_prepareForDenoising(self->_shaders, v28, v29, v30);
  getThreadgroupSizeForShader(v31, &v181);

  v35 = objc_msgSend_prepareForDenoising(self->_shaders, v32, v33, v34);
  objc_msgSend_setComputePipelineState_(v27, v36, v35, v37);

  v41 = objc_msgSend_luma(v4, v38, v39, v40);
  objc_msgSend_setTexture_atIndex_(v27, v42, v41, 0);

  v46 = objc_msgSend_chroma(v4, v43, v44, v45);
  objc_msgSend_setTexture_atIndex_(v27, v47, v46, 1);

  objc_msgSend_setTexture_atIndex_(v27, v48, self->_nrfInputLuma, 2);
  objc_msgSend_setTexture_atIndex_(v27, v49, self->_nrfInputChroma, 3);
  v53 = objc_msgSend_weights(v4, v50, v51, v52);
  objc_msgSend_setTexture_atIndex_(v27, v54, v53, 4);

  v58 = objc_msgSend_width(self->_nrfInputChroma, v55, v56, v57);
  v62 = objc_msgSend_height(self->_nrfInputChroma, v59, v60, v61);
  *&v190 = v58;
  *(&v190 + 1) = v62;
  *&v191 = 1;
  v187 = v181;
  *&v188 = v182;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v27, v63, &v190, &v187);
  objc_msgSend_endEncoding(v27, v64, v65, v66);
  objc_msgSend_commit(v21, v67, v68, v69);
  objc_msgSend_waitUntilCompleted(v21, v70, v71, v72);
  if (self->_assemblyParams.bitDepth == 2)
  {
    objc_storeStrong(&self->_nrfOutputLuma, self->_nrfInputLuma);
    v76 = self->_nrfInputChroma;
    nrfOutputChroma = self->_nrfOutputChroma;
    self->_nrfOutputChroma = v76;
  }

  else
  {
    nrfInputSampleBuffer = self->_nrfInputSampleBuffer;
    v79 = objc_msgSend_metadata(v4, v73, v74, v75);
    v83 = objc_msgSend_copy(v79, v80, v81, v82);
    CMSetAttachment(nrfInputSampleBuffer, @"MetadataDictionary", v83, 0);

    NSClassFromString(&cfstr_Nrfpreparedesc.isa);
    v84 = objc_opt_new();
    objc_msgSend_setWidth_(v84, v85, LODWORD(self->_stagingWidth), v86);
    objc_msgSend_setHeight_(v84, v87, LODWORD(self->_stagingHeight), v88);
    objc_msgSend_setPixelFormat_(v84, v89, self->_CVPixelFormat, v90);
    nrfProcessor = self->_nrfProcessor;
    if (self->_assemblyParams.useNRFTypePano)
    {
      objc_msgSend_prepareToProcess_prepareDescriptor_(nrfProcessor, v91, 8, v84);
    }

    else
    {
      objc_msgSend_prepareToProcess_prepareDescriptor_(nrfProcessor, v91, 0, v84);
    }

    NSClassFromString(&cfstr_Nrfubfusionout.isa);
    nrfOutputChroma = objc_opt_new();
    objc_msgSend_setPixelBuffer_(nrfOutputChroma, v93, self->_nrfOutputPixelBuffer, v94);
    v95 = objc_opt_new();
    objc_msgSend_setMetadata_(nrfOutputChroma, v96, v95, v97);

    objc_msgSend_setOutput_(self->_nrfProcessor, v98, nrfOutputChroma, v99);
    objc_msgSend_addFrame_(self->_nrfProcessor, v100, self->_nrfInputSampleBuffer, v101);
    objc_msgSend_process(self->_nrfProcessor, v102, v103, v104);
    objc_msgSend_finishScheduling(self->_nrfProcessor, v105, v106, v107);
    objc_msgSend_resetState(self->_nrfProcessor, v108, v109, v110);
  }

  objc_msgSend__stagingHomography(self, v111, v112, v113);
  v194 = __invert_f3(v193);
  v117 = 0;
  v187 = v184;
  v188 = v185;
  v189 = v186;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  do
  {
    *(&v190 + v117) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v194.columns[0], COERCE_FLOAT(*(&v187 + v117))), v194.columns[1], *(&v187 + v117), 1), v194.columns[2], *(&v187 + v117), 2);
    v117 += 16;
  }

  while (v117 != 48);
  DWORD2(v184) = DWORD2(v190);
  DWORD2(v185) = DWORD2(v191);
  *&v184 = v190;
  *&v185 = v191;
  DWORD2(v186) = DWORD2(v192);
  *&v186 = v192;
  v118 = objc_msgSend_commandQueue(self->_metal, v114, v115, v116);
  v122 = objc_msgSend_commandBuffer(v118, v119, v120, v121);

  objc_msgSend_setLabel_(v122, v123, @"Panorama:AssemblyStage:addStagingToOutput", v124);
  v128 = objc_msgSend_computeCommandEncoder(v122, v125, v126, v127);

  objc_msgSend_atlasHomography(v4, v129, v130, v131);
  v183 = v132;
  *(&v183 + 1) = *(&v132 + 1) / (objc_msgSend_height(self->_outputBoundLuma, v133, v134, v135) / self->_sliceHeight);
  v139 = objc_msgSend_width(self->_outputBoundLuma, v136, v137, v138);
  shaders = self->_shaders;
  *&v183 = *&v183 / (v139 / self->_sliceWidth);
  v144 = objc_msgSend_addStagingToOutput(shaders, v141, v142, v143);
  getThreadgroupSizeForShader(v144, &v190);
  v181 = v190;
  v182 = v191;

  v148 = objc_msgSend_addStagingToOutput(self->_shaders, v145, v146, v147);
  objc_msgSend_setComputePipelineState_(v128, v149, v148, v150);

  objc_msgSend_setTexture_atIndex_(v128, v151, self->_nrfOutputLuma, 0);
  objc_msgSend_setTexture_atIndex_(v128, v152, self->_nrfOutputChroma, 1);
  v156 = objc_msgSend_weights(v4, v153, v154, v155);
  objc_msgSend_setTexture_atIndex_(v128, v157, v156, 2);

  objc_msgSend_setTexture_atIndex_(v128, v158, self->_projectiveGrid, 3);
  objc_msgSend_setTexture_atIndex_(v128, v159, self->_outputBoundLuma, 4);
  objc_msgSend_setTexture_atIndex_(v128, v160, self->_outputBoundChroma, 5);
  objc_msgSend_setTexture_atIndex_(v128, v161, self->_outputMask, 6);
  objc_msgSend_setBytes_length_atIndex_(v128, v162, &v184, 48, 0);
  objc_msgSend_setBytes_length_atIndex_(v128, v163, &v183, 8, 1);
  objc_msgSend_setBytes_length_atIndex_(v128, v164, &self->_direction, 8, 2);
  v168 = objc_msgSend_width(self->_outputBoundChroma, v165, v166, v167);
  v172 = objc_msgSend_height(self->_outputBoundChroma, v169, v170, v171);
  *&v190 = v168;
  *(&v190 + 1) = v172;
  *&v191 = 1;
  v187 = v181;
  *&v188 = v182;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v128, v173, &v190, &v187);
  objc_msgSend_endEncoding(v128, v174, v175, v176);
  objc_msgSend_commit(v122, v177, v178, v179);

  return 0;
}

- (int)renderDirtyStagingBuffers
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = self->_dirtyStagingBuffers;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v22, v26, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = objc_msgSend_addStagingToOutput_(self, v6, v11, v7, v22);
        if (v12)
        {
          v20 = v12;

          return v20;
        }

        objc_msgSend_addObject_(self->_stagingBufferPool, v13, v11, v14);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v22, v26, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = objc_opt_new();
  dirtyStagingBuffers = self->_dirtyStagingBuffers;
  self->_dirtyStagingBuffers = v15;

  objc_msgSend_removeAllObjects(self->_stagingBufferPool, v17, v18, v19);
  return 0;
}

- (void)adjustBoundingBox
{
  v2 = vcvtq_f64_u64(*&self->_sliceWidth);
  v3 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(vcvt_f32_f64(v2)), xmmword_23C47A560));
  v4 = vcvtq_f64_f32(vmul_f32(vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vsub_f32(vcvt_f32_f64(vmulq_f64(self->_boundingBox.origin, v2)), v3)), 0)), 0x3F0000003F000000));
  v5 = vcvtq_f64_f32(vmul_f32(vcvt_f32_f64(vminnmq_f64(vcvtq_f64_u64(*&self->_panoWidth), vcvtq_f64_f32(vadd_f32(v3, vcvt_f32_f64(vmulq_f64(self->_boundingBox.size, v2)))))), 0x3F0000003F000000));
  self->_boundingBox.origin = v4;
  self->_boundingBox.size = v5;
}

- (int)finishProcessing
{
  objc_msgSend_adjustBoundingBox(self, a2, v2, v3);

  return MEMORY[0x2821F9670](self, sel_renderDirtyStagingBuffers, v5, v6);
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PanoramaAssemblyStage)initWithContext:(id)a3 robustPanoParams:(id *)a4
{
  v7 = a3;
  v31.receiver = self;
  v31.super_class = PanoramaAssemblyStage;
  v8 = [(PanoramaAssemblyStage *)&v31 init];
  v9 = v8;
  if (v8 && (objc_storeStrong(&v8->_metal, a3), v10 = [PanoramaAssemblyShaders alloc], v13 = objc_msgSend_initWithContext_(v10, v11, v7, v12), shaders = v9->_shaders, v9->_shaders = v13, shaders, v9->_shaders))
  {
    *&v9->_sliceBufferAllocSize = xmmword_23C47A550;
    v9->_sliceHomographies = malloc_type_calloc(0x400uLL, 0x30uLL, 0x1000040EED21634uLL);
    v9->_atlasHomographies = malloc_type_calloc(v9->_sliceBufferAllocSize, 0x30uLL, 0x1000040EED21634uLL);
    v15 = objc_opt_new();
    stagingBufferPool = v9->_stagingBufferPool;
    v9->_stagingBufferPool = v15;

    v17 = objc_opt_new();
    dirtyStagingBuffers = v9->_dirtyStagingBuffers;
    v9->_dirtyStagingBuffers = v17;

    v9->_direction = 1;
    outputBoundLuma = v9->_outputBoundLuma;
    v9->_outputBoundLuma = 0;

    outputBoundChroma = v9->_outputBoundChroma;
    v9->_outputBoundChroma = 0;

    memcpy(&v9->_assemblyParams, a4, sizeof(v9->_assemblyParams));
    if (v9->_assemblyParams.enableTranslationCorrection)
    {
      v9->_lastFilteredValue = 0.0;
      v9->_movingAverageBuffer = malloc_type_calloc(v9->_assemblyParams.movingAverageFilterSize, 4uLL, 0x100004052888210uLL);
    }

    else if (v9->_assemblyParams.verticalDriftFilterWeight > 0.0)
    {
      v21 = [ButterworthHighPassFilter alloc];
      LODWORD(v22) = 1148846080;
      LODWORD(v23) = 30.0;
      v27 = objc_msgSend_initWithCutoffFrequency_sampleRate_(v21, v24, v25, v26, v23, v22);
      atlasFilter = v9->_atlasFilter;
      v9->_atlasFilter = v27;
    }

    v9->_MTLPixelFormatY = getLumaMTLPixelFormat(v9->_assemblyParams.bitDepth);
    v9->_MTLPixelFormatUV = getChromaMTLPixelFormat(v9->_assemblyParams.bitDepth);
    v9->_CVPixelFormat = getCVPixelFormat(v9->_assemblyParams.bitDepth);
    v29 = v9;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (int)prepareToProcess:(int)a3 sliceWidth:(unint64_t)a4 sliceHeight:(unint64_t)a5 gridWidth:(unint64_t)a6 gridHeight:(unint64_t)a7
{
  v70[1] = *MEMORY[0x277D85DE8];
  self->_assemblyMode = a3;
  self->_panoWidth = CVPixelBufferGetWidth(self->_output);
  self->_panoHeight = CVPixelBufferGetHeight(self->_output);
  self->_sliceWidth = a4;
  self->_sliceHeight = a5;
  self->_stagingWidth = self->_panoWidth;
  self->_stagingHeight = a5;
  v69 = *MEMORY[0x277CC4DE8];
  v70[0] = MEMORY[0x277CBEC10];
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v70, &v69, 1);
  if (self->_projectiveGrid)
  {
    v17 = 0;
  }

  else
  {
    v18 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v13, 125, a6, a7, 0);
    objc_msgSend_setUsage_(v18, v19, 3, v20);
    v24 = objc_msgSend_device(self->_metal, v21, v22, v23);
    v27 = objc_msgSend_newTextureWithDescriptor_(v24, v25, v18, v26);
    projectiveGrid = self->_projectiveGrid;
    self->_projectiveGrid = v27;

    if (!self->_projectiveGrid)
    {
      goto LABEL_21;
    }

    v17 = v18;
  }

  if (self->_outputMask)
  {
    v18 = v17;
  }

  else
  {
    v18 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v13, 10, self->_panoWidth >> 1, self->_panoHeight >> 1, 0);

    objc_msgSend_setUsage_(v18, v29, 3, v30);
    v34 = objc_msgSend_device(self->_metal, v31, v32, v33);
    v37 = objc_msgSend_newTextureWithDescriptor_(v34, v35, v18, v36);
    outputMask = self->_outputMask;
    self->_outputMask = v37;

    if (!self->_outputMask)
    {
      goto LABEL_21;
    }
  }

  if (!self->_nrfOutputPixelBuffer)
  {
    sub_23C44B74C(v16);
    if (!self->_nrfOutputPixelBuffer)
    {
      goto LABEL_21;
    }

    v39 = sub_23C44B778();
    v43 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v39, v40, v41, v42);
    nrfOutputLuma = self->_nrfOutputLuma;
    self->_nrfOutputLuma = v43;

    v46 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v45, self->_nrfOutputPixelBuffer, 30, 3, 1);
    nrfOutputChroma = self->_nrfOutputChroma;
    self->_nrfOutputChroma = v46;
  }

  if (!self->_nrfInputPixelBuffer)
  {
    sub_23C44B74C(v16);
    if (self->_nrfInputPixelBuffer)
    {
      v48 = sub_23C44B778();
      v52 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v48, v49, v50, v51);
      nrfInputLuma = self->_nrfInputLuma;
      self->_nrfInputLuma = v52;

      v55 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v54, self->_nrfInputPixelBuffer, 30, 3, 1);
      nrfInputChroma = self->_nrfInputChroma;
      self->_nrfInputChroma = v55;

      self->_nrfInputSampleBuffer = CreateSampleBuffer();
      goto LABEL_14;
    }

LABEL_21:
    v67 = 2;
    goto LABEL_20;
  }

LABEL_14:
  v57 = objc_msgSend__bindOutput(self, v13, v14, v15);
  if (v57)
  {
    goto LABEL_19;
  }

  v57 = objc_msgSend_resetState(self, v58, v59, v60);
  if (v57)
  {
    goto LABEL_19;
  }

  if (!objc_msgSend_count(self->_dirtyStagingBuffers, v61, v62, v63))
  {
    v57 = objc_msgSend__addStagingBuffer(self, v64, v65, v66);
LABEL_19:
    v67 = v57;
    goto LABEL_20;
  }

  v67 = 0;
LABEL_20:

  return v67;
}

- (int)_bindOutput
{
  output = self->_output;
  if (!output)
  {
    return 2;
  }

  v4 = 3;
  v5 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, a2, output, self->_MTLPixelFormatY, 3, 0);
  outputBoundLuma = self->_outputBoundLuma;
  self->_outputBoundLuma = v5;

  if (self->_outputBoundLuma)
  {
    v4 = 3;
    v8 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v7, self->_output, self->_MTLPixelFormatUV, 3, 1);
    outputBoundChroma = self->_outputBoundChroma;
    self->_outputBoundChroma = v8;

    if (self->_outputBoundChroma)
    {
      v4 = 0;
      self->_boundingBox.origin.x = 0.0;
      self->_boundingBox.origin.y = 0.0;
      __asm { FMOV            V0.2D, #1.0 }

      self->_boundingBox.size = _Q0;
    }
  }

  return v4;
}

- (int)_addStagingBuffer
{
  v5 = objc_msgSend_count(self->_stagingBufferPool, a2, v2, v3);
  v9 = MEMORY[0x277D860B0];
  if (v5)
  {
    v10 = objc_msgSend_lastObject(self->_stagingBufferPool, v6, v7, v8);
    objc_msgSend_removeLastObject(self->_stagingBufferPool, v11, v12, v13);
  }

  else
  {
    v16 = [StagingBuffer alloc];
    v10 = objc_msgSend_initWithContext_stagingWidth_stagingHeight_homography_atlasHomography_(v16, v17, self->_metal, self->_stagingWidth, self->_stagingHeight, *v9, v9[2], v9[4], *v9, v9[2], v9[4]);
    if (!v10)
    {
      return 2;
    }
  }

  objc_msgSend_addObject_(self->_dirtyStagingBuffers, v14, v10, v15);
  v21 = objc_msgSend_commandQueue(self->_metal, v18, v19, v20);
  v25 = objc_msgSend_commandBuffer(v21, v22, v23, v24);

  objc_msgSend_setLabel_(v25, v26, @"Panorama:AssemblyStage:_addStagingBuffer", v27);
  v31 = objc_msgSend_computeCommandEncoder(v25, v28, v29, v30);
  objc_msgSend_clearStagingBuffer_withEncoder_(self, v32, v10, v31);
  objc_msgSend_endEncoding(v31, v33, v34, v35);
  objc_msgSend_commit(v25, v36, v37, v38);
  sliceBufferLength = self->_sliceBufferLength;
  if (sliceBufferLength)
  {
    objc_msgSend_setHomographyToReference_(v10, v39, v40, v41, *(self->_sliceHomographies + 6 * sliceBufferLength - 6), *(self->_sliceHomographies + 6 * sliceBufferLength - 4), *(self->_sliceHomographies + 6 * sliceBufferLength - 2));
    v43 = (self->_atlasHomographies + 48 * self->_sliceBufferLength);
    objc_msgSend_setAtlasHomography_(v10, v44, v45, v46, *(v43 - 6), *(v43 - 4), *(v43 - 2));
  }

  else
  {
    v52 = *(v9 + 1);
    v53 = *v9;
    v51 = *(v9 + 2);
    objc_msgSend_setHomographyToReference_(v10, v39, v40, v41);
    objc_msgSend_setAtlasHomography_(v10, v47, v48, v49, *&v53, *&v52, *&v51);
  }

  return 0;
}

- (uint64_t)addSlice:(double)a3 metadata:(double)a4 sliceHomography:(double)a5 stitchingMask:(double)a6 roi:(double)a7 sliceType:(double)a8
{
  v21 = a11;
  v22 = a12;
  v25 = objc_msgSend_objectForKeyedSubscript_(v21, v23, @"SliceNumber", v24);
  v29 = objc_msgSend_intValue(v25, v26, v27, v28);

  objc_msgSend_addHomogToStaging_(a1, v30, v31, v32, a2, a3, a4);
  objc_msgSend_panoHomography(a1, v33, v34, v35);
  v153 = v36;
  v149 = v38;
  v151 = v37;
  v39 = 48 * *(a1 + 160) - 48;
  v40 = (*(a1 + 168) + v39);
  v161 = *v40;
  v139 = *v161.columns[1].i64;
  v140 = v40->columns[0];
  v138 = *v161.columns[2].i64;
  v162 = __invert_f3(*v40);
  v147 = *v162.columns[1].i64;
  v148 = *v162.columns[0].i64;
  v146 = *v162.columns[2].i64;
  v41 = (*(a1 + 176) + v39);
  v158 = v41[1];
  v160 = *v41;
  v156 = v41[2];
  v44 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(*(a1 + 8), v42, a10, *(a1 + 304), 1, 0);
  if (!v44 || (objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(*(a1 + 8), v43, a10, *(a1 + 312), 1, 1), (v145 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v114 = 0;
    v145 = 0;
    v58 = 0;
    v59 = 0;
    v135 = 0;
    v131 = 0;
    v121 = 3;
    goto LABEL_21;
  }

  v137 = a13;
  v144 = v44;
  v142 = v21;
  v48 = objc_msgSend_commandQueue(*(a1 + 8), v45, v46, v47);
  v52 = objc_msgSend_commandBuffer(v48, v49, v50, v51);

  objc_msgSend_setLabel_(v52, v53, @"Panorama:AssemblyStage:addSlice", v54);
  v141 = v52;
  v143 = objc_msgSend_computeCommandEncoder(v52, v55, v56, v57);
  v58 = objc_opt_new();
  v59 = objc_opt_new();
  v60 = (a1 + 200);
  if (objc_msgSend_count(*(a1 + 200), v61, v62, v63))
  {
    v66 = 0;
    v67 = 0.0;
    while (1)
    {
      v68 = objc_msgSend_objectAtIndexedSubscript_(*v60, v64, v66, v65);
      objc_msgSend_overlapWithAtlasHomography_roi_(v68, v69, v70, v71, *&v160, *&v158, *&v156, a5, a6, a7, a8);
      v75 = v74;
      if (v74 <= 0.25)
      {
        v80 = objc_msgSend_addStagingToOutput_(a1, v72, v68, v73);
        if (v80)
        {
          v121 = v80;

          v135 = 0;
          v131 = v52;
          v21 = v142;
          v44 = v144;
          v114 = v143;
          goto LABEL_21;
        }

        objc_msgSend_addObject_(*(a1 + 192), v81, v68, v82);
        HostTime = ACT_getHostTime();
        panoLog(32, "FrameID:%04d time %.3f: assembly commits staging buffer %zu to output\n", v29, HostTime, v66);
      }

      else
      {
        objc_msgSend_addObject_(v58, v72, v68, v73);
      }

      v67 = fmaxf(v75, v67);
      *&v79 = v75;
      v84 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v76, v77, v78, v79);
      objc_msgSend_addObject_(v59, v85, v84, v86);

      if (++v66 >= objc_msgSend_count(*v60, v87, v88, v89))
      {
        goto LABEL_12;
      }
    }
  }

  v67 = 0.0;
LABEL_12:
  v90 = v153;
  HIDWORD(v90) = 0;
  v154 = v90;
  v91 = v151;
  HIDWORD(v91) = 0;
  v152 = v91;
  v92 = v149;
  HIDWORD(v92) = 0;
  v150 = v92;
  objc_storeStrong((a1 + 200), v58);
  v96 = objc_msgSend_description(v59, v93, v94, v95);
  v98 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v96, v97, @"\n", @", ");

  v99 = ACT_getHostTime();
  v100 = v98;
  v104 = objc_msgSend_UTF8String(v100, v101, v102, v103);
  v108 = objc_msgSend_count(*v60, v105, v106, v107);
  panoLog(32, "FrameID:%04d time %.3f: assembly overlaps %s maxOverlap %f _dirtyStagingBuffers.count %lu isLastSlice %d\n", v29, v99, v104, v67, v108, v137 == 2);
  if (v67 <= 0.85 || (v112 = objc_msgSend_count(*v60, v109, v110, v111), v137 == 2) || !v112)
  {
    objc_msgSend__addStagingBuffer(a1, v109, v110, v111);
    v113 = ACT_getHostTime();
    panoLog(32, "FrameID:%04d time %.3f: assembly new staging buffer added\n", v29, v113);
  }

  v114 = v143;
  v115 = objc_msgSend_addSliceToProjectiveGrid_atlasHomography_panoHomography_encoder_sliceType_(a1, v109, v143, v137, v148, v147, v146, *&v160, *&v158, *&v156, v154, v152, v150);
  v44 = v144;
  if (v115)
  {
    v121 = v115;
    v131 = v141;
    v21 = v142;
  }

  else
  {
    v119 = objc_msgSend_lastObject(*(a1 + 200), v116, v117, v118);
    v121 = objc_msgSend_addSliceToStagingBuffer_sliceLuma_sliceChroma_sliceMask_sliceGlobalHomography_encoder_(a1, v120, v119, v144, v145, v22, v143, *v140.i64, v139, v138);

    if (v121)
    {
      v131 = v141;
      v21 = v142;
    }

    else
    {
      v125 = objc_msgSend_lastObject(*v60, v122, v123, v124);
      v21 = v142;
      objc_msgSend_setMetadata_(v125, v126, v142, v127);

      objc_msgSend_endEncoding(v143, v128, v129, v130);
      v131 = v141;
      objc_msgSend_commit(v141, v132, v133, v134);
    }

    v114 = v143;
  }

  v135 = v98;
LABEL_21:

  return v121;
}

@end