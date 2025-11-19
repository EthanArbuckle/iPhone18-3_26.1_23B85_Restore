@interface CIPerspectiveAutoCalcV2
- (BOOL)compute;
- (CIPerspectiveAutoCalcV2)initWithContext:(id)a3 image:(id)a4 config:(id *)a5;
- (float)evaluateCost:(CIPerspectiveAutoCalcV2 *)self;
- (float)evaluateCostXZ:(CIPerspectiveAutoCalcV2 *)self;
- (float)evaluateCostYZ:(CIPerspectiveAutoCalcV2 *)self;
- (id).cxx_construct;
- (void)clusterLineSegments;
- (void)computeConfidence;
- (void)createGradientMap;
- (void)dealloc;
- (void)extractLineSegments;
- (void)normalizeGradientMap;
- (void)runOptimization;
- (void)setupCostFunction;
- (void)standardizeImage;
- (void)thresholdGradientMap;
@end

@implementation CIPerspectiveAutoCalcV2

- (CIPerspectiveAutoCalcV2)initWithContext:(id)a3 image:(id)a4 config:(id *)a5
{
  v26.receiver = self;
  v26.super_class = CIPerspectiveAutoCalcV2;
  v5 = [(CIPerspectiveAutoCalc *)&v26 initWithContext:a3 image:a4 config:a5];
  [(CIImage *)v5->super.img extent];
  *&v7 = v6;
  v9.f64[1] = v8;
  *&v8 = v10;
  v23 = *&v8;
  v24 = *&v7;
  v25 = vmla_f32(vcvt_f32_f64(v9), 0x3F0000003F000000, __PAIR64__(LODWORD(v8), v7));
  focalLength = v5->super.config.focalLength;
  v12 = focalLength / hypotf(36.0, 24.0);
  v13 = hypotf(v24, v23);
  v15.i64[0] = COERCE_UNSIGNED_INT(v12 * v13);
  v15.u64[1] = v25;
  v27.columns[0].i32[1] = 0;
  v27.columns[0].i64[1] = 0;
  v27.columns[0].f32[0] = v12 * v13;
  *v14.i32 = v27.columns[0].f32[0];
  __asm { FMOV            V3.4S, #1.0 }

  v21 = vzip2q_s32(v15, _Q3);
  *_Q3.i8 = vdup_lane_s32(v25, 1);
  v27.columns[2] = vzip1q_s32(v21, _Q3);
  v27.columns[1] = vzip2q_s32(v27.columns[0].u32[0], vdupq_lane_s32(v14, 0));
  *v5->_anon_90 = v27.columns[0].u32[0];
  *&v5->_anon_90[16] = v27.columns[1];
  *&v5->_anon_90[32] = v27.columns[2];
  v28 = __invert_f3(v27);
  *v5->_anon_c0 = v28.columns[0].i64[0];
  *&v5->_anon_c0[8] = v28.columns[0].i32[2];
  *&v5->_anon_c0[24] = v28.columns[1].i32[2];
  *&v5->_anon_c0[16] = v28.columns[1].i64[0];
  *&v5->_anon_c0[40] = v28.columns[2].i32[2];
  *&v5->_anon_c0[32] = v28.columns[2].i64[0];
  v5->super.confidence = -1.0;
  return v5;
}

- (void)dealloc
{
  free(*self->gradMapBmp);
  v3.receiver = self;
  v3.super_class = CIPerspectiveAutoCalcV2;
  [(CIPerspectiveAutoCalc *)&v3 dealloc];
}

- (BOOL)compute
{
  v49 = *MEMORY[0x1E69E9840];
  self->super.pitchFailureReason = 0;
  self->super.yawFailureReason = 0;
  v3 = ci_signpost_log_perspectiveAC();
  v4 = ci_signpost_log_perspectiveAC();
  v5 = os_signpost_id_make_with_pointer(v4, self);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v3))
    {
      [(CIImage *)self->super.img extent];
      v8 = v7;
      [(CIImage *)self->super.img extent];
      v46[0] = 67109376;
      v46[1] = v8;
      v47 = 1024;
      v48 = v9;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v6, "compute", "imageSize: %d x %d", v46, 0xEu);
    }
  }

  [(CIPerspectiveAutoCalcV2 *)self standardizeImage];
  [(CIPerspectiveAutoCalcV2 *)self createGradientMap];
  [(CIPerspectiveAutoCalcV2 *)self normalizeGradientMap];
  [(CIPerspectiveAutoCalcV2 *)self thresholdGradientMap];
  [(CIPerspectiveAutoCalcV2 *)self extractLineSegments];
  [(CIPerspectiveAutoCalcV2 *)self clusterLineSegments];
  if ([(CIPerspectiveAutoCalc *)self generateDebugImage])
  {
    img = self->super.img;
    self->super.debugImage = img;
    v11 = CGColorCreateSRGB(0.0, 1.0, 0.0, 1.0);
    v12 = CI::Perspective::plotLines<CI::Perspective::Line>(img, v11, &self->vClusterInliers);
    self->super.debugImage = v12;
    v13 = CGColorCreateSRGB(1.0, 1.0, 0.0, 1.0);
    v14 = CI::Perspective::plotLines<CI::Perspective::Line>(v12, v13, &self->vClusterOutliers);
    self->super.debugImage = v14;
    v15 = CGColorCreateSRGB(0.0, 1.0, 1.0, 1.0);
    v16 = CI::Perspective::plotLines<CI::Perspective::Line>(v14, v15, &self->hClusterInliers);
    self->super.debugImage = v16;
    v17 = CGColorCreateSRGB(1.0, 0.0, 0.0, 1.0);
    self->super.debugImage = CI::Perspective::plotLines<CI::Perspective::Line>(v16, v17, &self->hClusterOutliers);
  }

  [(CIPerspectiveAutoCalcV2 *)self setupCostFunction];
  [(CIPerspectiveAutoCalcV2 *)self runOptimization];
  [(CIPerspectiveAutoCalcV2 *)self computeConfidence];
  if ([(CIPerspectiveAutoCalc *)self generateDebugImage])
  {
    debugImage = self->super.debugImage;
    pitch = self->super.pitch;
    yaw = self->super.yaw;
    roll = self->super.roll;
    v22 = [CIFilter filterWithName:@"CIPerspectiveRotate"];
    [(CIFilter *)v22 setValue:debugImage forKey:@"inputImage"];
    *&v23 = pitch;
    -[CIFilter setValue:forKey:](v22, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v23], @"inputPitch");
    *&v24 = yaw;
    -[CIFilter setValue:forKey:](v22, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v24], @"inputYaw");
    *&v25 = roll;
    -[CIFilter setValue:forKey:](v22, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v25], @"inputRoll");
    v26 = [(CIFilter *)v22 outputImage];
    self->super.debugImage = v26;
    [(CIImage *)v26 extent];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = [CIFilter filterWithName:@"CICheckerboardGenerator"];
    v50.origin.x = v28;
    v50.origin.y = v30;
    v50.size.width = v32;
    v50.size.height = v34;
    MidX = CGRectGetMidX(v50);
    v51.origin.x = v28;
    v51.origin.y = v30;
    v51.size.width = v32;
    v51.size.height = v34;
    [(CIFilter *)v35 setValue:[CIVector forKey:"vectorWithX:Y:" vectorWithX:CGRectGetMidY(v51) Y:?], @"inputCenter"];
    if (v32 >= v34)
    {
      v37 = v34;
    }

    else
    {
      v37 = v32;
    }

    -[CIFilter setValue:forKey:](v35, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:v37 * 0.05], @"inputWidth");
    v38 = [(CIImage *)[(CIFilter *)v35 outputImage] imageByCroppingToRect:v28, v30, v32, v34];
    v39 = [CIFilter filterWithName:@"CIBlendWithAlphaMask"];
    v40 = [[CIImage imageWithColor:?], "imageByCroppingToRect:", v28, v30, v32, v34];
    [(CIFilter *)v39 setValue:v26 forKey:@"inputImage"];
    [(CIFilter *)v39 setValue:v38 forKey:@"inputBackgroundImage"];
    [(CIFilter *)v39 setValue:v40 forKey:@"inputMaskImage"];
    self->super.debugImage = [(CIImage *)[(CIFilter *)v39 outputImage] imageByCompositingOverImage:v38];
  }

  v41 = ci_signpost_log_perspectiveAC();
  v42 = ci_signpost_log_perspectiveAC();
  v43 = os_signpost_id_make_with_pointer(v42, self);
  if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v44 = v43;
    if (os_signpost_enabled(v41))
    {
      LOWORD(v46[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v41, OS_SIGNPOST_INTERVAL_END, v44, "compute", &unk_19CFBCBAE, v46, 2u);
    }
  }

  return 1;
}

