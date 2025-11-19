@interface CIPerspectiveAutoCalcV1
- (BOOL)compute;
- (CIPerspectiveAutoCalcV1)initWithContext:(id)a3 image:(id)a4 config:(id *)a5;
- (double)confidence;
- (id).cxx_construct;
- (void)clusterLineSegments;
- (void)computeGuides;
- (void)computeTransform;
- (void)createGradientMap;
- (void)dealloc;
- (void)extractLineSegments;
- (void)normalizeGradientMap;
- (void)rangeLimitGradientMap;
- (void)standardizeImage;
- (void)thresholdGradientMap;
@end

@implementation CIPerspectiveAutoCalcV1

- (CIPerspectiveAutoCalcV1)initWithContext:(id)a3 image:(id)a4 config:(id *)a5
{
  v26.receiver = self;
  v26.super_class = CIPerspectiveAutoCalcV1;
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
  v3.super_class = CIPerspectiveAutoCalcV1;
  [(CIPerspectiveAutoCalc *)&v3 dealloc];
}

- (BOOL)compute
{
  v29 = *MEMORY[0x1E69E9840];
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
      *buf = 67109376;
      *&buf[4] = v8;
      *&buf[8] = 1024;
      *&buf[10] = v9;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v6, "compute", "imageSize: %d x %d", buf, 0xEu);
    }
  }

  [(CIPerspectiveAutoCalcV1 *)self standardizeImage];
  [(CIPerspectiveAutoCalcV1 *)self createGradientMap];
  [(CIPerspectiveAutoCalcV1 *)self normalizeGradientMap];
  [(CIPerspectiveAutoCalcV1 *)self thresholdGradientMap];
  [(CIPerspectiveAutoCalcV1 *)self rangeLimitGradientMap];
  [(CIPerspectiveAutoCalcV1 *)self extractLineSegments];
  [(CIPerspectiveAutoCalcV1 *)self clusterLineSegments];
  [(CIPerspectiveAutoCalcV1 *)self computeGuides];
  [(CIPerspectiveAutoCalcV1 *)self computeTransform];
  v10 = ci_signpost_log_perspectiveAC();
  v11 = ci_signpost_log_perspectiveAC();
  v12 = os_signpost_id_make_with_pointer(v11, self);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v10, OS_SIGNPOST_INTERVAL_END, v13, "compute", &unk_19CFBCBAE, buf, 2u);
    }
  }

  if ([(CIPerspectiveAutoCalc *)self generateDebugImage])
  {
    img = self->super.img;
    self->super.debugImage = img;
    v15 = CGColorCreateSRGB(1.0, 0.0, 0.0, 1.0);
    v16 = CI::Perspective::plotLines<CI::Perspective::Line>(img, v15, &self->vLines);
    self->super.debugImage = v16;
    v17 = CGColorCreateSRGB(1.0, 0.0, 0.0, 1.0);
    v18 = CI::Perspective::plotLines<CI::Perspective::Line>(v16, v17, &self->hLines);
    self->super.debugImage = v18;
    if (self->vGuidesValid)
    {
      v19 = CGColorCreateSRGB(0.0, 1.0, 0.0, 1.0);
      self->super.debugImage = CI::Perspective::plotLines<CI::Perspective::Line>(v18, v19, &self->vLineCluster);
      v20 = CGColorCreateSRGB(0.0, 1.0, 1.0, 1.0);
      v21 = *&self->_anon_1f8[4];
      *buf = *&self->_anon_1e8[4];
      v28 = v21;
      operator new();
    }

    if (self->hGuidesValid)
    {
      debugImage = self->super.debugImage;
      v23 = CGColorCreateSRGB(0.0, 1.0, 0.0, 1.0);
      self->super.debugImage = CI::Perspective::plotLines<CI::Perspective::Line>(debugImage, v23, &self->hLineCluster);
      v24 = CGColorCreateSRGB(0.0, 1.0, 1.0, 1.0);
      v25 = *&self->_anon_218[4];
      *buf = *&self->_anon_208[4];
      v28 = v25;
      operator new();
    }
  }

  return 1;
}

- (double)confidence
{
  result = self->super.confidence;
  if (result < 0.0)
  {
    vGuidesAOE = self->vGuidesAOE;
    if (vGuidesAOE <= self->hGuidesAOE)
    {
      vGuidesAOE = self->hGuidesAOE;
    }

    result = (vGuidesAOE / (self->gradMapH * self->gradMapW));
    self->super.confidence = result;
  }

  return result;
}

