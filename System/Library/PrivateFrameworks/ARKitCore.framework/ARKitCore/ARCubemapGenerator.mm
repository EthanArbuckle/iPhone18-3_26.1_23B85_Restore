@interface ARCubemapGenerator
- (ARCubemapGenerator)init;
- (void)cubemapWithTransform:(__n128)transform extent:(__n128)extent lastHistogram:(__n128)histogram fromMeshes:(__n128)meshes cameraImage:(uint64_t)image cameraTransform:(const void *)cameraTransform cameraIntrinsics:(void *)intrinsics cameraExposure:(__CVBuffer *)self0 cameraExposureOffset:(void *)self1 completionHandler:(uint64_t)self2;
@end

@implementation ARCubemapGenerator

- (ARCubemapGenerator)init
{
  v15.receiver = self;
  v15.super_class = ARCubemapGenerator;
  v2 = [(ARCubemapGenerator *)&v15 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cubemapProjector = v2->_cubemapProjector;
    v2->_cubemapProjector = v3;

    v5 = objc_opt_new();
    gpuWarper = v2->_gpuWarper;
    v2->_gpuWarper = v5;

    v7 = objc_opt_new();
    cubemapConverter = v2->_cubemapConverter;
    v2->_cubemapConverter = v7;

    v9 = objc_opt_new();
    cubemapHistogram = v2->_cubemapHistogram;
    v2->_cubemapHistogram = v9;

    if (!v2->_cubemapProjector || !v2->_gpuWarper)
    {
      v13 = 0;
      goto LABEL_7;
    }

    v11 = ARCreateNonFixedPriorityDispatchQueue("com.apple.arkit.environmentTexturing.cubeMap");
    cubemapQueue = v2->_cubemapQueue;
    v2->_cubemapQueue = v11;
  }

  v13 = v2;
LABEL_7:

  return v13;
}