- (void)standardizeImage
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_perspectiveAC();
  v4 = ci_signpost_log_perspectiveAC();
  v5 = os_signpost_id_make_with_pointer(v4, self);
  if (v5 - 1 < 0xFFFFFFFFFFFFFFFELL)
  {
    v6 = v5;
    if (os_signpost_enabled(v3))
    {
      [(CIImage *)self->super.img extent];
      v8 = v7;
      [(CIImage *)self->super.img extent];
      *buf = 134218240;
      *&buf[4] = v8;
      *&buf[12] = 2048;
      *&buf[14] = v9;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v6, "StandardizeImage", "imageSize: %f x %f", buf, 0x16u);
    }
  }

  [(CIImage *)self->super.img extent];
  v36 = v13;
  v37 = v12;
  if (v10 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  v15 = v14 * 0.0009765625;
  v16 = logf(v15);
  *&v17 = 1.0 / exp2(ceilf(v16));
  v18 = -*&v17;
  v43.columns[1].i32[0] = 0;
  v43.columns[1].i64[1] = 0;
  v43.columns[0] = v17;
  v43.columns[1].i32[1] = v17;
  *self->_anon_f0 = v17;
  *&self->_anon_f0[16] = v43.columns[1].u64[0];
  v19 = *&v17;
  v20.f64[0] = v37;
  v20.f64[1] = v36;
  *v21.i8 = vcvt_f32_f64(vmulq_n_f64(v20, v18));
  v38 = *v21.i8;
  v22 = vuzp2q_s32(v21, vzip1q_s32(v21, v21));
  __asm { FMOV            V3.4S, #1.0 }

  v43.columns[2] = vzip1q_s32(vzip2q_s32(v22, _Q3), v22);
  *&self->_anon_f0[32] = v43.columns[2];
  v44 = __invert_f3(v43);
  *self->_anon_120 = v44.columns[0].i64[0];
  *&self->_anon_120[8] = v44.columns[0].i32[2];
  *&self->_anon_120[16] = v44.columns[1].i64[0];
  *&self->_anon_120[24] = v44.columns[1].i32[2];
  *&self->_anon_120[32] = v44.columns[2].i64[0];
  *&self->_anon_120[40] = v44.columns[2].i32[2];
  *&buf[8] = 0uLL;
  img = self->super.img;
  *buf = v19;
  v40 = v19;
  v41 = vcvtq_f64_f32(v38);
  self->super.img = [(CIImage *)img imageByApplyingTransform:buf highQualityDownsample:1];
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::onceToken != -1)
  {
    [CIPerspectiveAutoCalcV2 standardizeImage];
  }

  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump == 1)
  {
    v29 = self->super.img;
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV2_%@.png", @"0_standardized"];
    CI::Perspective::CIImageToFile(v29, v30, v31, *MEMORY[0x1E695F050]);
  }

  v32 = ci_signpost_log_perspectiveAC();
  v33 = ci_signpost_log_perspectiveAC();
  v34 = os_signpost_id_make_with_pointer(v33, self);
  if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v35 = v34;
    if (os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v32, OS_SIGNPOST_INTERVAL_END, v35, "StandardizeImage", &unk_19CFBCBAE, buf, 2u);
    }
  }
}

- (void)createGradientMap
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_perspectiveAC();
  v4 = ci_signpost_log_perspectiveAC();
  v5 = os_signpost_id_make_with_pointer(v4, self);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v3))
    {
      gradMapW = self->gradMapW;
      gradMapH = self->gradMapH;
      *buf = 134218240;
      v46 = gradMapW;
      v47 = 2048;
      v48 = gradMapH;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v6, "CreateGradientMap", "gradMapSize: %lu x %lu", buf, 0x16u);
    }
  }

  [(CIImage *)self->super.img extent];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  self->gradMapW = v13;
  self->gradMapH = v15;
  v17 = [(CIImage *)self->super.img imageByApplyingFilter:@"CIColorControls" withInputParameters:&unk_1F10825C8];
  v18 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_lumaRange];
  v44[0] = self->super.img;
  v44[1] = &unk_1F1085418;
  v44[2] = &unk_1F1085428;
  v19 = -[CIColorKernel applyWithExtent:arguments:](v18, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3], v10, v12, v14, v16);
  v20 = [CIFilter filterWithName:@"CIBlendWithMask"];
  [(CIFilter *)v20 setValue:self->super.img forKey:@"inputImage"];
  [(CIFilter *)v20 setValue:v17 forKey:@"inputBackgroundImage"];
  [(CIFilter *)v20 setValue:v19 forKey:@"inputMaskImage"];
  v21 = [(CIFilter *)v20 outputImage];
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::onceToken != -1)
  {
    [CIPerspectiveAutoCalcV2 standardizeImage];
  }

  v22 = MEMORY[0x1E695F050];
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump == 1)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV2_%@.png", @"0_Enhanced"];
    CI::Perspective::CIImageToFile(v21, v23, v24, *v22);
  }

  v25 = [objc_msgSend(objc_msgSend(-[CI::Perspective imageByApplyingFilter:](v21 imageByApplyingFilter:{@"CILinearToSRGBToneCurve", "imageByClampingToExtent"), "imageByApplyingGaussianBlurWithSigma:", 1.4), "imageByCroppingToRect:", v10, v12, v14, v16}];
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::onceToken != -1)
  {
    [CIPerspectiveAutoCalcV2 standardizeImage];
  }

  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump == 1)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV2_%@.png", @"1_Preprocessed"];
    CI::Perspective::CIImageToFile(v25, v26, v27, *v22);
  }

  v28 = [(CI::Perspective *)v25 imageByApplyingFilter:@"CIGaborGradients"];
  self->gradMap = v28;
  [(CIImage *)v28 extent];
  v51 = CGRectInset(v50, 5.0, 5.0);
  v29 = [(CIImage *)v28 imageByCroppingToRect:v51.origin.x, v51.origin.y, v51.size.width, v51.size.height];
  self->gradMap = v29;
  v30 = [(CIImage *)v29 imageByCompositingOverImage:+[CIImage blackImage]];
  self->gradMap = v30;
  v31 = [(CIImage *)v30 imageByCroppingToRect:v10, v12, v14, v16];
  self->gradMap = v31;
  self->gradMap = [(CIImage *)v31 imageByInsertingIntermediate:1];
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::onceToken != -1)
  {
    [CIPerspectiveAutoCalcV2 standardizeImage];
  }

  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump == 1)
  {
    v33 = CI::Perspective::gradDirImage(self->gradMap, v32);
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV2_%@.png", @"2_GradMap_dir"];
    CI::Perspective::CIImageToFile(v33, v34, v35, *v22);
    v37 = CI::Perspective::gradMagImage(self->gradMap, v36);
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV2_%@.png", @"2_GradMap_mag"];
    CI::Perspective::CIImageToFile(v37, v38, v39, *v22);
  }

  v40 = ci_signpost_log_perspectiveAC();
  v41 = ci_signpost_log_perspectiveAC();
  v42 = os_signpost_id_make_with_pointer(v41, self);
  if (v42 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v43 = v42;
    if (os_signpost_enabled(v40))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v40, OS_SIGNPOST_INTERVAL_END, v43, "CreateGradientMap", &unk_19CFBCBAE, buf, 2u);
    }
  }
}

- (void)normalizeGradientMap
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_perspectiveAC();
  v4 = ci_signpost_log_perspectiveAC();
  v5 = os_signpost_id_make_with_pointer(v4, self);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v3))
    {
      gradMapW = self->gradMapW;
      gradMapH = self->gradMapH;
      *buf = 134218240;
      v38 = gradMapW;
      v39 = 2048;
      v40 = gradMapH;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v6, "NormalizeGradientMap", "gradMapSize: %lu x %lu", buf, 0x16u);
    }
  }

  [(CIImage *)self->gradMap extent];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = CI::Perspective::gradMagImage(self->gradMap, v17);
  v35 = @"inputExtent";
  [(CIImage *)v18 extent];
  v36 = [CIVector vectorWithCGRect:?];
  v19 = -[CIImage imageByApplyingFilter:withInputParameters:](v18, "imageByApplyingFilter:withInputParameters:", @"CIAreaMinMaxRed", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1]);
  v20 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_gradientNormalizeV2];
  v34[0] = self->gradMap;
  v34[1] = v19;
  self->gradMap = -[CIColorKernel applyWithExtent:arguments:](v20, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2], v10, v12, v14, v16);
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::onceToken != -1)
  {
    [CIPerspectiveAutoCalcV2 standardizeImage];
  }

  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump == 1)
  {
    v22 = CI::Perspective::gradDirImage(self->gradMap, v21);
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV2_%@.png", @"3_GradMapNormalized_dir"];
    v24 = MEMORY[0x1E695F050];
    CI::Perspective::CIImageToFile(v22, v23, v25, *MEMORY[0x1E695F050]);
    v27 = CI::Perspective::gradMagImage(self->gradMap, v26);
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV2_%@.png", @"3_GradMapNormalized_mag"];
    CI::Perspective::CIImageToFile(v27, v28, v29, *v24);
  }

  v30 = ci_signpost_log_perspectiveAC();
  v31 = ci_signpost_log_perspectiveAC();
  v32 = os_signpost_id_make_with_pointer(v31, self);
  if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v33 = v32;
    if (os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v30, OS_SIGNPOST_INTERVAL_END, v33, "NormalizeGradientMap", &unk_19CFBCBAE, buf, 2u);
    }
  }
}

- (void)thresholdGradientMap
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_perspectiveAC();
  v4 = ci_signpost_log_perspectiveAC();
  v5 = os_signpost_id_make_with_pointer(v4, self);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v3))
    {
      gradMapW = self->gradMapW;
      gradMapH = self->gradMapH;
      *buf = 134218240;
      v33 = gradMapW;
      v34 = 2048;
      v35 = gradMapH;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ThresholdGradientMap", "gradMapSize: %lu x %lu", buf, 0x16u);
    }
  }

  [(CIImage *)self->gradMap extent];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_gradientThresholdV2];
  v31[0] = self->gradMap;
  v31[1] = &unk_1F1085438;
  v31[2] = &unk_1F1085448;
  self->gradMap = -[CIColorKernel applyWithExtent:arguments:](v17, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3], v10, v12, v14, v16);
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::onceToken != -1)
  {
    [CIPerspectiveAutoCalcV2 standardizeImage];
  }

  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump == 1)
  {
    v19 = CI::Perspective::gradDirImage(self->gradMap, v18);
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV2_%@.png", @"4_GradMapThresholded_dir"];
    v21 = MEMORY[0x1E695F050];
    CI::Perspective::CIImageToFile(v19, v20, v22, *MEMORY[0x1E695F050]);
    v24 = CI::Perspective::gradMagImage(self->gradMap, v23);
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV2_%@.png", @"4_GradMapThresholded_mag"];
    CI::Perspective::CIImageToFile(v24, v25, v26, *v21);
  }

  v27 = ci_signpost_log_perspectiveAC();
  v28 = ci_signpost_log_perspectiveAC();
  v29 = os_signpost_id_make_with_pointer(v28, self);
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v30 = v29;
    if (os_signpost_enabled(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v27, OS_SIGNPOST_INTERVAL_END, v30, "ThresholdGradientMap", &unk_19CFBCBAE, buf, 2u);
    }
  }
}