- (void)standardizeImage
{
  [(CIImage *)self->super.img extent];
  if (v5 <= v6)
  {
    v5 = v6;
  }

  *&v7 = 1024.0 / v5;
  LODWORD(v8) = 0;
  v9 = v7;
  HIDWORD(v8) = v7;
  *self->_anon_f0 = v7;
  *&self->_anon_f0[16] = v8;
  v10 = *&v7;
  *&v3.f64[1] = v4.i64[0];
  *v4.i8 = vcvt_f32_f64(vmulq_n_f64(v3, -*&v7));
  v21 = *v4.i8;
  v11 = vuzp2q_s32(v4, vzip1q_s32(v4, v4));
  __asm { FMOV            V1.4S, #1.0 }

  v24.columns[2] = vzip1q_s32(vzip2q_s32(v11, _Q1), v11);
  *&self->_anon_f0[32] = v24.columns[2];
  v24.columns[0] = v9;
  v24.columns[1] = v8;
  v25 = __invert_f3(v24);
  *self->_anon_120 = v25.columns[0].i64[0];
  *&self->_anon_120[8] = v25.columns[0].i32[2];
  *&self->_anon_120[16] = v25.columns[1].i64[0];
  *&self->_anon_120[24] = v25.columns[1].i32[2];
  *&self->_anon_120[32] = v25.columns[2].i64[0];
  *&self->_anon_120[40] = v25.columns[2].i32[2];
  v22[1] = 0;
  v22[2] = 0;
  img = self->super.img;
  *v22 = v10;
  *&v22[3] = v10;
  v23 = vcvtq_f64_f32(v21);
  self->super.img = [(CIImage *)img imageByApplyingTransform:v22 highQualityDownsample:1];
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::onceToken != -1)
  {
    [CIPerspectiveAutoCalcV1 standardizeImage];
  }

  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump == 1)
  {
    v18 = self->super.img;
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV1_%@.png", @"0_standardized"];
    CI::Perspective::CIImageToFile(v18, v19, v20, *MEMORY[0x1E695F050]);
  }
}

- (void)createGradientMap
{
  [(CIImage *)self->super.img extent];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  self->gradMapW = v7;
  self->gradMapH = v9;
  v11 = [[[(CIImage *)self->super.img imageByClampingToExtent] imageByApplyingGaussianBlurWithSigma:1.2] imageByCroppingToRect:v3, v5, v7, v9];
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::onceToken != -1)
  {
    [CIPerspectiveAutoCalcV1 createGradientMap];
  }

  v12 = MEMORY[0x1E695F050];
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump == 1)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV1_%@.png", @"1_Preprocessed"];
    CI::Perspective::CIImageToFile(v11, v13, v14, *v12);
  }

  v15 = [(CIImage *)v11 imageByApplyingFilter:@"CIGaborGradients"];
  self->gradMap = v15;
  [(CIImage *)v15 extent];
  v32 = CGRectInset(v31, 5.0, 5.0);
  v16 = [(CIImage *)v15 imageByCroppingToRect:v32.origin.x, v32.origin.y, v32.size.width, v32.size.height];
  self->gradMap = v16;
  v17 = [(CIImage *)v16 imageByCompositingOverImage:+[CIImage blackImage]];
  self->gradMap = v17;
  self->gradMap = [(CIImage *)v17 imageByCroppingToRect:v4, v6, v8, v10];
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::onceToken != -1)
  {
    [CIPerspectiveAutoCalcV1 createGradientMap];
  }

  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump == 1)
  {
    v19 = CI::Perspective::gradDirImage(self->gradMap, v18);
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV1_%@.png", @"2_GradMap_dir"];
    CI::Perspective::CIImageToFile(v19, v20, v21, *v12);
    v23 = CI::Perspective::gradMagImage(self->gradMap, v22);
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV1_%@.png", @"2_GradMap_mag"];
    x = v12->origin.x;
    y = v12->origin.y;
    width = v12->size.width;
    height = v12->size.height;

    CI::Perspective::CIImageToFile(v23, v24, v25, *&x);
  }
}

- (void)normalizeGradientMap
{
  v26[1] = *MEMORY[0x1E69E9840];
  [(CIImage *)self->gradMap extent];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = CI::Perspective::gradMagImage(self->gradMap, v11);
  v25 = @"inputExtent";
  [(CIImage *)v12 extent];
  v26[0] = [CIVector vectorWithCGRect:?];
  v23 = 0.0;
  -[CIContext render:toBitmap:rowBytes:bounds:format:colorSpace:](self->super.ctx, "render:toBitmap:rowBytes:bounds:format:colorSpace:", -[CIImage imageByApplyingFilter:withInputParameters:](v12, "imageByApplyingFilter:withInputParameters:", @"CIAreaMaximum", [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1]), &v23, 4, 2309, -[CIContext workingColorSpace](self->super.ctx, "workingColorSpace"), 0.0, 0.0, 1.0, 1.0);
  fprintf(*MEMORY[0x1E69E9848], "maxGradientMagnitude: %f\n", v23);
  v13 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_gradientNormalizeV1];
  v24[0] = self->gradMap;
  v24[1] = [MEMORY[0x1E696AD98] numberWithDouble:1.0 / v23];
  self->gradMap = -[CIColorKernel applyWithExtent:arguments:](v13, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2], v4, v6, v8, v10);
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::onceToken != -1)
  {
    [CIPerspectiveAutoCalcV1 standardizeImage];
  }

  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump == 1)
  {
    v15 = CI::Perspective::gradDirImage(self->gradMap, v14);
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV1_%@.png", @"3_GradMapNormalized_dir"];
    v17 = MEMORY[0x1E695F050];
    CI::Perspective::CIImageToFile(v15, v16, v18, *MEMORY[0x1E695F050]);
    v20 = CI::Perspective::gradMagImage(self->gradMap, v19);
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV1_%@.png", @"3_GradMapNormalized_mag"];
    CI::Perspective::CIImageToFile(v20, v21, v22, *v17);
  }
}