- (void)cubemapWithTransform:(__n128)transform extent:(__n128)extent lastHistogram:(__n128)histogram fromMeshes:(__n128)meshes cameraImage:(uint64_t)image cameraTransform:(const void *)cameraTransform cameraIntrinsics:(void *)intrinsics cameraExposure:(__CVBuffer *)self0 cameraExposureOffset:(void *)self1 completionHandler:(uint64_t)self2
{
  intrinsicsCopy = intrinsics;
  offsetCopy = offset;
  CVPixelBufferRetain(exposure);
  v28 = *(self + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __174__ARCubemapGenerator_cubemapWithTransform_extent_lastHistogram_fromMeshes_cameraImage_cameraTransform_cameraIntrinsics_cameraExposure_cameraExposureOffset_completionHandler___block_invoke;
  block[3] = &unk_1E817D890;
  v49 = intrinsicsCopy;
  selfCopy = self;
  v37 = a2;
  transformCopy = transform;
  extentCopy = extent;
  histogramCopy = histogram;
  exposureCopy = exposure;
  v54 = a22;
  meshesCopy = meshes;
  v42 = a18;
  v43 = a19;
  v44 = a20;
  v45 = a14;
  v46 = a15;
  v47 = a16;
  v48 = a17;
  memcpy(v55, cameraTransform, sizeof(v55));
  v51 = offsetCopy;
  v53 = a21;
  v29 = offsetCopy;
  v30 = intrinsicsCopy;
  dispatch_async(v28, block);
}

void __174__ARCubemapGenerator_cubemapWithTransform_extent_lastHistogram_fromMeshes_cameraImage_cameraTransform_cameraIntrinsics_cameraExposure_cameraExposureOffset_completionHandler___block_invoke(uint64_t a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithArray:*(a1 + 224)];
  v3 = [ARGPUCubemapProjector createCubemap:256];
  kdebug_trace();
  [*(*(a1 + 232) + 8) projectToCube:v3 transformWorldFromCube:v2 meshes:0 blend:{*(a1 + 32), *(a1 + 48), *(a1 + 64), *(a1 + 80)}];
  kdebug_trace();
  memset(__dst, 0, 512);
  v4 = *(*(a1 + 232) + 24);
  if (v4)
  {
    [v4 colorHistogramForCubemap:v3];
    if (*__dst >= 0.083333)
    {
      goto LABEL_15;
    }
  }

  else
  {
    bzero(__dst, 0x404uLL);
  }

  memset(&__src[200], 0, 24);
  *&__src[192] = &__src[200];
  v5 = ARCreateTexture(512);
  v6 = *&__src[216];
  *&__src[216] = v5;

  v7 = 0;
  v8 = *(MEMORY[0x1E69E9B18] + 16);
  v9 = *(MEMORY[0x1E69E9B18] + 32);
  v11 = *(a1 + 80);
  v10 = *(a1 + 96);
  LODWORD(v12) = 0;
  DWORD1(v12) = vmuls_lane_f32(-0.5, *v10.i8, 1);
  DWORD2(v12) = 0;
  HIDWORD(v12) = 1.0;
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  v71 = *MEMORY[0x1E69E9B18];
  v72 = v8;
  v73 = v9;
  v74 = v12;
  do
  {
    v69[v7 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*(&v71 + v7))), v14, *(&v71 + v7), 1), v15, *(&v71 + v7), 2), v11, *(&v71 + v7), 3);
    v7 += 16;
  }

  while (v7 != 64);
  *&__src[32] = v69[0];
  *&__src[48] = v69[1];
  *&__src[64] = v69[2];
  *&__src[80] = v69[3];
  v16 = vextq_s8(v10, v10, 8uLL);
  *v10.i8 = vzip1_s32(*v10.i8, *v16.i8);
  *v16.i8 = vmul_f32(*v10.i8, 0x3F0000003F000000);
  v17 = vzip1q_s32(v16, v10);
  v17.i32[1] = 0;
  *v10.i8 = vmul_f32(*v10.i8, 0xBF000000BF000000);
  v18 = vzip1q_s32(v10, v10);
  v18.i32[1] = 0;
  *&__src[96] = v17;
  *&__src[112] = v18;
  v19 = *(*(a1 + 232) + 32);
  v20 = *(a1 + 248);
  v21 = *(a1 + 264);
  v63 = *(a1 + 128);
  v66 = *(a1 + 112);
  v59 = *(a1 + 160);
  v60 = *(a1 + 144);
  v55 = *(a1 + 192);
  v57 = *(a1 + 176);
  v53 = *(a1 + 208);
  v79[7] = v18;
  v79[6] = v17;
  v79[5] = v69[3];
  v79[4] = v69[2];
  v79[3] = v69[1];
  v79[2] = v69[0];
  v79[1] = *&__src[16];
  v79[0] = *__src;
  v79[11] = *&__src[176];
  v79[10] = *&__src[160];
  v79[9] = *&__src[144];
  v79[8] = *&__src[128];
  std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v80, &__src[192]);
  v81 = *&__src[216];
  LODWORD(v22) = v21;
  [v19 warpCameraImage:v20 withExposureOffset:v79 withCameraIntrinsics:2 withCameraTransform:1 toPlane:v22 withLoadAction:*&v66 synchronous:{*&v63, *&v60, *&v59, *&v57, *&v55, *&v53}];

  std::__tree<std::array<unsigned char,16ul>>::destroy(v80, v80[1]);
  v23 = convertToMesh(__src);
  [v2 addObject:v23];

  std::__tree<std::array<unsigned char,16ul>>::destroy(&__src[192], *&__src[200]);
  memset(&__src[200], 0, 24);
  *&__src[192] = &__src[200];
  v24 = ARCreateTexture(512);
  v25 = *&__src[216];
  *&__src[216] = v24;

  v26 = 0;
  v27 = *(a1 + 160);
  v28 = *(a1 + 176);
  v29 = *(a1 + 192);
  v30 = *(a1 + 208);
  v71 = xmmword_1C25C8910;
  v72 = xmmword_1C25C86A0;
  v73 = xmmword_1C25C9060;
  v74 = xmmword_1C25C93A0;
  do
  {
    v69[v26 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*(&v71 + v26))), v28, *(&v71 + v26), 1), v29, *(&v71 + v26), 2), v30, *(&v71 + v26), 3);
    v26 += 16;
  }

  while (v26 != 64);
  *&__src[32] = v69[0];
  *&__src[48] = v69[1];
  *&__src[64] = v69[2];
  *&__src[80] = v69[3];
  Width = CVPixelBufferGetWidth(*(a1 + 248));
  Height = CVPixelBufferGetHeight(*(a1 + 248));
  v33 = ARCameraFieldOfViewFromIntrinsics(COERCE_FLOAT(*(a1 + 112)), *(a1 + 128), *(a1 + 144), Width, Height);
  v34 = fmaxf(v33.f32[0], v33.f32[1]);
  v35 = tanf(v34 * 0.5);
  DWORD1(v36) = 0;
  HIDWORD(v36) = 0;
  *&v36 = v35 * 100.0;
  DWORD1(v37) = 0;
  HIDWORD(v37) = 0;
  *(&v36 + 2) = v35 * 100.0;
  *&v37 = v35 * -100.0;
  *(&v37 + 2) = v35 * -100.0;
  *&__src[96] = v36;
  *&__src[112] = v37;
  v38 = *(*(a1 + 232) + 32);
  v39 = *(a1 + 248);
  v40 = *(a1 + 264);
  v64 = *(a1 + 128);
  v67 = *(a1 + 112);
  v58 = *(a1 + 160);
  v61 = *(a1 + 144);
  v54 = *(a1 + 192);
  v56 = *(a1 + 176);
  v52 = *(a1 + 208);
  v76[0] = *__src;
  v76[1] = *&__src[16];
  v76[8] = *&__src[128];
  v76[9] = *&__src[144];
  v76[10] = *&__src[160];
  v76[11] = *&__src[176];
  v76[4] = *&__src[64];
  v76[5] = *&__src[80];
  v76[6] = v36;
  v76[7] = v37;
  v76[2] = *&__src[32];
  v76[3] = *&__src[48];
  std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v77, &__src[192]);
  v78 = *&__src[216];
  LODWORD(v41) = v40;
  [v38 warpCameraImage:v39 withExposureOffset:v76 withCameraIntrinsics:2 withCameraTransform:1 toPlane:v41 withLoadAction:*&v67 synchronous:{*&v64, *&v61, *&v58, *&v56, *&v54, *&v52}];

  std::__tree<std::array<unsigned char,16ul>>::destroy(v77, v77[1]);
  v42 = 1.0;
  if (v34 < 2.419)
  {
    v42 = tanf(1.2095) / v35;
  }

  v43 = vmulq_n_f32(*&__src[96], v42);
  *&__src[112] = vmulq_n_f32(*&__src[112], v42);
  v44 = vaddq_f32(*(a1 + 80), *&__src[80]);
  v44.i32[3] = *&__src[92];
  *&__src[96] = v43;
  *&__src[80] = v44;
  v45 = convertToMesh(__src);
  [v2 addObject:v45];

  std::__tree<std::array<unsigned char,16ul>>::destroy(&__src[192], *&__src[200]);
  kdebug_trace();
  [*(*(a1 + 232) + 8) projectToCube:v3 transformWorldFromCube:v2 meshes:0 blend:{*(a1 + 32), *(a1 + 48), *(a1 + 64), *(a1 + 80)}];
  kdebug_trace();
  v46 = *(*(a1 + 232) + 24);
  if (v46)
  {
    [v46 colorHistogramForCubemap:v3];
  }

  else
  {
    bzero(__src, 0x404uLL);
  }

  memcpy(__dst, __src, 0x404uLL);