- (void)extractLineSegments
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_perspectiveAC();
  v4 = ci_signpost_log_perspectiveAC();
  v5 = os_signpost_id_make_with_pointer(v4, self);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v3))
    {
      gradMapW = self->gradMapW;
      gradMapH = self->gradMapH;
      buf[0] = 134218240;
      *&buf[1] = gradMapW;
      v24 = 2048;
      v25 = gradMapH;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ExtractLineSegments", "gradMapSize: %lu x %lu", buf, 0x16u);
    }
  }

  v9 = ci_signpost_log_perspectiveAC();
  v10 = ci_signpost_log_perspectiveAC();
  v11 = os_signpost_id_make_with_pointer(v10, self);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v9))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v12, "GradientMapRender", &unk_19CFBCBAE, buf, 2u);
    }
  }

  v13 = (8 * self->gradMapW + 15) & 0xFFFFFFFFFFFFFFF0;
  self->gradMapRb = v13;
  v14 = malloc_type_malloc(self->gradMapH * v13, 0x100004000313F17uLL);
  *self->gradMapBmp = v14;
  [(CIContext *)self->super.ctx render:self->gradMap toBitmap:v14 rowBytes:self->gradMapRb bounds:2310 format:0 colorSpace:0.0, 0.0, self->gradMapW, self->gradMapH];
  v15 = ci_signpost_log_perspectiveAC();
  v16 = ci_signpost_log_perspectiveAC();
  v17 = os_signpost_id_make_with_pointer(v16, self);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v18 = v17;
    if (os_signpost_enabled(v15))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v15, OS_SIGNPOST_INTERVAL_END, v18, "GradientMapRender", &unk_19CFBCBAE, buf, 2u);
    }
  }

  v19 = ci_signpost_log_perspectiveAC();
  v20 = ci_signpost_log_perspectiveAC();
  v21 = os_signpost_id_make_with_pointer(v20, self);
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v22 = v21;
    if (os_signpost_enabled(v19))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v22, "EDLines", &unk_19CFBCBAE, buf, 2u);
    }
  }

  CI::Perspective::EDLines::Create();
}