- (void)thresholdGradientMap
{
  v21[3] = *MEMORY[0x1E69E9840];
  [(CIImage *)self->gradMap extent];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_gradientThresholdV1];
  v21[0] = self->gradMap;
  v21[1] = &unk_1F10853F8;
  v21[2] = &unk_1F1085408;
  self->gradMap = -[CIColorKernel applyWithExtent:arguments:](v11, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3], v4, v6, v8, v10);
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::onceToken != -1)
  {
    [CIPerspectiveAutoCalcV1 standardizeImage];
  }

  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump == 1)
  {
    v13 = CI::Perspective::gradDirImage(self->gradMap, v12);
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV1_%@.png", @"4_GradMapThresholded_dir"];
    v15 = MEMORY[0x1E695F050];
    CI::Perspective::CIImageToFile(v13, v14, v16, *MEMORY[0x1E695F050]);
    v18 = CI::Perspective::gradMagImage(self->gradMap, v17);
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV1_%@.png", @"4_GradMapThresholded_mag"];
    CI::Perspective::CIImageToFile(v18, v19, v20, *v15);
  }
}

- (void)rangeLimitGradientMap
{
  v27[5] = *MEMORY[0x1E69E9840];
  v3 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_gradientRangeLimit];
  lineSearchRangeH = self->super.config.lineSearchRangeH;
  v5 = tan(lineSearchRangeH + -0.0523598776);
  v6 = tan(lineSearchRangeH + 0.0523598776);
  lineSearchRangeV = self->super.config.lineSearchRangeV;
  v8 = tan(lineSearchRangeV + -0.0523598776);
  v9 = tan(lineSearchRangeV + 0.0523598776);
  [(CIImage *)self->gradMap extent];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v27[0] = self->gradMap;
  v27[1] = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v27[2] = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  v27[3] = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v27[4] = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  self->gradMap = -[CIColorKernel applyWithExtent:arguments:](v3, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:5], v11, v13, v15, v17);
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::onceToken != -1)
  {
    [CIPerspectiveAutoCalcV1 standardizeImage];
  }

  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump == 1)
  {
    v19 = CI::Perspective::gradDirImage(self->gradMap, v18);
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV1_%@.png", @"5_GradMapRangeLimited_dir"];
    v21 = MEMORY[0x1E695F050];
    CI::Perspective::CIImageToFile(v19, v20, v22, *MEMORY[0x1E695F050]);
    v24 = CI::Perspective::gradMagImage(self->gradMap, v23);
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV1_%@.png", @"5_GradMapRangeLimited_mag"];
    CI::Perspective::CIImageToFile(v24, v25, v26, *v21);
  }
}

- (void)extractLineSegments
{
  v27 = *MEMORY[0x1E69E9840];
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
      v24 = gradMapW;
      v25 = 2048;
      v26 = gradMapH;
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
      *buf = 0;
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
      *buf = 0;
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
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v22, "EDLines", &unk_19CFBCBAE, buf, 2u);
    }
  }

  CI::Perspective::EDLines::Create();
}

- (void)clusterLineSegments
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (a2 < 0x666666666666667)
    {
      operator new();
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  *result = 0;
  result[1] = 40 * a3;
  result[2] = 40 * a3;
  result[3] = 0;
  return result;
}