LABEL_15:
  CVPixelBufferRelease(*(a1 + 248));
  v47 = *(a1 + 268);
  if (v47 > 0.0 && (*__dst < (v47 * 0.9) || (memcpy(__src, __dst, sizeof(__src)), memcpy(v69, (a1 + 268), 0x404uLL), AREarthMoversDistance(__src, v69) <= 0.15)))
  {
    v48 = *(a1 + 240);
    memcpy(__src, __dst, sizeof(__src));
    (*(v48 + 16))(v48, 0, __src);
  }

  else
  {
    v65 = *(a1 + 48);
    v68 = *(a1 + 32);
    v62 = *(a1 + 64);
    v49 = [ARCubemapCompletion sharedInstance:v52];
    v50 = [v49 completeCubemap:v3 cameraExposure:*(a1 + 256) rotationWorldFromCube:{*&v68, *&v65, *&v62}];

    kdebug_trace();
    [*(*(a1 + 232) + 8) projectToCube:v50 transformWorldFromCube:v2 meshes:1 blend:{*(a1 + 32), *(a1 + 48), *(a1 + 64), *(a1 + 80)}];
    kdebug_trace();
    v51 = *(a1 + 240);
    memcpy(__src, __dst, sizeof(__src));
    (*(v51 + 16))(v51, v50, __src);
    v3 = v50;
  }
}

@end