- (void)clusterLineSegments
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = *a2;
  v6 = a2[1];
  v8 = ((v6 - *a2) >> 4) * ((v6 - *a2) >> 4);
  if (v8 >= 2)
  {
    if (v8 >= 0xCCCCCCCCCCCCCCELL)
    {
LABEL_96:
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    std::__split_buffer<[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis>::__split_buffer(&v102, v8 >> 1, 0, a3);
    v9 = *(a3 + 8) - *a3;
    v10 = *(&v102 + 1) - v9;
    memcpy((*(&v102 + 1) - v9), *a3, v9);
    v11 = *a3;
    *a3 = v10;
    v12 = *(a3 + 16);
    *(a3 + 8) = *v103;
    v103[0] = v11;
    v103[1] = v12;
    *&v102 = v11;
    *(&v102 + 1) = v11;
    if (v11)
    {
      operator delete(v11);
    }

    v7 = *a2;
    v6 = a2[1];
  }

  if (v6 != v7)
  {
    v13 = 0;
    do
    {
      if (v13)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = *a2;
          v17 = (*a2 + 16 * v13);
          v18 = (*a2 + v14);
          v99[0] = 0;
          v102 = *v17->f32;
          v100 = *v18;
          v19 = CI::Perspective::intersect(&v102, &v100, v99);
          v20 = v19;
          if (!v19 || (CI::Perspective::pointInBounds(v99, a1) & 1) == 0)
          {
            v21 = *v17;
            v22 = v17[1];
            if (vcgt_f32(v22, *v17).u8[0])
            {
              LODWORD(v23) = *v17->f32;
            }

            else
            {
              LODWORD(v23) = v17[1];
            }

            v24 = *(v16 + v14);
            v25 = *(v18 + 8);
            if (vcgt_f32(v25, v24).u8[0])
            {
              LODWORD(v26) = *(v16 + v14);
            }

            else
            {
              LODWORD(v26) = *(v18 + 1);
            }

            if (v23 >= v26)
            {
              v23 = v26;
            }

            if (vcgt_f32(v21, v22).u8[0])
            {
              LODWORD(v27) = *v17->f32;
            }

            else
            {
              LODWORD(v27) = v17[1];
            }

            if (vcgt_f32(v24, v25).u8[0])
            {
              LODWORD(v28) = *(v16 + v14);
            }

            else
            {
              LODWORD(v28) = *(v18 + 1);
            }

            if (v27 <= v28)
            {
              v27 = v28;
            }

            LODWORD(v29) = HIDWORD(*v17);
            v24.i32[0] = HIDWORD(*(v16 + v14));
            if (v24.f32[1] <= v25.f32[1])
            {
              LODWORD(v30) = HIDWORD(*(v18 + 1));
            }

            else
            {
              LODWORD(v30) = HIDWORD(*(v16 + v14));
            }

            if (v24.f32[1] >= v25.f32[1])
            {
              v24.i32[0] = HIDWORD(*(v18 + 1));
            }

            if (v21.f32[1] <= v22.f32[1])
            {
              LODWORD(v31) = HIDWORD(*&v17[1]);
            }

            else
            {
              LODWORD(v31) = HIDWORD(*v17);
            }

            if (v21.f32[1] >= v22.f32[1])
            {
              LODWORD(v29) = HIDWORD(*&v17[1]);
            }

            if (v31 <= v30)
            {
              v32 = v30;
            }

            else
            {
              v32 = v31;
            }

            if (v29 >= v24.f32[0])
            {
              v29 = v24.f32[0];
            }

            v33 = (v27 - v23) * (v32 - v29);
            v34 = v99[0];
            v35 = *(a3 + 8);
            v36 = *(a3 + 16);
            if (v35 >= v36)
            {
              v38 = 0xCCCCCCCCCCCCCCCDLL * ((v35 - *a3) >> 3);
              v39 = v38 + 1;
              if ((v38 + 1) > 0x666666666666666)
              {
                goto LABEL_96;
              }

              v40 = 0xCCCCCCCCCCCCCCCDLL * ((v36 - *a3) >> 3);
              if (2 * v40 > v39)
              {
                v39 = 2 * v40;
              }

              if (v40 >= 0x333333333333333)
              {
                v41 = 0x666666666666666;
              }

              else
              {
                v41 = v39;
              }

              std::__split_buffer<[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis>::__split_buffer(&v102, v41, v38, a3);
              v42 = v103[0];
              *v103[0] = v13;
              v42[1] = v15;
              v42[2].i8[0] = v20;
              v42[3] = v34;
              v42[4].f32[0] = v33;
              v103[0] = &v42[5];
              v43 = *(a3 + 8) - *a3;
              v44 = *(&v102 + 1) - v43;
              memcpy((*(&v102 + 1) - v43), *a3, v43);
              v45 = *a3;
              *a3 = v44;
              v46 = *(a3 + 16);
              v47 = v103[0];
              *(a3 + 8) = *v103;
              v103[0] = v45;
              v103[1] = v46;
              *&v102 = v45;
              *(&v102 + 1) = v45;
              if (v45)
              {
                v98 = v47;
                operator delete(v45);
                v47 = v98;
              }

              v37 = v47;
            }

            else
            {
              *v35 = v13;
              v35[1] = v15;
              v35[2].i8[0] = v20;
              v35[3] = v34;
              v37 = v35 + 5;
              v35[4].f32[0] = v33;
            }

            *(a3 + 8) = v37;
          }

          ++*&v15;
          v14 += 16;
        }

        while (v13 != *&v15);
        v7 = *a2;
        v6 = a2[1];
      }

      ++v13;
    }

    while (v13 < (v6 - v7) >> 4);
  }

  v48 = *a3;
  v49 = *(a3 + 8);
  if (0xCCCCCCCCCCCCCCCDLL * (&v49[-*a3] >> 3) > 0x28)
  {
    v50 = (v48 + 760);
    v51 = -20;
    do
    {
      std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,-[CIPerspectiveAutoCalcV1 clusterLineSegments]::$_0::operator() const(std::vector<CI::Perspective::Line> const&,unsigned long)::{lambda(-[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis const&,-[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis const&)#1} &,std::__wrap_iter<-[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis*>>(v48, 40, v50);
      v50 -= 10;
    }

    while (!__CFADD__(v51++, 1));
    v53 = (v48 + 1600);
    if (v48 + 1600 != v49)
    {
      v54 = v48 + 1600;
      do
      {
        if (*(v54 + 8) > *(v48 + 8))
        {
          v55 = *v54;
          v56 = *(v54 + 1);
          v57 = *(v54 + 4);
          v58 = *(v48 + 4);
          v59 = *(v48 + 1);
          *v54 = *v48;
          *(v54 + 1) = v59;
          *(v54 + 4) = v58;
          *(v48 + 4) = v57;
          *v48 = v55;
          *(v48 + 1) = v56;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,-[CIPerspectiveAutoCalcV1 clusterLineSegments]::$_0::operator() const(std::vector<CI::Perspective::Line> const&,unsigned long)::{lambda(-[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis const&,-[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis const&)#1} &,std::__wrap_iter<-[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis*>>(v48, 40, v48);
        }

        v54 += 40;
      }

      while (v54 != v49);
    }

    v60 = 40;
    do
    {
      v61 = 0;
      v102 = *v48;
      *v103 = *(v48 + 1);
      v104 = *(v48 + 4);
      v62 = v48;
      do
      {
        v63 = v62;
        v62 += 10 * v61 + 10;
        v64 = 2 * v61;
        v61 = (2 * v61) | 1;
        v65 = v64 + 2;
        if (v65 < v60 && v62[8] > v62[18])
        {
          v62 += 10;
          v61 = v65;
        }

        v66 = *v62;
        v67 = *(v62 + 1);
        *(v63 + 4) = *(v62 + 4);
        *v63 = v66;
        *(v63 + 1) = v67;
      }

      while (v61 <= ((v60 - 2) >> 1));
      v53 -= 10;
      if (v62 == v53)
      {
        v79 = v102;
        v80 = *v103;
        *(v62 + 4) = v104;
        *v62 = v79;
        *(v62 + 1) = v80;
      }

      else
      {
        v68 = *v53;
        v69 = *(v53 + 1);
        *(v62 + 4) = *(v53 + 4);
        *v62 = v68;
        *(v62 + 1) = v69;
        *v53 = v102;
        *(v53 + 1) = *v103;
        *(v53 + 4) = v104;
        v70 = v62 - v48 + 40;
        if (v70 >= 41)
        {
          v71 = (-2 - 0x3333333333333333 * (v70 >> 3)) >> 1;
          v72 = &v48[40 * v71];
          v73 = v62[8];
          if (*(v72 + 8) > v73)
          {
            v74 = *(v62 + 1);
            v100 = *v62;
            v101 = v74;
            v75 = *(v62 + 9);
            do
            {
              v76 = v62;
              v62 = v72;
              v77 = *v72;
              v78 = *(v72 + 1);
              *(v76 + 4) = *(v72 + 4);
              *v76 = v77;
              *(v76 + 1) = v78;
              if (!v71)
              {
                break;
              }

              v71 = (v71 - 1) >> 1;
              v72 = &v48[40 * v71];
            }

            while (*(v72 + 8) > v73);
            *v62 = v100;
            *(v62 + 1) = v101;
            v62[8] = v73;
            *(v62 + 9) = v75;
          }
        }
      }
    }

    while (v60-- > 2);
    v82 = *a3;
    v83 = *(a3 + 8);
    v84 = v83 - *a3;
    v85 = 0xCCCCCCCCCCCCCCCDLL * (v84 >> 3);
    if (v85 > 0x27)
    {
      if (v84 == 1600)
      {
        return;
      }

      v96 = v82 + 1600;
    }

    else
    {
      v86 = *(a3 + 16);
      if (0xCCCCCCCCCCCCCCCDLL * ((v86 - v83) >> 3) < 40 - v85)
      {
        v87 = 0xCCCCCCCCCCCCCCCDLL * ((v86 - v82) >> 3);
        v88 = 2 * v87;
        if (2 * v87 <= 0x28)
        {
          v88 = 40;
        }

        if (v87 >= 0x333333333333333)
        {
          v89 = 0x666666666666666;
        }

        else
        {
          v89 = v88;
        }

        std::__split_buffer<[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis>::__split_buffer(&v102, v89, v85, a3);
        v90 = v103[0];
        v91 = 1560 - v84 - (1560 - v84) % 0x28u + 40;
        bzero(v103[0], v91);
        v103[0] = &v90[v91];
        v92 = *(a3 + 8) - *a3;
        v93 = *(&v102 + 1) - v92;
        memcpy((*(&v102 + 1) - v92), *a3, v92);
        v94 = *a3;
        *a3 = v93;
        v95 = *(a3 + 16);
        *(a3 + 8) = *v103;
        v103[0] = v94;
        v103[1] = v95;
        *&v102 = v94;
        *(&v102 + 1) = v94;
        if (v94)
        {
          operator delete(v94);
        }

        return;
      }

      v97 = 1560 - v84 - (1560 - v84) % 0x28u + 40;
      bzero(*(a3 + 8), v97);
      v96 = (v83 + v97);
    }

    *(a3 + 8) = v96;
  }
}

- (void)setupCostFunction
{
  p_vClusterInliers = &self->vClusterInliers;
  std::vector<LineCostProxy>::reserve(&self->vClusterInliersProxies.__begin_, (self->vClusterInliers.__end_ - self->vClusterInliers.__begin_) >> 4);
  p_vClusterOutliers = &self->vClusterOutliers;
  std::vector<LineCostProxy>::reserve(&self->vClusterOutliersProxies.__begin_, (self->vClusterOutliers.__end_ - self->vClusterOutliers.__begin_) >> 4);
  p_hClusterInliers = &self->hClusterInliers;
  std::vector<LineCostProxy>::reserve(&self->hClusterInliersProxies.__begin_, (self->hClusterInliers.__end_ - self->hClusterInliers.__begin_) >> 4);
  p_hClusterOutliers = &self->hClusterOutliers;
  std::vector<LineCostProxy>::reserve(&self->hClusterOutliersProxies.__begin_, (self->hClusterOutliers.__end_ - self->hClusterOutliers.__begin_) >> 4);
  begin = p_vClusterInliers->__begin_;
  end = p_vClusterInliers->__end_;
  __asm { FMOV            V0.2D, #1.0 }

  v116 = _Q0;
  if (p_vClusterInliers->__begin_ != end)
  {
    anon_120 = self->_anon_120;
    do
    {
      v12 = 0;
      v13 = *self->_anon_c0;
      v14 = *&self->_anon_c0[16];
      v15 = *&self->_anon_c0[32];
      v16 = *anon_120;
      v17 = *&self->_anon_120[16];
      v18 = *&self->_anon_120[32];
      v117 = *anon_120;
      v118 = v17;
      v119 = v18;
      do
      {
        *(&v120 + v12) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*(&v117 + v12))), v14, *(&v117 + v12), 1), v15, *(&v117 + v12), 2);
        v12 += 16;
      }

      while (v12 != 48);
      v19 = 0;
      v21 = v120;
      v20 = v121;
      v22 = v122;
      v23 = *begin;
      v117 = v16;
      v118 = v17;
      v119 = v18;
      do
      {
        *(&v120 + v19) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*(&v117 + v19))), v14, *(&v117 + v19), 1), v15, *(&v117 + v19), 2);
        v19 += 16;
      }

      while (v19 != 48);
      v24 = vaddq_f32(v22, vmlaq_lane_f32(vmulq_n_f32(v21, v23.f32[0]), v20, v23, 1));
      v25 = vdiv_f32(*v24.i8, *&vdupq_laneq_s32(v24, 2));
      v26 = vaddq_f32(v122, vmlaq_lane_f32(vmulq_n_f32(v120, COERCE_FLOAT(*&begin[1])), v121, begin[1], 1));
      v108 = v25;
      v112 = vdiv_f32(*v26.i8, *&vdupq_laneq_s32(v26, 2));
      *v26.i8 = v25;
      v26.u64[1] = v112;
      v120 = v26;
      *v26.i8 = vsub_f32(v25, v112);
      v27.f64[0] = pow(sqrtf(vaddv_f32(vmul_f32(*v26.i8, *v26.i8))), 0.25);
      v28 = vmul_f32(vadd_f32(v108, v112), 0x3F0000003F000000);
      v28.f32[0] = sqrtf(vaddv_f32(vmul_f32(v28, v28)));
      v27.f64[1] = 1.0 / ((v28.f32[0] + 1.0) * (v28.f32[0] + 1.0));
      *v121.f32 = vcvt_f32_f64(vbslq_s8(vcgeq_f64(v27, v116), v116, v27));
      std::vector<LineCostProxy>::push_back[abi:nn200100](&self->vClusterInliersProxies, &v120);
      begin += 2;
    }

    while (begin != end);
  }

  v29 = p_vClusterOutliers->__begin_;
  v30 = self->vClusterOutliers.__end_;
  if (p_vClusterOutliers->__begin_ != v30)
  {
    v31 = self->_anon_120;
    do
    {
      v32 = 0;
      v33 = *self->_anon_c0;
      v34 = *&self->_anon_c0[16];
      v35 = *&self->_anon_c0[32];
      v36 = *v31;
      v37 = *&self->_anon_120[16];
      v38 = *&self->_anon_120[32];
      v117 = *v31;
      v118 = v37;
      v119 = v38;
      do
      {
        *(&v120 + v32) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(*(&v117 + v32))), v34, *(&v117 + v32), 1), v35, *(&v117 + v32), 2);
        v32 += 16;
      }

      while (v32 != 48);
      v39 = 0;
      v41 = v120;
      v40 = v121;
      v42 = v122;
      v43 = *v29;
      v117 = v36;
      v118 = v37;
      v119 = v38;
      do
      {
        *(&v120 + v39) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(*(&v117 + v39))), v34, *(&v117 + v39), 1), v35, *(&v117 + v39), 2);
        v39 += 16;
      }

      while (v39 != 48);
      v44 = vaddq_f32(v42, vmlaq_lane_f32(vmulq_n_f32(v41, v43.f32[0]), v40, v43, 1));
      v45 = vdiv_f32(*v44.i8, *&vdupq_laneq_s32(v44, 2));
      v46 = vaddq_f32(v122, vmlaq_lane_f32(vmulq_n_f32(v120, COERCE_FLOAT(*&v29[1])), v121, v29[1], 1));
      v109 = v45;
      v113 = vdiv_f32(*v46.i8, *&vdupq_laneq_s32(v46, 2));
      *v46.i8 = v45;
      v46.u64[1] = v113;
      v120 = v46;
      *v46.i8 = vsub_f32(v45, v113);
      v47.f64[0] = pow(sqrtf(vaddv_f32(vmul_f32(*v46.i8, *v46.i8))), 0.25);
      v48 = vmul_f32(vadd_f32(v109, v113), 0x3F0000003F000000);
      v48.f32[0] = sqrtf(vaddv_f32(vmul_f32(v48, v48)));
      v47.f64[1] = 1.0 / ((v48.f32[0] + 1.0) * (v48.f32[0] + 1.0));
      *v121.f32 = vcvt_f32_f64(vbslq_s8(vcgeq_f64(v47, v116), v116, v47));
      std::vector<LineCostProxy>::push_back[abi:nn200100](&self->vClusterOutliersProxies, &v120);
      v29 += 2;
    }

    while (v29 != v30);
  }

  v49 = p_hClusterInliers->__begin_;
  v50 = self->hClusterInliers.__end_;
  if (p_hClusterInliers->__begin_ != v50)
  {
    v51 = self->_anon_120;
    do
    {
      v52 = 0;
      v53 = *self->_anon_c0;
      v54 = *&self->_anon_c0[16];
      v55 = *&self->_anon_c0[32];
      v56 = *v51;
      v57 = *&self->_anon_120[16];
      v58 = *&self->_anon_120[32];
      v117 = *v51;
      v118 = v57;
      v119 = v58;
      do
      {
        *(&v120 + v52) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, COERCE_FLOAT(*(&v117 + v52))), v54, *(&v117 + v52), 1), v55, *(&v117 + v52), 2);
        v52 += 16;
      }

      while (v52 != 48);
      v59 = 0;
      v61 = v120;
      v60 = v121;
      v62 = v122;
      v63 = *v49;
      v117 = v56;
      v118 = v57;
      v119 = v58;
      do
      {
        *(&v120 + v59) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, COERCE_FLOAT(*(&v117 + v59))), v54, *(&v117 + v59), 1), v55, *(&v117 + v59), 2);
        v59 += 16;
      }

      while (v59 != 48);
      v64 = vaddq_f32(v62, vmlaq_lane_f32(vmulq_n_f32(v61, v63.f32[0]), v60, v63, 1));
      v65 = vdiv_f32(*v64.i8, *&vdupq_laneq_s32(v64, 2));
      v66 = vaddq_f32(v122, vmlaq_lane_f32(vmulq_n_f32(v120, COERCE_FLOAT(*&v49[1])), v121, v49[1], 1));
      v110 = v65;
      v114 = vdiv_f32(*v66.i8, *&vdupq_laneq_s32(v66, 2));
      *v66.i8 = v65;
      v66.u64[1] = v114;
      v120 = v66;
      *v66.i8 = vsub_f32(v65, v114);
      v67.f64[0] = pow(sqrtf(vaddv_f32(vmul_f32(*v66.i8, *v66.i8))), 0.25);
      v68 = vmul_f32(vadd_f32(v110, v114), 0x3F0000003F000000);
      v68.f32[0] = sqrtf(vaddv_f32(vmul_f32(v68, v68)));
      v67.f64[1] = 1.0 / ((v68.f32[0] + 1.0) * (v68.f32[0] + 1.0));
      *v121.f32 = vcvt_f32_f64(vbslq_s8(vcgeq_f64(v67, v116), v116, v67));
      std::vector<LineCostProxy>::push_back[abi:nn200100](&self->hClusterInliersProxies, &v120);
      v49 += 2;
    }

    while (v49 != v50);
  }

  v69 = p_hClusterOutliers->__begin_;
  v70 = self->hClusterOutliers.__end_;
  if (p_hClusterOutliers->__begin_ != v70)
  {
    v71 = self->_anon_120;
    do
    {
      v72 = 0;
      v73 = *self->_anon_c0;
      v74 = *&self->_anon_c0[16];
      v75 = *&self->_anon_c0[32];
      v76 = *v71;
      v77 = *&self->_anon_120[16];
      v78 = *&self->_anon_120[32];
      v117 = *v71;
      v118 = v77;
      v119 = v78;
      do
      {
        *(&v120 + v72) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, COERCE_FLOAT(*(&v117 + v72))), v74, *(&v117 + v72), 1), v75, *(&v117 + v72), 2);
        v72 += 16;
      }

      while (v72 != 48);
      v79 = 0;
      v81 = v120;
      v80 = v121;
      v82 = v122;
      v83 = *v69;
      v117 = v76;
      v118 = v77;
      v119 = v78;
      do
      {
        *(&v120 + v79) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, COERCE_FLOAT(*(&v117 + v79))), v74, *(&v117 + v79), 1), v75, *(&v117 + v79), 2);
        v79 += 16;
      }

      while (v79 != 48);
      v84 = vaddq_f32(v82, vmlaq_lane_f32(vmulq_n_f32(v81, v83.f32[0]), v80, v83, 1));
      v85 = vdiv_f32(*v84.i8, *&vdupq_laneq_s32(v84, 2));
      v86 = vaddq_f32(v122, vmlaq_lane_f32(vmulq_n_f32(v120, COERCE_FLOAT(*&v69[1])), v121, v69[1], 1));
      v111 = v85;
      v115 = vdiv_f32(*v86.i8, *&vdupq_laneq_s32(v86, 2));
      *v86.i8 = v85;
      v86.u64[1] = v115;
      v120 = v86;
      *v86.i8 = vsub_f32(v85, v115);
      v87.f64[0] = pow(sqrtf(vaddv_f32(vmul_f32(*v86.i8, *v86.i8))), 0.25);
      v88 = vmul_f32(vadd_f32(v111, v115), 0x3F0000003F000000);
      v88.f32[0] = sqrtf(vaddv_f32(vmul_f32(v88, v88)));
      v87.f64[1] = 1.0 / ((v88.f32[0] + 1.0) * (v88.f32[0] + 1.0));
      *v121.f32 = vcvt_f32_f64(vbslq_s8(vcgeq_f64(v87, v116), v116, v87));
      std::vector<LineCostProxy>::push_back[abi:nn200100](&self->hClusterOutliersProxies, &v120);
      v69 += 2;
    }

    while (v69 != v70);
  }

  v89 = 0;
  v90 = 0;
  do
  {
    v91 = 0;
    LODWORD(_Q0.f64[0]) = dword_19CF283F0[v89];
    do
    {
      v92 = 0;
      v93 = _Q0;
      HIDWORD(v93.f64[0]) = dword_19CF283F0[v91];
      do
      {
        v94 = v93;
        LODWORD(v94.f64[1]) = dword_19CF283F0[v92];
        *&self->initialSimplexVerticesXYZ[16 * v90++] = v94;
        ++v92;
      }

      while (v92 != 4);
      ++v91;
    }

    while (v91 != 4);
    ++v89;
  }

  while (v89 != 4);
  v95 = 0;
  v96 = 0;
  do
  {
    v97 = 0;
    v98 = dword_19CF283F0[v95];
    do
    {
      LODWORD(v99) = v98;
      HIDWORD(v99) = dword_19CF283F0[v97];
      *&self->initialSimplexVerticesXZ[8 * v96++] = v99;
      ++v97;
    }

    while (v97 != 4);
    ++v95;
  }

  while (v95 != 4);
  v100 = 0;
  v101 = 0;
  do
  {
    v102 = 0;
    v103 = dword_19CF283F0[v100];
    do
    {
      LODWORD(v104) = v103;
      HIDWORD(v104) = dword_19CF283F0[v102];
      *&self->initialSimplexVerticesYZ[8 * v101++] = v104;
      ++v102;
    }

    while (v102 != 4);
    ++v100;
  }

  while (v100 != 4);
}