- (void)computeGuides
{
  v98 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_perspectiveAC();
  v4 = ci_signpost_log_perspectiveAC();
  v5 = os_signpost_id_make_with_pointer(v4, self);
  if (v5 - 1 < 0xFFFFFFFFFFFFFFFELL)
  {
    v7 = v5;
    if (os_signpost_enabled(v3))
    {
      v8 = (self->vLineCluster.__end_ - self->vLineCluster.__begin_) >> 4;
      v9 = (self->hLineCluster.__end_ - self->hLineCluster.__begin_) >> 4;
      *buf = 134218240;
      *&buf[4] = v8;
      *&buf[12] = 2048;
      *&buf[14] = v9;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v7, "computeGuides", "vLineClusterSize: %lu hLineClusterSize: %lu", buf, 0x16u);
    }
  }

  self->vGuidesValid = 1;
  self->hGuidesValid = 1;
  self->yawCorrectionAreaCoverage = 0.0;
  LODWORD(self->minimumPitchCorrectionAreaCoverage) = 0;
  begin = self->vLineCluster.__begin_;
  end = self->vLineCluster.__end_;
  if ((end - begin) <= 0x10)
  {
    self->super.pitchFailureReason = 2;
    self->vGuidesValid = 0;
  }

  p_hLineCluster = &self->hLineCluster;
  if ((self->hLineCluster.__end_ - self->hLineCluster.__begin_) <= 0x10)
  {
    self->super.yawFailureReason = 2;
    self->hGuidesValid = 0;
  }

  gradMapH = self->gradMapH;
  if (self->vGuidesValid && begin != end)
  {
    v15 = -vcvts_n_f32_u64(self->gradMapW, 1uLL);
    v16 = -INFINITY;
    v17 = INFINITY;
    do
    {
      v18 = *(begin + 8);
      v19 = vsub_f32(v18, *begin);
      v18.f32[0] = v15 + vadd_f32(v18, *begin).f32[0] * 0.5;
      v20 = sqrtf(vaddv_f32(vmul_f32(v19, v19))) * v18.f32[0];
      if (v20 < v17)
      {
        *&self->_anon_1e8[4] = *begin;
        v17 = v20;
      }

      if (v20 > v16)
      {
        *&self->_anon_1f8[4] = *begin;
        v16 = v20;
      }

      begin = (begin + 16);
    }

    while (begin != end);
  }

  if (self->hGuidesValid)
  {
    v21 = *p_hLineCluster;
    v22 = self->hLineCluster.__end_;
    if (*p_hLineCluster != v22)
    {
      v23 = -vcvts_n_f32_u64(gradMapH, 1uLL);
      v24 = -INFINITY;
      v25 = INFINITY;
      do
      {
        v26 = v21[1];
        v27 = vsub_f32(v26, *v21);
        v26.f32[0] = v23 + COERCE_FLOAT(vadd_f32(v26, *v21).i32[1]) * 0.5;
        v28 = sqrtf(vaddv_f32(vmul_f32(v27, v27))) * v26.f32[0];
        if (v28 < v25)
        {
          *&self->_anon_208[4] = *v21;
          v25 = v28;
        }

        if (v28 > v24)
        {
          *&self->_anon_218[4] = *v21;
          v24 = v28;
        }

        v21 += 2;
      }

      while (v21 != v22);
    }
  }

  gradMapW = self->gradMapW;
  v30 = self->gradMapH;
  v31.i64[0] = 0;
  *&v31.i32[2] = gradMapW;
  *&v31.i32[3] = v30;
  v32 = (v30 * gradMapW);
  v95 = v31;
  if (self->vGuidesValid)
  {
    v33 = *&self->_anon_1e8[4];
    v34 = vsub_f32(*&self->_anon_1e8[12], *&v33);
    v35 = vmul_f32(v34, v34);
    v35.i32[0] = vadd_f32(v35, vdup_lane_s32(v35, 1)).u32[0];
    v36 = vrsqrte_f32(v35.u32[0]);
    v37 = vmul_f32(v36, vrsqrts_f32(v35.u32[0], vmul_f32(v36, v36)));
    v38 = vmul_n_f32(v34, vmul_f32(v37, vrsqrts_f32(v35.u32[0], vmul_f32(v37, v37))).f32[0]);
    *buf = 0;
    v96[0] = 0.0;
    CI::Perspective::intersect(buf, v96, v33, *&v38, v31);
    LODWORD(v39) = *buf;
    v92 = v39;
    v93 = v96[0];
    v40 = *&self->_anon_1f8[4];
    v41 = vsub_f32(*&self->_anon_1f8[12], *&v40);
    v42 = vmul_f32(v41, v41);
    v42.i32[0] = vadd_f32(v42, vdup_lane_s32(v42, 1)).u32[0];
    v43 = vrsqrte_f32(v42.u32[0]);
    v44 = vmul_f32(v43, vrsqrts_f32(v42.u32[0], vmul_f32(v43, v43)));
    v45 = vmul_n_f32(v41, vmul_f32(v44, vrsqrts_f32(v42.u32[0], vmul_f32(v44, v44))).f32[0]);
    *buf = 0;
    v96[0] = 0.0;
    CI::Perspective::intersect(buf, v96, v40, *&v45, v95);
    v46 = vmla_n_f32(*&v33, v38, *&v92);
    v47 = vmla_n_f32(*&v33, v38, v93);
    v48 = vmla_n_f32(*&v40, v45, *buf);
    v49 = vmla_n_f32(*&v40, v45, v96[0]);
    v50 = vbsl_s8(vcgt_f32(v46, v47), v46, v47);
    v51 = vbsl_s8(vcgt_f32(v48, v49), v48, v49);
    v52 = vbsl_s8(vcgt_f32(v47, v46), v46, v47);
    v53 = vbsl_s8(vcgt_f32(v49, v48), v48, v49);
    v54 = vsub_f32(vbsl_s8(vcgt_f32(v50, v51), v50, v51), vbsl_s8(vcgt_f32(v53, v52), v52, v53));
    v54.f32[0] = vmul_lane_f32(v54, v54, 1).f32[0];
    LODWORD(self->vGuidesAOE) = v54.i32[0];
    v54.f32[0] = v54.f32[0] / v32;
    v55 = self->minimumYawCorrectionAreaCoverage < v54.f32[0];
    self->vGuidesValid = v55;
    LODWORD(self->yawCorrectionAreaCoverage) = v54.i32[0];
    v31 = v95;
    if (!v55)
    {
      self->super.pitchFailureReason = 3;
    }
  }

  if (self->hGuidesValid)
  {
    v56 = *&self->_anon_208[4];
    v57 = vsub_f32(*&self->_anon_208[12], *&v56);
    v58 = vmul_f32(v57, v57);
    v58.i32[0] = vadd_f32(v58, vdup_lane_s32(v58, 1)).u32[0];
    v59 = vrsqrte_f32(v58.u32[0]);
    v60 = vmul_f32(v59, vrsqrts_f32(v58.u32[0], vmul_f32(v59, v59)));
    v61 = vmul_n_f32(v57, vmul_f32(v60, vrsqrts_f32(v58.u32[0], vmul_f32(v60, v60))).f32[0]);
    *buf = 0;
    v96[0] = 0.0;
    CI::Perspective::intersect(buf, v96, v56, *&v61, v31);
    LODWORD(v62) = *buf;
    v92 = v62;
    v94 = v96[0];
    v63 = *&self->_anon_218[4];
    v64 = vsub_f32(*&self->_anon_218[12], *&v63);
    v65 = vmul_f32(v64, v64);
    v65.i32[0] = vadd_f32(v65, vdup_lane_s32(v65, 1)).u32[0];
    v66 = vrsqrte_f32(v65.u32[0]);
    v67 = vmul_f32(v66, vrsqrts_f32(v65.u32[0], vmul_f32(v66, v66)));
    v68 = vmul_n_f32(v64, vmul_f32(v67, vrsqrts_f32(v65.u32[0], vmul_f32(v67, v67))).f32[0]);
    *buf = 0;
    v96[0] = 0.0;
    CI::Perspective::intersect(buf, v96, v63, *&v68, v95);
    v69 = vmla_n_f32(*&v56, v61, *&v92);
    v70 = vmla_n_f32(*&v56, v61, v94);
    v71 = vmla_n_f32(*&v63, v68, *buf);
    v72 = vmla_n_f32(*&v63, v68, v96[0]);
    v73 = vbsl_s8(vcgt_f32(v69, v70), v69, v70);
    v74 = vbsl_s8(vcgt_f32(v71, v72), v71, v72);
    v75 = vbsl_s8(vcgt_f32(v70, v69), v69, v70);
    v76 = vbsl_s8(vcgt_f32(v72, v71), v71, v72);
    v77 = vsub_f32(vbsl_s8(vcgt_f32(v73, v74), v73, v74), vbsl_s8(vcgt_f32(v76, v75), v75, v76));
    v77.f32[0] = vmul_lane_f32(v77, v77, 1).f32[0];
    LODWORD(self->hGuidesAOE) = v77.i32[0];
    v77.f32[0] = v77.f32[0] / v32;
    isa = self[1].super.super.isa;
    self->hGuidesValid = *&isa < v77.f32[0];
    LODWORD(self->minimumPitchCorrectionAreaCoverage) = v77.i32[0];
    if (*&isa >= v77.f32[0])
    {
      self->super.yawFailureReason = 3;
    }
  }

  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::onceToken != -1)
  {
    [CIPerspectiveAutoCalcV1 standardizeImage];
  }

  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump == 1)
  {
    v79 = CI::Perspective::gradMagImage(self->gradMap, v6);
    if (self->vGuidesValid)
    {
      v80 = CGColorCreateSRGB(0.0, 1.0, 0.0, 1.0);
      CI::Perspective::plotLines<CI::Perspective::Line>(v79, v80, &self->vLineCluster);
      v81 = CGColorCreateSRGB(0.0, 1.0, 1.0, 1.0);
      v82 = *&self->_anon_1f8[4];
      *buf = *&self->_anon_1e8[4];
      *&buf[16] = v82;
      operator new();
    }

    if (self->hGuidesValid)
    {
      v83 = CGColorCreateSRGB(0.0, 1.0, 0.0, 1.0);
      CI::Perspective::plotLines<CI::Perspective::Line>(v79, v83, p_hLineCluster);
      v84 = CGColorCreateSRGB(0.0, 1.0, 1.0, 1.0);
      v85 = *&self->_anon_218[4];
      *buf = *&self->_anon_208[4];
      *&buf[16] = v85;
      operator new();
    }

    v86 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/guides.png", v92];
    CI::Perspective::CIImageToFile(v79, v86, v87, *MEMORY[0x1E695F050]);
  }

  v88 = ci_signpost_log_perspectiveAC();
  v89 = ci_signpost_log_perspectiveAC();
  v90 = os_signpost_id_make_with_pointer(v89, self);
  if (v90 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v91 = v90;
    if (os_signpost_enabled(v88))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v88, OS_SIGNPOST_INTERVAL_END, v91, "computeGuides", &unk_19CFBCBAE, buf, 2u);
    }
  }
}