- (float)evaluateCost:(CIPerspectiveAutoCalcV2 *)self
{
  *v4.f32 = CI::Perspective::getRotation(self, *&v2, *(&v2 + 1), *(&v2 + 2));
  begin = self->vClusterInliersProxies.__begin_;
  end = self->vClusterInliersProxies.__end_;
  v9 = 0.0;
  for (i = 0.0; begin != end; begin = (begin + 24))
  {
    v11 = vaddq_f32(v6, vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*begin)), v5, *begin, 1));
    v12 = vaddq_f32(v6, vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(begin + 1))), v5, *(begin + 8), 1));
    v13 = vsubq_f32(vdivq_f32(v12, vdupq_laneq_s32(v12, 2)), vdivq_f32(v11, vdupq_laneq_s32(v11, 2)));
    v14 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v13, v13)));
    *v12.f32 = vrsqrte_f32(v14);
    *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v14.u32[0], vmul_f32(*v12.f32, *v12.f32)));
    v15 = vaddv_f32(vmul_f32(vmul_n_f32(*v13.f32, vmul_f32(*v12.f32, vrsqrts_f32(v14.u32[0], vmul_f32(*v12.f32, *v12.f32))).f32[0]), 1065353216));
    if (v15 < 0.0)
    {
      v15 = -v15;
    }

    i = i + (*(begin + 5) * (*(begin + 4) * v15));
  }

  v16 = self->vClusterOutliersProxies.__begin_;
  v17 = self->vClusterOutliersProxies.__end_;
  if (v16 != v17)
  {
    v9 = 0.0;
    do
    {
      v18 = vaddq_f32(v6, vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*v16)), v5, *v16, 1));
      v19 = vaddq_f32(v6, vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(v16 + 1))), v5, *(v16 + 8), 1));
      v20 = vsubq_f32(vdivq_f32(v19, vdupq_laneq_s32(v19, 2)), vdivq_f32(v18, vdupq_laneq_s32(v18, 2)));
      v21 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v20, v20)));
      *v19.f32 = vrsqrte_f32(v21);
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v21.u32[0], vmul_f32(*v19.f32, *v19.f32)));
      v22 = vaddv_f32(vmul_f32(vmul_n_f32(*v20.f32, vmul_f32(*v19.f32, vrsqrts_f32(v21.u32[0], vmul_f32(*v19.f32, *v19.f32))).f32[0]), 1065353216));
      if (v22 < 0.0)
      {
        v22 = -v22;
      }

      v9 = v9 + (*(v16 + 5) * (*(v16 + 4) * v22));
      v16 = (v16 + 24);
    }

    while (v16 != v17);
  }

  v23 = self->hClusterInliersProxies.__begin_;
  v24 = self->hClusterInliersProxies.__end_;
  v25 = 0.0;
  for (j = 0.0; v23 != v24; v23 = (v23 + 24))
  {
    v27 = vaddq_f32(v6, vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*v23)), v5, *v23, 1));
    v28 = vaddq_f32(v6, vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(v23 + 1))), v5, *(v23 + 8), 1));
    v29 = vsubq_f32(vdivq_f32(v28, vdupq_laneq_s32(v28, 2)), vdivq_f32(v27, vdupq_laneq_s32(v27, 2)));
    v30 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v29, v29)));
    *v28.f32 = vrsqrte_f32(v30);
    *v28.f32 = vmul_f32(*v28.f32, vrsqrts_f32(v30.u32[0], vmul_f32(*v28.f32, *v28.f32)));
    v31 = vaddv_f32(vmul_f32(vmul_n_f32(*v29.f32, vmul_f32(*v28.f32, vrsqrts_f32(v30.u32[0], vmul_f32(*v28.f32, *v28.f32))).f32[0]), 0x3F80000000000000));
    if (v31 < 0.0)
    {
      v31 = -v31;
    }

    j = j + (*(v23 + 5) * (*(v23 + 4) * v31));
  }

  v32 = self->hClusterOutliersProxies.__begin_;
  v33 = self->hClusterOutliersProxies.__end_;
  if (v32 != v33)
  {
    v25 = 0.0;
    do
    {
      v34 = vaddq_f32(v6, vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*v32)), v5, *v32, 1));
      v35 = vaddq_f32(v6, vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(v32 + 1))), v5, *(v32 + 8), 1));
      v36 = vsubq_f32(vdivq_f32(v35, vdupq_laneq_s32(v35, 2)), vdivq_f32(v34, vdupq_laneq_s32(v34, 2)));
      v37 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v36, v36)));
      *v35.f32 = vrsqrte_f32(v37);
      *v35.f32 = vmul_f32(*v35.f32, vrsqrts_f32(v37.u32[0], vmul_f32(*v35.f32, *v35.f32)));
      v38 = vaddv_f32(vmul_f32(vmul_n_f32(*v36.f32, vmul_f32(*v35.f32, vrsqrts_f32(v37.u32[0], vmul_f32(*v35.f32, *v35.f32))).f32[0]), 0x3F80000000000000));
      if (v38 < 0.0)
      {
        v38 = -v38;
      }

      v25 = v25 + (*(v32 + 5) * (*(v32 + 4) * v38));
      v32 = (v32 + 24);
    }

    while (v32 != v33);
  }

  return (((v9 + (i * 1.5)) * 1.25) + ((v25 + (j * 1.5)) * 0.75)) * 0.5;
}

- (float)evaluateCostXZ:(CIPerspectiveAutoCalcV2 *)self
{
  v4 = 0.0;
  *v5.f32 = CI::Perspective::getRotation(self, *&v2, 0.0, *(&v2 + 1));
  begin = self->vClusterInliersProxies.__begin_;
  end = self->vClusterInliersProxies.__end_;
  for (i = 0.0; begin != end; begin = (begin + 24))
  {
    v11 = vaddq_f32(v7, vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*begin)), v6, *begin, 1));
    v12 = vaddq_f32(v7, vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*(begin + 1))), v6, *(begin + 8), 1));
    v13 = vsubq_f32(vdivq_f32(v12, vdupq_laneq_s32(v12, 2)), vdivq_f32(v11, vdupq_laneq_s32(v11, 2)));
    v14 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v13, v13)));
    *v12.f32 = vrsqrte_f32(v14);
    *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v14.u32[0], vmul_f32(*v12.f32, *v12.f32)));
    v15 = vaddv_f32(vmul_f32(vmul_n_f32(*v13.f32, vmul_f32(*v12.f32, vrsqrts_f32(v14.u32[0], vmul_f32(*v12.f32, *v12.f32))).f32[0]), 1065353216));
    if (v15 < 0.0)
    {
      v15 = -v15;
    }

    i = i + (*(begin + 5) * (*(begin + 4) * v15));
  }

  v16 = self->vClusterOutliersProxies.__begin_;
  v17 = self->vClusterOutliersProxies.__end_;
  if (v16 != v17)
  {
    v4 = 0.0;
    do
    {
      v18 = vaddq_f32(v7, vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*v16)), v6, *v16, 1));
      v19 = vaddq_f32(v7, vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*(v16 + 1))), v6, *(v16 + 8), 1));
      v20 = vsubq_f32(vdivq_f32(v19, vdupq_laneq_s32(v19, 2)), vdivq_f32(v18, vdupq_laneq_s32(v18, 2)));
      v21 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v20, v20)));
      *v19.f32 = vrsqrte_f32(v21);
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v21.u32[0], vmul_f32(*v19.f32, *v19.f32)));
      v22 = vaddv_f32(vmul_f32(vmul_n_f32(*v20.f32, vmul_f32(*v19.f32, vrsqrts_f32(v21.u32[0], vmul_f32(*v19.f32, *v19.f32))).f32[0]), 1065353216));
      if (v22 < 0.0)
      {
        v22 = -v22;
      }

      v4 = v4 + (*(v16 + 5) * (*(v16 + 4) * v22));
      v16 = (v16 + 24);
    }

    while (v16 != v17);
  }

  return v4 + (i * 1.5);
}

- (float)evaluateCostYZ:(CIPerspectiveAutoCalcV2 *)self
{
  v4 = 0.0;
  *v5.f32 = CI::Perspective::getRotation(self, 0.0, *&v2, *(&v2 + 1));
  begin = self->hClusterInliersProxies.__begin_;
  end = self->hClusterInliersProxies.__end_;
  for (i = 0.0; begin != end; begin = (begin + 24))
  {
    v11 = vaddq_f32(v7, vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*begin)), v6, *begin, 1));
    v12 = vaddq_f32(v7, vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*(begin + 1))), v6, *(begin + 8), 1));
    v13 = vsubq_f32(vdivq_f32(v12, vdupq_laneq_s32(v12, 2)), vdivq_f32(v11, vdupq_laneq_s32(v11, 2)));
    v14 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v13, v13)));
    *v12.f32 = vrsqrte_f32(v14);
    *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v14.u32[0], vmul_f32(*v12.f32, *v12.f32)));
    v15 = vaddv_f32(vmul_f32(vmul_n_f32(*v13.f32, vmul_f32(*v12.f32, vrsqrts_f32(v14.u32[0], vmul_f32(*v12.f32, *v12.f32))).f32[0]), 0x3F80000000000000));
    if (v15 < 0.0)
    {
      v15 = -v15;
    }

    i = i + (*(begin + 5) * (*(begin + 4) * v15));
  }

  v16 = self->hClusterOutliersProxies.__begin_;
  v17 = self->hClusterOutliersProxies.__end_;
  if (v16 != v17)
  {
    v4 = 0.0;
    do
    {
      v18 = vaddq_f32(v7, vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*v16)), v6, *v16, 1));
      v19 = vaddq_f32(v7, vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*(v16 + 1))), v6, *(v16 + 8), 1));
      v20 = vsubq_f32(vdivq_f32(v19, vdupq_laneq_s32(v19, 2)), vdivq_f32(v18, vdupq_laneq_s32(v18, 2)));
      v21 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v20, v20)));
      *v19.f32 = vrsqrte_f32(v21);
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v21.u32[0], vmul_f32(*v19.f32, *v19.f32)));
      v22 = vaddv_f32(vmul_f32(vmul_n_f32(*v20.f32, vmul_f32(*v19.f32, vrsqrts_f32(v21.u32[0], vmul_f32(*v19.f32, *v19.f32))).f32[0]), 0x3F80000000000000));
      if (v22 < 0.0)
      {
        v22 = -v22;
      }

      v4 = v4 + (*(v16 + 5) * (*(v16 + 4) * v22));
      v16 = (v16 + 24);
    }

    while (v16 != v17);
  }

  return v4 + (i * 2.0);
}