- (void)computeTransform
{
  if (self->vGuidesValid)
  {
    v3 = 0;
    v4 = *self->_anon_c0;
    v5 = *&self->_anon_c0[16];
    v6 = *&self->_anon_c0[32];
    v7 = *self->_anon_120;
    v8 = *&self->_anon_120[16];
    v9 = *&self->_anon_120[32];
    v139 = v7;
    v140 = v8;
    v141 = v9;
    do
    {
      *(&v142 + v3) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(&v139 + v3))), v5, *(&v139 + v3), 1), v6, *(&v139 + v3), 2);
      v3 += 16;
    }

    while (v3 != 48);
    v10 = 0;
    v11 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1e8[4])), v143, *&self->_anon_1e8[4], 1));
    *&v12 = vdivq_f32(v11, vdupq_laneq_s32(v11, 2)).u64[0];
    v139 = v7;
    v140 = v8;
    v141 = v9;
    do
    {
      *(&v142 + v10) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(&v139 + v10))), v5, *(&v139 + v10), 1), v6, *(&v139 + v10), 2);
      v10 += 16;
    }

    while (v10 != 48);
    v13 = 0;
    v14 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1e8[12])), v143, *&self->_anon_1e8[12], 1));
    *&v15 = vdivq_f32(v14, vdupq_laneq_s32(v14, 2)).u64[0];
    v139 = v7;
    v140 = v8;
    v141 = v9;
    do
    {
      *(&v142 + v13) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(&v139 + v13))), v5, *(&v139 + v13), 1), v6, *(&v139 + v13), 2);
      v13 += 16;
    }

    while (v13 != 48);
    v16 = 0;
    v17 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1f8[4])), v143, *&self->_anon_1f8[4], 1));
    *&v18 = vdivq_f32(v17, vdupq_laneq_s32(v17, 2)).u64[0];
    v139 = v7;
    v140 = v8;
    v141 = v9;
    do
    {
      *(&v142 + v16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(&v139 + v16))), v5, *(&v139 + v16), 1), v6, *(&v139 + v16), 2);
      v16 += 16;
    }

    while (v16 != 48);
    v19 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1f8[12])), v143, *&self->_anon_1f8[12], 1));
    self->rY = CI::Perspective::keystoneV(v12, v15, v18, COERCE_DOUBLE(vdiv_f32(*v19.i8, *&vdupq_laneq_s32(v19, 2))));
  }

  if (self->hGuidesValid)
  {
    v20 = 0;
    v21 = *self->_anon_c0;
    v22 = *&self->_anon_c0[16];
    v23 = *&self->_anon_c0[32];
    v24 = *self->_anon_120;
    v25 = *&self->_anon_120[16];
    v26 = *&self->_anon_120[32];
    v139 = v24;
    v140 = v25;
    v141 = v26;
    do
    {
      *(&v142 + v20) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v139 + v20))), v22, *(&v139 + v20), 1), v23, *(&v139 + v20), 2);
      v20 += 16;
    }

    while (v20 != 48);
    v27 = 0;
    v28 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_208[4])), v143, *&self->_anon_208[4], 1));
    *&v29 = vdivq_f32(v28, vdupq_laneq_s32(v28, 2)).u64[0];
    v139 = v24;
    v140 = v25;
    v141 = v26;
    do
    {
      *(&v142 + v27) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v139 + v27))), v22, *(&v139 + v27), 1), v23, *(&v139 + v27), 2);
      v27 += 16;
    }

    while (v27 != 48);
    v30 = 0;
    v31 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_208[12])), v143, *&self->_anon_208[12], 1));
    *&v32 = vdivq_f32(v31, vdupq_laneq_s32(v31, 2)).u64[0];
    v139 = v24;
    v140 = v25;
    v141 = v26;
    do
    {
      *(&v142 + v30) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v139 + v30))), v22, *(&v139 + v30), 1), v23, *(&v139 + v30), 2);
      v30 += 16;
    }

    while (v30 != 48);
    v33 = 0;
    v34 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_218[4])), v143, *&self->_anon_218[4], 1));
    *&v35 = vdivq_f32(v34, vdupq_laneq_s32(v34, 2)).u64[0];
    v139 = v24;
    v140 = v25;
    v141 = v26;
    do
    {
      *(&v142 + v33) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v139 + v33))), v22, *(&v139 + v33), 1), v23, *(&v139 + v33), 2);
      v33 += 16;
    }

    while (v33 != 48);
    v36 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_218[12])), v143, *&self->_anon_218[12], 1));
    self->rZ = CI::Perspective::keystoneH(v29, v32, v35, COERCE_DOUBLE(vdiv_f32(*v36.i8, *&vdupq_laneq_s32(v36, 2))));
  }

  begin = self->vLineCluster.__begin_;
  v38 = 0.0;
  v39 = 0.0;
  while (begin != self->vLineCluster.__end_)
  {
    v40 = *begin;
    v41 = *(begin + 8);
    begin = (begin + 16);
    v42 = vsub_f32(v40, v41);
    v39 = v39 + sqrtf(vaddv_f32(vmul_f32(v42, v42)));
  }

  v43 = self->hLineCluster.__begin_;
  end = self->hLineCluster.__end_;
  if (v43 != end)
  {
    v38 = 0.0;
    do
    {
      v45 = *v43;
      v46 = *(v43 + 8);
      v43 = (v43 + 16);
      v47 = vsub_f32(v45, v46);
      v38 = v38 + sqrtf(vaddv_f32(vmul_f32(v47, v47)));
    }

    while (v43 != end);
  }

  vGuidesAOE = self->vGuidesAOE;
  hGuidesAOE = self->hGuidesAOE;
  self->super.pitch = self->rY;
  rZ = self->rZ;
  self->super.yaw = rZ;
  pitch = self->super.pitch;
  if (pitch != 0.0)
  {
    v52 = -pitch;
    if (pitch >= 0.0)
    {
      v52 = self->super.pitch;
    }

    if (v52 > self->super.config.pitchLimit)
    {
      self->super.pitch = 0.0;
      self->super.pitchFailureReason = 1;
      rZ = self->super.yaw;
      pitch = 0.0;
    }
  }

  if (rZ == 0.0)
  {
    goto LABEL_38;
  }

  v53 = -rZ;
  if (rZ >= 0.0)
  {
    v53 = rZ;
  }

  if (v53 <= self->super.config.yawLimit)
  {
LABEL_38:
    if (pitch == 0.0)
    {
      if (rZ == 0.0)
      {
        return;
      }

      v101 = 0;
      v102 = *self->_anon_c0;
      v103 = *&self->_anon_c0[16];
      v104 = *&self->_anon_c0[32];
      v105 = *self->_anon_120;
      v106 = *&self->_anon_120[16];
      v107 = *&self->_anon_120[32];
      v139 = v105;
      v140 = v106;
      v141 = v107;
      do
      {
        *(&v142 + v101) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v102, COERCE_FLOAT(*(&v139 + v101))), v103, *(&v139 + v101), 1), v104, *(&v139 + v101), 2);
        v101 += 16;
      }

      while (v101 != 48);
      v108 = 0;
      v109 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_208[4])), v143, *&self->_anon_208[4], 1));
      *&v110 = vdivq_f32(v109, vdupq_laneq_s32(v109, 2)).u64[0];
      v139 = v105;
      v140 = v106;
      v141 = v107;
      do
      {
        *(&v142 + v108) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v102, COERCE_FLOAT(*(&v139 + v108))), v103, *(&v139 + v108), 1), v104, *(&v139 + v108), 2);
        v108 += 16;
      }

      while (v108 != 48);
      v111 = 0;
      v112 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_208[12])), v143, *&self->_anon_208[12], 1));
      *&v113 = vdivq_f32(v112, vdupq_laneq_s32(v112, 2)).u64[0];
      v139 = v105;
      v140 = v106;
      v141 = v107;
      do
      {
        *(&v142 + v111) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v102, COERCE_FLOAT(*(&v139 + v111))), v103, *(&v139 + v111), 1), v104, *(&v139 + v111), 2);
        v111 += 16;
      }

      while (v111 != 48);
      v114 = 0;
      v115 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_218[4])), v143, *&self->_anon_218[4], 1));
      *&v116 = vdivq_f32(v115, vdupq_laneq_s32(v115, 2)).u64[0];
      v139 = v105;
      v140 = v106;
      v141 = v107;
      do
      {
        *(&v142 + v114) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v102, COERCE_FLOAT(*(&v139 + v114))), v103, *(&v139 + v114), 1), v104, *(&v139 + v114), 2);
        v114 += 16;
      }

      while (v114 != 48);
      v117 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_218[12])), v143, *&self->_anon_218[12], 1));
      v118 = pitch;
      v119 = rZ;
      v120 = CI::Perspective::horizonH(self, v110, v113, v116, COERCE_DOUBLE(vdiv_f32(*v117.i8, *&vdupq_laneq_s32(v117, 2))), v118, v119);
      self->pitchCorrectionAreaCoverage = v120;
      v121 = v120;
      self->super.roll = v120;
      v122 = v120 < 0.0;
      if (v120 == 0.0)
      {
        return;
      }

      v123 = -v121;
      if (!v122)
      {
        v123 = v121;
      }

      if (v123 <= self->super.config.rollLimit)
      {
        return;
      }

      self->super.yaw = 0.0;
      self->super.roll = 0.0;
    }

    else
    {
      if (rZ == 0.0)
      {
        goto LABEL_50;
      }

      v54 = v39 * vGuidesAOE;
      v55 = v39 + v38;
      v56 = (v38 * hGuidesAOE) / v55;
      v57 = *self->_anon_c0;
      v58 = *&self->_anon_c0[16];
      v59 = *&self->_anon_c0[32];
      v61 = *self->_anon_120;
      v60 = *&self->_anon_120[16];
      v62 = *&self->_anon_120[32];
      v63 = 0;
      if ((v54 / v55) <= v56)
      {
        v139 = *self->_anon_120;
        v140 = v60;
        v141 = v62;
        do
        {
          *(&v142 + v63) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*(&v139 + v63))), v58, *(&v139 + v63), 1), v59, *(&v139 + v63), 2);
          v63 += 16;
        }

        while (v63 != 48);
        v124 = 0;
        v125 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_208[4])), v143, *&self->_anon_208[4], 1));
        *&v126 = vdivq_f32(v125, vdupq_laneq_s32(v125, 2)).u64[0];
        v139 = v61;
        v140 = v60;
        v141 = v62;
        do
        {
          *(&v142 + v124) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*(&v139 + v124))), v58, *(&v139 + v124), 1), v59, *(&v139 + v124), 2);
          v124 += 16;
        }

        while (v124 != 48);
        v127 = 0;
        v128 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_208[12])), v143, *&self->_anon_208[12], 1));
        *&v129 = vdivq_f32(v128, vdupq_laneq_s32(v128, 2)).u64[0];
        v139 = v61;
        v140 = v60;
        v141 = v62;
        do
        {
          *(&v142 + v127) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*(&v139 + v127))), v58, *(&v139 + v127), 1), v59, *(&v139 + v127), 2);
          v127 += 16;
        }

        while (v127 != 48);
        v130 = 0;
        v131 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_218[4])), v143, *&self->_anon_218[4], 1));
        *&v132 = vdivq_f32(v131, vdupq_laneq_s32(v131, 2)).u64[0];
        v139 = v61;
        v140 = v60;
        v141 = v62;
        do
        {
          *(&v142 + v130) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*(&v139 + v130))), v58, *(&v139 + v130), 1), v59, *(&v139 + v130), 2);
          v130 += 16;
        }

        while (v130 != 48);
        v133 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_218[12])), v143, *&self->_anon_218[12], 1));
        v134 = pitch;
        v135 = rZ;
        v76 = CI::Perspective::horizonH(self, v126, v129, v132, COERCE_DOUBLE(vdiv_f32(*v133.i8, *&vdupq_laneq_s32(v133, 2))), v134, v135);
      }

      else
      {
        v139 = *self->_anon_120;
        v140 = v60;
        v141 = v62;
        do
        {
          *(&v142 + v63) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*(&v139 + v63))), v58, *(&v139 + v63), 1), v59, *(&v139 + v63), 2);
          v63 += 16;
        }

        while (v63 != 48);
        v64 = 0;
        v65 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1e8[4])), v143, *&self->_anon_1e8[4], 1));
        *&v66 = vdivq_f32(v65, vdupq_laneq_s32(v65, 2)).u64[0];
        v139 = v61;
        v140 = v60;
        v141 = v62;
        do
        {
          *(&v142 + v64) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*(&v139 + v64))), v58, *(&v139 + v64), 1), v59, *(&v139 + v64), 2);
          v64 += 16;
        }

        while (v64 != 48);
        v67 = 0;
        v68 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1e8[12])), v143, *&self->_anon_1e8[12], 1));
        *&v69 = vdivq_f32(v68, vdupq_laneq_s32(v68, 2)).u64[0];
        v139 = v61;
        v140 = v60;
        v141 = v62;
        do
        {
          *(&v142 + v67) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*(&v139 + v67))), v58, *(&v139 + v67), 1), v59, *(&v139 + v67), 2);
          v67 += 16;
        }

        while (v67 != 48);
        v70 = 0;
        v71 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1f8[4])), v143, *&self->_anon_1f8[4], 1));
        *&v72 = vdivq_f32(v71, vdupq_laneq_s32(v71, 2)).u64[0];
        v139 = v61;
        v140 = v60;
        v141 = v62;
        do
        {
          *(&v142 + v70) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*(&v139 + v70))), v58, *(&v139 + v70), 1), v59, *(&v139 + v70), 2);
          v70 += 16;
        }

        while (v70 != 48);
        v73 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1f8[12])), v143, *&self->_anon_1f8[12], 1));
        v74 = pitch;
        v75 = rZ;
        v76 = CI::Perspective::horizonV(self, v66, v69, v72, COERCE_DOUBLE(vdiv_f32(*v73.i8, *&vdupq_laneq_s32(v73, 2))), v74, v75);
      }

      self->pitchCorrectionAreaCoverage = v76;
      v136 = v76;
      self->super.roll = v76;
      v137 = v76 < 0.0;
      if (v76 == 0.0)
      {
        return;
      }

      v138 = -v136;
      if (!v137)
      {
        v138 = v136;
      }

      if (v138 <= self->super.config.rollLimit)
      {
        return;
      }

      self->super.pitch = 0.0;
      self->super.yaw = 0.0;
      self->super.roll = 0.0;
      self->super.pitchFailureReason = 4;
    }

    v100 = &OBJC_IVAR___CIPerspectiveAutoCalc_yawFailureReason;
    goto LABEL_92;
  }

  self->super.yaw = 0.0;
  self->super.yawFailureReason = 1;
  pitch = self->super.pitch;
  rZ = 0.0;
  if (pitch == 0.0)
  {
    return;
  }

LABEL_50:
  v77 = 0;
  v78 = *self->_anon_c0;
  v79 = *&self->_anon_c0[16];
  v80 = *&self->_anon_c0[32];
  v81 = *self->_anon_120;
  v82 = *&self->_anon_120[16];
  v83 = *&self->_anon_120[32];
  v139 = v81;
  v140 = v82;
  v141 = v83;
  do
  {
    *(&v142 + v77) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*(&v139 + v77))), v79, *(&v139 + v77), 1), v80, *(&v139 + v77), 2);
    v77 += 16;
  }

  while (v77 != 48);
  v84 = 0;
  v85 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1e8[4])), v143, *&self->_anon_1e8[4], 1));
  *&v86 = vdivq_f32(v85, vdupq_laneq_s32(v85, 2)).u64[0];
  v139 = v81;
  v140 = v82;
  v141 = v83;
  do
  {
    *(&v142 + v84) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*(&v139 + v84))), v79, *(&v139 + v84), 1), v80, *(&v139 + v84), 2);
    v84 += 16;
  }

  while (v84 != 48);
  v87 = 0;
  v88 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1e8[12])), v143, *&self->_anon_1e8[12], 1));
  *&v89 = vdivq_f32(v88, vdupq_laneq_s32(v88, 2)).u64[0];
  v139 = v81;
  v140 = v82;
  v141 = v83;
  do
  {
    *(&v142 + v87) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*(&v139 + v87))), v79, *(&v139 + v87), 1), v80, *(&v139 + v87), 2);
    v87 += 16;
  }

  while (v87 != 48);
  v90 = 0;
  v91 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1f8[4])), v143, *&self->_anon_1f8[4], 1));
  *&v92 = vdivq_f32(v91, vdupq_laneq_s32(v91, 2)).u64[0];
  v139 = v81;
  v140 = v82;
  v141 = v83;
  do
  {
    *(&v142 + v90) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*(&v139 + v90))), v79, *(&v139 + v90), 1), v80, *(&v139 + v90), 2);
    v90 += 16;
  }

  while (v90 != 48);
  v93 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1f8[12])), v143, *&self->_anon_1f8[12], 1));
  v94 = pitch;
  v95 = rZ;
  v96 = CI::Perspective::horizonV(self, v86, v89, v92, COERCE_DOUBLE(vdiv_f32(*v93.i8, *&vdupq_laneq_s32(v93, 2))), v94, v95);
  self->pitchCorrectionAreaCoverage = v96;
  v97 = v96;
  self->super.roll = v96;
  v98 = v96 < 0.0;
  if (v96 != 0.0)
  {
    v99 = -v97;
    if (!v98)
    {
      v99 = v97;
    }

    if (v99 > self->super.config.rollLimit)
    {
      self->super.pitch = 0.0;
      self->super.roll = 0.0;
      v100 = &OBJC_IVAR___CIPerspectiveAutoCalc_pitchFailureReason;
LABEL_92:
      *(&self->super.super.isa + *v100) = 4;
    }
  }
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
  *(self + 69) = 0x100000001;
  return self;
}

@end