- (void)runOptimization
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_perspectiveAC();
  v4 = ci_signpost_log_perspectiveAC();
  v5 = os_signpost_id_make_with_pointer(v4, self);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v3))
    {
      v7 = (self->vClusterInliers.__end_ - self->vClusterInliers.__begin_) >> 4;
      v8 = (self->vClusterOutliers.__end_ - self->vClusterOutliers.__begin_) >> 4;
      v9 = (self->hClusterInliers.__end_ - self->hClusterInliers.__begin_) >> 4;
      v10 = (self->hClusterOutliers.__end_ - self->hClusterOutliers.__begin_) >> 4;
      *buf = 134218752;
      v69 = v7;
      v70 = 2048;
      v71 = v8;
      v72 = 2048;
      v73 = v9;
      v74 = 2048;
      *v75 = v10;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v6, "runOptimization", "vClusterInliers: %lu vClusterOutliers: %luhClusterInliers: %lu hClusterOutliers: %lu", buf, 0x2Au);
    }
  }

  self->solutionType = 0;
  p_solution = &self->solution;
  self->solution = xmmword_19CF28400;
  begin = self->vLines.__begin_;
  end = self->vLines.__end_;
  if (begin == end)
  {
    v18 = self->hLines.__begin_;
    v19 = self->hLines.__end_;
    v14 = 0.0;
    if (v18 == v19)
    {
      v31 = 0;
      v29 = INFINITY;
      v28 = 0.0;
      rX = 0.0;
      v24 = 0.0;
      v23 = 0.0;
      rZ = 0.0;
      v21 = INFINITY;
      v32 = INFINITY;
      *&v60 = 0;
      goto LABEL_24;
    }

LABEL_11:
    v23 = 0.0;
    do
    {
      v25 = *v18;
      v26 = *(v18 + 8);
      v18 = (v18 + 16);
      v27 = vsub_f32(v25, v26);
      v23 = v23 + sqrtf(vaddv_f32(vmul_f32(v27, v27)));
    }

    while (v18 != v19);
    v24 = v14 + v23;
    v22 = v23 > 500.0;
    if (v14 <= 500.0 || v23 <= 500.0)
    {
      if (v14 <= 500.0)
      {
        *&v60 = 0;
        v28 = 0.0;
        v29 = INFINITY;
        rX = 0.0;
        rZ = 0.0;
        v21 = INFINITY;
        v32 = INFINITY;
        v31 = 0;
        if (v23 <= 500.0)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }

      *&v60 = 0;
      rZ = 0.0;
      v21 = INFINITY;
    }

    else
    {
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __42__CIPerspectiveAutoCalcV2_runOptimization__block_invoke;
      v67[3] = &unk_1E75C3758;
      v67[4] = self;
      v64 = xmmword_19CF283D0;
      v65 = 981668463;
      v66 = 0;
      _ZN2CI11Perspective9NMSimplexIDv3_fEC2ENS0_8NMParamsEU13block_pointerFfRKS2_EPS5_m(buf, &v64, v67, self->initialSimplexVerticesXYZ, 0x40uLL);
      v60 = **&v75[6];
      LODWORD(rZ) = *(*&v75[6] + 8);
      v21 = *(*&v75[6] + 16);
      v76 = *&v75[6];
      operator delete(*&v75[6]);
      v22 = 1;
    }

LABEL_18:
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __42__CIPerspectiveAutoCalcV2_runOptimization__block_invoke_2;
    v63[3] = &unk_1E75C3758;
    v63[4] = self;
    v64 = xmmword_19CF283D0;
    v65 = 981668463;
    v66 = 0;
    _ZN2CI11Perspective9NMSimplexIDv2_fEC2ENS0_8NMParamsEU13block_pointerFfRKS2_EPS5_m(buf, &v64, v63, self->initialSimplexVerticesXZ, 0x10uLL);
    LODWORD(v61) = **&v75[6];
    LODWORD(v28) = HIDWORD(**&v75[6]);
    v29 = *(*&v75[6] + 8);
    v76 = *&v75[6];
    operator delete(*&v75[6]);
    if (!v22)
    {
      v31 = 0;
      v32 = INFINITY;
LABEL_23:
      rX = v61;
      goto LABEL_24;
    }

    rX = v61;
LABEL_22:
    v61 = rX;
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __42__CIPerspectiveAutoCalcV2_runOptimization__block_invoke_3;
    v62[3] = &unk_1E75C3758;
    v62[4] = self;
    v64 = xmmword_19CF283D0;
    v65 = 981668463;
    v66 = 0;
    _ZN2CI11Perspective9NMSimplexIDv2_fEC2ENS0_8NMParamsEU13block_pointerFfRKS2_EPS5_m(buf, &v64, v62, self->initialSimplexVerticesYZ, 0x10uLL);
    v59 = **&v75[6];
    v32 = *(*&v75[6] + 8);
    v76 = *&v75[6];
    operator delete(*&v75[6]);
    v31 = v59;
    goto LABEL_23;
  }

  v14 = 0.0;
  do
  {
    v15 = *begin;
    v16 = *(begin + 8);
    begin = (begin + 16);
    v17 = vsub_f32(v15, v16);
    v14 = v14 + sqrtf(vaddv_f32(vmul_f32(v17, v17)));
  }

  while (begin != end);
  v18 = self->hLines.__begin_;
  v19 = self->hLines.__end_;
  if (v18 != v19)
  {
    goto LABEL_11;
  }

  *&v60 = 0;
  rZ = 0.0;
  v21 = INFINITY;
  if (v14 > 500.0)
  {
    v22 = 0;
    v23 = 0.0;
    v24 = v14;
    goto LABEL_18;
  }

  v29 = INFINITY;
  v28 = 0.0;
  rX = 0.0;
  v24 = v14;
  v23 = 0.0;
  v32 = INFINITY;
  v31 = 0;
LABEL_24:
  v33 = (v21 / v24) * 0.5;
  v34 = (v29 / v14) * 0.75;
  v35 = v32 / v23;
  if (v33 > v34 || v33 > v35)
  {
    if (v34 > v33 || v34 > v35)
    {
      if (v35 > v33 || v35 > v34)
      {
        v39 = 0;
        rX = p_solution->rX;
        *&v31 = self->solution.rY;
        rZ = self->solution.rZ;
        v41 = 0.0;
        v40 = INFINITY;
        v42 = 0.0;
        v43 = 0.0;
      }

      else
      {
        self->solutionType = 3;
        p_solution->rX = 0.0;
        *&self->solution.rY = v31;
        self->solution.cost = v32;
        v45 = v33 > v34;
        if (v33 <= v34)
        {
          v39 = 1;
        }

        else
        {
          v39 = 2;
        }

        if (v33 <= v34)
        {
          v40 = v21;
        }

        else
        {
          v40 = v29;
        }

        if (v33 <= v34)
        {
          v41 = rZ;
        }

        else
        {
          v41 = v28;
        }

        v42 = *(&v60 + 1);
        if (v45)
        {
          v42 = 0.0;
          v43 = rX;
        }

        else
        {
          v43 = *&v60;
        }

        rZ = *(&v31 + 1);
        rX = 0.0;
      }
    }

    else
    {
      self->solutionType = 2;
      p_solution->rX = rX;
      self->solution.rY = 0.0;
      self->solution.rZ = v28;
      self->solution.cost = v29;
      v44 = v33 > v35;
      if (v33 <= v35)
      {
        v39 = 1;
      }

      else
      {
        v39 = 3;
      }

      if (v33 <= v35)
      {
        v40 = v21;
      }

      else
      {
        v40 = v32;
      }

      v41 = *(&v31 + 1);
      if (!v44)
      {
        v41 = rZ;
      }

      v42 = *(&v60 + 1);
      v43 = *&v60;
      if (v44)
      {
        v42 = *&v31;
      }

      LODWORD(v31) = 0;
      if (v44)
      {
        v43 = 0.0;
      }

      rZ = v28;
    }
  }

  else
  {
    self->solutionType = 1;
    *&p_solution->rX = v60;
    self->solution.rZ = rZ;
    self->solution.cost = v21;
    v39 = 2;
    v40 = v29;
    v41 = v28;
    v42 = 0.0;
    v43 = rX;
    LODWORD(v31) = DWORD1(v60);
    rX = *&v60;
  }

  v46 = rX;
  self->unlimitedPitch = rX;
  self->unlimitedYaw = *&v31;
  self->unlimitedRoll = rZ;
  v47 = -rX;
  if (rX >= 0.0)
  {
    v47 = rX;
  }

  v48 = v47;
  pitchLimit = self->super.config.pitchLimit;
  if (pitchLimit < v48)
  {
    goto LABEL_76;
  }

  v50 = -*&v31;
  if (*&v31 >= 0.0)
  {
    v50 = *&v31;
  }

  if (self->super.config.yawLimit < v50)
  {
    goto LABEL_76;
  }

  v51 = -rZ;
  if (rZ >= 0.0)
  {
    v51 = rZ;
  }

  if (self->super.config.rollLimit >= v51)
  {
    self->super.pitch = v46;
    self->super.yaw = *&v31;
    self->super.roll = rZ;
  }

  else
  {
LABEL_76:
    v52 = -v43;
    if (v43 >= 0.0)
    {
      v52 = v43;
    }

    if (pitchLimit < v52)
    {
      goto LABEL_85;
    }

    v53 = -v42;
    if (v42 >= 0.0)
    {
      v53 = v42;
    }

    if (self->super.config.yawLimit < v53)
    {
      goto LABEL_85;
    }

    v54 = -v41;
    if (v41 >= 0.0)
    {
      v54 = v41;
    }

    if (self->super.config.rollLimit >= v54)
    {
      self->solutionType = v39;
      p_solution->rX = v43;
      self->solution.rY = v42;
      self->solution.rZ = v41;
      self->solution.cost = v40;
      self->super.pitch = v43;
      self->super.yaw = v42;
      self->super.roll = v41;
    }

    else
    {
LABEL_85:
      self->super.pitchFailureReason = 1;
      self->super.yawFailureReason = 1;
    }
  }

  if (self->solution.cost == INFINITY)
  {
    self->super.pitchFailureReason = 2;
    self->super.yawFailureReason = 2;
  }

  else
  {
    v55 = ci_signpost_log_perspectiveAC();
    v56 = ci_signpost_log_perspectiveAC();
    v57 = os_signpost_id_make_with_pointer(v56, self);
    if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v58 = v57;
      if (os_signpost_enabled(v55))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v55, OS_SIGNPOST_INTERVAL_END, v58, "runOptimization", &unk_19CFBCBAE, buf, 2u);
      }
    }
  }
}

- (void)computeConfidence
{
  v3 = 0.0;
  if (self->solution.cost != INFINITY)
  {
    pitch = self->super.pitch;
    yaw = self->super.yaw;
    roll = self->super.roll;
    *v7.f32 = CI::Perspective::getRotation(self, pitch, yaw, roll);
    solutionType = self->solutionType;
    v11 = 0.0;
    if (solutionType > 1)
    {
      if (solutionType == 2)
      {
        begin = self->vClusterInliersProxies.__begin_;
        end = self->vClusterInliersProxies.__end_;
        for (i = 0.0; begin != end; begin = (begin + 24))
        {
          v69 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*begin)), v8, *begin, 1));
          v70 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*(begin + 1))), v8, *(begin + 8), 1));
          v71 = vsubq_f32(vdivq_f32(v70, vdupq_laneq_s32(v70, 2)), vdivq_f32(v69, vdupq_laneq_s32(v69, 2)));
          v72 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v71, v71)));
          *v70.f32 = vrsqrte_f32(v72);
          *v70.f32 = vmul_f32(*v70.f32, vrsqrts_f32(v72.u32[0], vmul_f32(*v70.f32, *v70.f32)));
          v73 = vaddv_f32(vmul_f32(vmul_n_f32(*v71.f32, vmul_f32(*v70.f32, vrsqrts_f32(v72.u32[0], vmul_f32(*v70.f32, *v70.f32))).f32[0]), 1065353216));
          if (v73 < 0.0)
          {
            v73 = -v73;
          }

          v74 = *(begin + 4);
          v75 = *(begin + 5);
          v11 = v11 + ((v75 * (v74 * v73)) * 2.0);
          i = i + (v74 * v75);
        }

        v76 = self->vClusterOutliersProxies.__begin_;
        for (j = self->vClusterOutliersProxies.__end_; v76 != j; v76 = (v76 + 24))
        {
          v78 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*v76)), v8, *v76, 1));
          v79 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*(v76 + 1))), v8, *(v76 + 8), 1));
          v80 = vsubq_f32(vdivq_f32(v79, vdupq_laneq_s32(v79, 2)), vdivq_f32(v78, vdupq_laneq_s32(v78, 2)));
          v81 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v80, v80)));
          *v79.f32 = vrsqrte_f32(v81);
          *v79.f32 = vmul_f32(*v79.f32, vrsqrts_f32(v81.u32[0], vmul_f32(*v79.f32, *v79.f32)));
          v82 = vaddv_f32(vmul_f32(vmul_n_f32(*v80.f32, vmul_f32(*v79.f32, vrsqrts_f32(v81.u32[0], vmul_f32(*v79.f32, *v79.f32))).f32[0]), 1065353216));
          if (v82 < 0.0)
          {
            v82 = -v82;
          }

          v83 = *(v76 + 4);
          v84 = *(v76 + 5);
          v11 = v11 + (v84 * (v83 * v82));
          i = i + (v83 * v84);
        }
      }

      else
      {
        i = 0.0;
        if (solutionType == 3)
        {
          v49 = self->hClusterInliersProxies.__begin_;
          for (k = self->hClusterInliersProxies.__end_; v49 != k; v49 = (v49 + 24))
          {
            v51 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*v49)), v8, *v49, 1));
            v52 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*(v49 + 1))), v8, *(v49 + 8), 1));
            v53 = vsubq_f32(vdivq_f32(v52, vdupq_laneq_s32(v52, 2)), vdivq_f32(v51, vdupq_laneq_s32(v51, 2)));
            v54 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v53, v53)));
            *v52.f32 = vrsqrte_f32(v54);
            *v52.f32 = vmul_f32(*v52.f32, vrsqrts_f32(v54.u32[0], vmul_f32(*v52.f32, *v52.f32)));
            v55 = vaddv_f32(vmul_f32(vmul_n_f32(*v53.f32, vmul_f32(*v52.f32, vrsqrts_f32(v54.u32[0], vmul_f32(*v52.f32, *v52.f32))).f32[0]), 0x3F80000000000000));
            if (v55 < 0.0)
            {
              v55 = -v55;
            }

            v56 = *(v49 + 4);
            v57 = *(v49 + 5);
            v11 = v11 + ((v57 * (v56 * v55)) * 2.0);
            i = i + (v56 * v57);
          }

          v58 = self->hClusterOutliersProxies.__begin_;
          for (m = self->hClusterOutliersProxies.__end_; v58 != m; v58 = (v58 + 24))
          {
            v60 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*v58)), v8, *v58, 1));
            v61 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*(v58 + 1))), v8, *(v58 + 8), 1));
            v62 = vsubq_f32(vdivq_f32(v61, vdupq_laneq_s32(v61, 2)), vdivq_f32(v60, vdupq_laneq_s32(v60, 2)));
            v63 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v62, v62)));
            *v61.f32 = vrsqrte_f32(v63);
            *v61.f32 = vmul_f32(*v61.f32, vrsqrts_f32(v63.u32[0], vmul_f32(*v61.f32, *v61.f32)));
            v64 = vaddv_f32(vmul_f32(vmul_n_f32(*v62.f32, vmul_f32(*v61.f32, vrsqrts_f32(v63.u32[0], vmul_f32(*v61.f32, *v61.f32))).f32[0]), 0x3F80000000000000));
            if (v64 < 0.0)
            {
              v64 = -v64;
            }

            v65 = *(v58 + 4);
            v66 = *(v58 + 5);
            v11 = v11 + (v66 * (v65 * v64));
            i = i + (v65 * v66);
          }
        }
      }

      goto LABEL_41;
    }

    if (solutionType)
    {
      i = 0.0;
      if (solutionType == 1)
      {
        v13 = self->vClusterInliersProxies.__begin_;
        for (n = self->vClusterInliersProxies.__end_; v13 != n; v13 = (v13 + 24))
        {
          v15 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*v13)), v8, *v13, 1));
          v16 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*(v13 + 1))), v8, *(v13 + 8), 1));
          v17 = vsubq_f32(vdivq_f32(v16, vdupq_laneq_s32(v16, 2)), vdivq_f32(v15, vdupq_laneq_s32(v15, 2)));
          v18 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v17, v17)));
          *v16.f32 = vrsqrte_f32(v18);
          *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v18.u32[0], vmul_f32(*v16.f32, *v16.f32)));
          v19 = vaddv_f32(vmul_f32(vmul_n_f32(*v17.f32, vmul_f32(*v16.f32, vrsqrts_f32(v18.u32[0], vmul_f32(*v16.f32, *v16.f32))).f32[0]), 1065353216));
          if (v19 < 0.0)
          {
            v19 = -v19;
          }

          v20 = *(v13 + 4);
          v21 = *(v13 + 5);
          v11 = v11 + ((v21 * (v20 * v19)) * 2.0);
          i = i + (v20 * v21);
        }

        v22 = self->vClusterOutliersProxies.__begin_;
        for (ii = self->vClusterOutliersProxies.__end_; v22 != ii; v22 = (v22 + 24))
        {
          v24 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*v22)), v8, *v22, 1));
          v25 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*(v22 + 1))), v8, *(v22 + 8), 1));
          v26 = vsubq_f32(vdivq_f32(v25, vdupq_laneq_s32(v25, 2)), vdivq_f32(v24, vdupq_laneq_s32(v24, 2)));
          v27 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v26, v26)));
          *v25.f32 = vrsqrte_f32(v27);
          *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(v27.u32[0], vmul_f32(*v25.f32, *v25.f32)));
          v28 = vaddv_f32(vmul_f32(vmul_n_f32(*v26.f32, vmul_f32(*v25.f32, vrsqrts_f32(v27.u32[0], vmul_f32(*v25.f32, *v25.f32))).f32[0]), 1065353216));
          if (v28 < 0.0)
          {
            v28 = -v28;
          }

          v29 = *(v22 + 4);
          v30 = *(v22 + 5);
          v11 = v11 + (v30 * (v29 * v28));
          i = i + (v29 * v30);
        }

        v31 = self->hClusterInliersProxies.__begin_;
        for (jj = self->hClusterInliersProxies.__end_; v31 != jj; v31 = (v31 + 24))
        {
          v33 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*v31)), v8, *v31, 1));
          v34 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*(v31 + 1))), v8, *(v31 + 8), 1));
          v35 = vsubq_f32(vdivq_f32(v34, vdupq_laneq_s32(v34, 2)), vdivq_f32(v33, vdupq_laneq_s32(v33, 2)));
          v36 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v35, v35)));
          *v34.f32 = vrsqrte_f32(v36);
          *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v36.u32[0], vmul_f32(*v34.f32, *v34.f32)));
          v37 = vaddv_f32(vmul_f32(vmul_n_f32(*v35.f32, vmul_f32(*v34.f32, vrsqrts_f32(v36.u32[0], vmul_f32(*v34.f32, *v34.f32))).f32[0]), 0x3F80000000000000));
          if (v37 < 0.0)
          {
            v37 = -v37;
          }

          v38 = *(v31 + 4);
          v39 = *(v31 + 5);
          v11 = v11 + ((v39 * (v38 * v37)) * 2.0);
          i = i + (v38 * v39);
        }

        v40 = self->hClusterOutliersProxies.__begin_;
        for (kk = self->hClusterOutliersProxies.__end_; v40 != kk; v40 = (v40 + 24))
        {
          v42 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*v40)), v8, *v40, 1));
          v43 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*(v40 + 1))), v8, *(v40 + 8), 1));
          v44 = vsubq_f32(vdivq_f32(v43, vdupq_laneq_s32(v43, 2)), vdivq_f32(v42, vdupq_laneq_s32(v42, 2)));
          v45 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v44, v44)));
          *v43.f32 = vrsqrte_f32(v45);
          *v43.f32 = vmul_f32(*v43.f32, vrsqrts_f32(v45.u32[0], vmul_f32(*v43.f32, *v43.f32)));
          v46 = vaddv_f32(vmul_f32(vmul_n_f32(*v44.f32, vmul_f32(*v43.f32, vrsqrts_f32(v45.u32[0], vmul_f32(*v43.f32, *v43.f32))).f32[0]), 0x3F80000000000000));
          if (v46 < 0.0)
          {
            v46 = -v46;
          }

          v47 = *(v40 + 4);
          v48 = *(v40 + 5);
          v11 = v11 + (v48 * (v47 * v46));
          i = i + (v47 * v48);
        }
      }

LABEL_41:
      v85 = fminf(fmaxf(((v11 / i) + -0.01) / 0.09, 0.0), 1.0);
      v3 = 1.0 - (v85 * -2.0 + 3.0) * (v85 * v85);
    }
  }

  self->super.confidence = v3;
}

- (id).cxx_construct
{
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 18) = 0u;
  *(self + 19) = 0u;
  *(self + 20) = 0u;
  *(self + 48) = 0;
  *(self + 49) = 0;
  *(self + 47) = 0;
  *(self + 51) = 0;
  *(self + 52) = 0;
  *(self + 50) = 0;
  *(self + 54) = 0;
  *(self + 55) = 0;
  *(self + 53) = 0;
  *(self + 57) = 0;
  *(self + 58) = 0;
  *(self + 56) = 0;
  *(self + 60) = 0;
  *(self + 61) = 0;
  *(self + 59) = 0;
  *(self + 63) = 0;
  *(self + 64) = 0;
  *(self + 62) = 0;
  *(self + 66) = 0;
  *(self + 67) = 0;
  *(self + 65) = 0;
  *(self + 69) = 0;
  *(self + 70) = 0;
  *(self + 68) = 0;
  *(self + 72) = 0;
  *(self + 73) = 0;
  *(self + 71) = 0;
  *(self + 75) = 0;
  *(self + 76) = 0;
  *(self + 74) = 0;
  return self;
}

@end