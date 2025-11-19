@interface NTKAtiumQuad
- (BOOL)_needsOrientationBlend;
- (NTKAtiumQuad)initWithDevice:(id)a3;
- (NTKAtiumQuadDelegate)delegate;
- (float32x2_t)_getHandAngles;
- (id)_createRenderPipelineWithPixelFormat:(unint64_t)a3 functionConstants:(id)a4;
- (id)_createTextureWithName:(id)a3;
- (id)_createVertexBuffer;
- (void)_updateDeviceRotationMatrix;
- (void)renderForDisplayWithEncoder:(id)a3;
- (void)setAnimatingOverrideDate:(BOOL)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setupForQuadView:(id)a3;
- (void)startWakeAnimationWithDuration:(double)a3;
@end

@implementation NTKAtiumQuad

- (NTKAtiumQuad)initWithDevice:(id)a3
{
  v5 = a3;
  v82.receiver = self;
  v82.super_class = NTKAtiumQuad;
  v6 = [(NTKAtiumQuad *)&v82 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = +[CLKUIMetalResourceManager sharedDevice];
    mtlDevice = v7->_mtlDevice;
    v7->_mtlDevice = v8;

    v10 = v7->_mtlDevice;
    v11 = sub_424C();
    v12 = [(MTLDevice *)v10 newDefaultLibraryWithBundle:v11 error:0];
    library = v7->_library;
    v7->_library = v12;

    [v5 screenScale];
    v7->_screenScale = v14;
    v7->_tritiumProgress = 0.0;
    v7->_shadowStrength = 1.0;
    v7->_timeShadowOverride = 1.0;
    *v7->_anon_80 = xmmword_8980;
    v15 = matrix_identity_float4x4.columns[1];
    *v7->_anon_90 = matrix_identity_float4x4.columns[0];
    *&v7->_anon_90[16] = v15;
    v16 = matrix_identity_float4x4.columns[3];
    *&v7->_anon_90[32] = matrix_identity_float4x4.columns[2];
    *&v7->_anon_90[48] = v16;
    v7->dialSize = 500.0;
    v7->_materialRoughness = 0.25;
    if (_os_feature_enabled_impl())
    {
      v7->_materialRoughness = 0.5;
    }

    v7->_blendTransitionFraction = 0.0;
    v17 = objc_alloc_init(NSMutableDictionary);
    renderPipelines = v7->_renderPipelines;
    v7->_renderPipelines = v17;

    v19 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    calendar = v7->_calendar;
    v7->_calendar = v19;

    v21 = [CLKUIAnalogHandConfiguration defaultHourConfigurationForDevice:v5];
    v22 = [CLKUIAnalogHandConfiguration defaultMinuteConfigurationForDevice:v5];
    v23 = [CLKUIAnalogHandConfiguration defaultSecondConfigurationForDevice:v5];
    screenScale = v7->_screenScale;
    [v21 handWidth];
    *&v25 = screenScale * v25 * 0.5;
    v7->_layoutConstants.radius = *&v25;
    v26 = v7->_screenScale;
    [v21 armLength];
    v28 = v27;
    [v21 pegRadius];
    v30 = v28 + v29;
    [v21 pegStrokeWidth];
    *&v31 = v26 * (v30 + v31);
    v7->_layoutConstants.armLength = *&v31;
    v32 = v7->_screenScale;
    [v21 handLength];
    *&v33 = v32 * v33;
    v7->_layoutConstants.handLength1 = *&v33;
    v34 = v7->_screenScale;
    [v22 handLength];
    *&v35 = v34 * v35;
    v7->_layoutConstants.handLength2 = *&v35;
    v36 = v7->_screenScale;
    [v23 handLength];
    *&v37 = v36 * v37;
    v7->_layoutConstants.secondHandLength = *&v37;
    v38 = v7->_screenScale;
    [v23 tailLength];
    *&v39 = v38 * v39;
    v7->_layoutConstants.secondHandTailLength = *&v39;
    v40 = sub_4290(1.5708, xmmword_8990);
    v47 = v46 + (*&v40 + v43);
    if (v47 >= 0.0)
    {
      v57 = sqrtf(v47 + 1.0);
      v58 = v57 + v57;
      v59 = vrecpe_f32(COERCE_UNSIGNED_INT(v57 + v57));
      v60 = vmul_f32(v59, vrecps_f32(COERCE_UNSIGNED_INT(v57 + v57), v59));
      v61 = vmul_f32(v60, vrecps_f32(COERCE_UNSIGNED_INT(v57 + v57), v60)).f32[0];
      v53 = (v44 - *(&v45 + 1)) * v61;
      v54 = (*&v45 - v41) * v61;
      v55 = (*(&v40 + 1) - v42) * v61;
      v62 = v58 * 0.25;
    }

    else
    {
      if (*&v40 < v43 || *&v40 < v46)
      {
        v63 = 1.0 - *&v40;
        if (v43 >= v46)
        {
          v68 = sqrtf(v43 + (v63 - v46));
          v69 = v68 + v68;
          v70 = vrecpe_f32(COERCE_UNSIGNED_INT(v68 + v68));
          v71 = vmul_f32(v70, vrecps_f32(COERCE_UNSIGNED_INT(v68 + v68), v70));
          v52 = vmul_f32(v71, vrecps_f32(COERCE_UNSIGNED_INT(v68 + v68), v71)).f32[0];
          v53 = (*(&v40 + 1) + v42) * v52;
          v54 = v69 * 0.25;
          v55 = (v44 + *(&v45 + 1)) * v52;
          v56 = *&v45 - v41;
        }

        else
        {
          v64 = sqrtf(v46 + (v63 - v43));
          v65 = v64 + v64;
          v66 = vrecpe_f32(COERCE_UNSIGNED_INT(v64 + v64));
          v67 = vmul_f32(v66, vrecps_f32(COERCE_UNSIGNED_INT(v64 + v64), v66));
          v52 = vmul_f32(v67, vrecps_f32(COERCE_UNSIGNED_INT(v64 + v64), v67)).f32[0];
          v53 = (v41 + *&v45) * v52;
          v54 = (v44 + *(&v45 + 1)) * v52;
          v55 = v65 * 0.25;
          v56 = *(&v40 + 1) - v42;
        }
      }

      else
      {
        v48 = sqrtf(*&v40 + ((1.0 - v43) - v46));
        *&v49 = v48 + v48;
        v50 = vrecpe_f32(v49);
        v51 = vmul_f32(v50, vrecps_f32(v49, v50));
        v52 = vmul_f32(v51, vrecps_f32(v49, v51)).f32[0];
        v53 = *&v49 * 0.25;
        v54 = (*(&v40 + 1) + v42) * v52;
        v55 = (v41 + *&v45) * v52;
        v56 = v44 - *(&v45 + 1);
      }

      v62 = v56 * v52;
    }

    *&v72 = __PAIR64__(LODWORD(v54), LODWORD(v53));
    *(&v72 + 1) = __PAIR64__(LODWORD(v62), LODWORD(v55));
    *v7->_anon_d0 = v72;
    v7->_tritiumMaskMultiplier = 1.0;
    *&v73 = sub_438C(vaddq_f32(vmlaq_n_f32(vmulq_n_f32(xmmword_89A0, v54), xmmword_89B0, v53), vmlaq_n_f32(vmulq_n_f32(xmmword_89C0, v62), xmmword_89D0, v55)));
    *v7->_anon_e0 = v73;
    *&v7->_anon_e0[16] = v74;
    *&v7->_anon_e0[32] = v75;
    *&v7->_anon_e0[48] = v76;
    *v7->_anon_120 = xmmword_8980;
    *&v77 = sub_438C(vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(xmmword_89E0, *v7->_anon_d0, 1), xmmword_89F0, COERCE_FLOAT(*v7->_anon_d0)), vmlaq_laneq_f32(vmulq_laneq_f32(xmmword_8980, *v7->_anon_d0, 3), xmmword_8A00, *v7->_anon_d0, 2)));
    *v7->_anon_130 = v77;
    *&v7->_anon_130[16] = v78;
    *&v7->_anon_130[32] = v79;
    *&v7->_anon_130[48] = v80;
  }

  return v7;
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7 = a3;
  overrideDate = self->_overrideDate;
  if ((NTKEqualObjects() & 1) == 0)
  {
    if (a4 > 0.0)
    {
      [(NTKAtiumQuad *)self setAnimatingOverrideDate:1];
    }

    v9 = +[NTKDate faceDate];
    v10 = v9;
    v11 = self->_overrideDate;
    if (!v11)
    {
      v11 = v9;
    }

    v12 = v11;
    if (v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = [v10 dateByAddingTimeInterval:a4];
    }

    v14 = v13;
    objc_storeStrong(&self->_overrideDate, a3);
    v15 = CACurrentMediaTime();
    self->_startOverrideTime = v15;
    self->_endOverrideTime = v15 + a4;
    calendar = self->_calendar;
    NTKHourMinuteSecondAnglesForTime();
    HIDWORD(v17) = 0;
    *&v17 = vcvt_f32_f64(0);
    *(&v17 + 2) = 0.0;
    *self->_startOverrideAngles = v17;
    v18 = self->_calendar;
    NTKHourMinuteSecondAnglesForTime();
    HIDWORD(v19) = 0;
    *&v19 = vcvt_f32_f64(0);
    *(&v19 + 2) = 0.0;
    *self->_endOverrideAngles = v19;
  }
}

- (void)setAnimatingOverrideDate:(BOOL)a3
{
  if (self->_animatingOverrideDate != a3)
  {
    self->_animatingOverrideDate = a3;
    v5 = [(NTKAtiumQuad *)self delegate];
    [v5 atiumQuadDidUpdateAnimatingOverrideDate:self];
  }
}

- (void)startWakeAnimationWithDuration:(double)a3
{
  v5 = CACurrentMediaTime();
  self->_startWristRaiseTime = v5;
  self->_endWristRaiseTime = v5 + a3;
}

- (void)setupForQuadView:(id)a3
{
  v4 = a3;
  [v4 bounds];
  screenScale = self->_screenScale;
  self->_renderSize.width = v6 * screenScale;
  self->_renderSize.height = v7 * screenScale;
  v8 = [v4 colorPixelFormat];

  self->_pixelFormat = v8;
  v9 = [(NTKAtiumQuad *)self _createVertexBuffer];
  vertexBuffer = self->_vertexBuffer;
  self->_vertexBuffer = v9;

  v11 = [(NTKAtiumQuad *)self _createTextureWithName:@"QuickCubeTexture"];
  reflectionCubeTexture = self->_reflectionCubeTexture;
  self->_reflectionCubeTexture = v11;

  v13 = [(NTKAtiumQuad *)self _createTextureWithName:@"NewThreeColorCubeTexture"];
  reflectionThreeColorCubeTexture = self->_reflectionThreeColorCubeTexture;
  self->_reflectionThreeColorCubeTexture = v13;

  v15 = [(NTKAtiumQuad *)self _createTextureWithName:@"RainbowCubeTexture"];
  reflectionRainbowCubeTexture = self->_reflectionRainbowCubeTexture;
  self->_reflectionRainbowCubeTexture = v15;

  v17 = [(NTKAtiumQuad *)self _createTextureWithName:@"CenterMaskTexture"];
  centerMaskTexture = self->_centerMaskTexture;
  self->_centerMaskTexture = v17;

  v19 = [(NTKAtiumQuad *)self _createTextureWithName:@"AODMaskTextureCircular"];
  aodMaskTexture = self->_aodMaskTexture;
  self->_aodMaskTexture = v19;

  v21 = [(NTKAtiumQuad *)self _createTextureWithName:@"AODMaskTextureBlurred"];
  aodMaskTextureBlurred = self->_aodMaskTextureBlurred;
  self->_aodMaskTextureBlurred = v21;

  _objc_release_x1();
}

- (BOOL)_needsOrientationBlend
{
  if (CACurrentMediaTime() >= self->_endOverrideTime && ((tritiumProgress = self->_tritiumProgress, tritiumProgress != 0.0) ? (v4 = tritiumProgress == 1.0) : (v4 = 1), v4))
  {
    return self->_overrideTritiumAnimation;
  }

  else
  {
    return 1;
  }
}

- (float32x2_t)_getHandAngles
{
  v2 = CACurrentMediaTime();
  v3 = *(a1 + 424);
  if (v2 >= v3)
  {
    v16 = *(a1 + 600);
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = +[NTKDate faceDate];
    }

    v5 = v17;
    v18 = *(a1 + 376);
    NTKHourMinuteSecondAnglesForTime();
    v19 = vcvt_f32_f64(0);
    v20 = 0.0;
    if (!*(a1 + 600))
    {
      v20 = 1.0;
    }

    *(a1 + 464) = v20;
    [a1 setAnimatingOverrideDate:{0, *&v19}];
  }

  else
  {
    v4 = (v2 - *(a1 + 416)) / (v3 - *(a1 + 416));
    v5 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    *&v6 = v4;
    [v5 _solveForInput:v6];
    v7 = *(a1 + 448);
    v8 = *(a1 + 432);
    CLKInterpolateShortestPathBetweenAnglesUnclipped();
    v22 = v9;
    v10 = *(a1 + 436);
    v11 = *(a1 + 452);
    CLKInterpolateShortestPathBetweenAnglesUnclipped();
    v12.f64[0] = v22;
    v12.f64[1] = v13;
    v23 = vcvt_f32_f64(v12);
    v14 = *(a1 + 440);
    v12.f64[0] = *(a1 + 456);
    CLKInterpolateShortestPathBetweenAnglesUnclipped();
    v15 = v4;
    if (*(a1 + 600))
    {
      v15 = 1.0 - v4;
    }

    *(a1 + 464) = v15;
  }

  return vcvt_f32_f64(vaddq_f64(vsubq_f64(vdupq_n_s64(0x401921FB54442D18uLL), vcvtq_f64_f32(v23)), vdupq_n_s64(0x3FF921FB54442D18uLL)));
}

- (void)renderForDisplayWithEncoder:(id)a3
{
  v4 = a3;
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v5 = [(NTKAtiumQuad *)self recolorLightingTextureEnabled];
  v6 = [(NTKAtiumQuad *)self useThreeColorTexture];
  blendTransitionFraction = self->_blendTransitionFraction;
  if (blendTransitionFraction <= 0.0)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    if ([(NTKAtiumQuad *)self blendRecolorLightingTextureEnabled])
    {
      v8 = 0x1000000;
    }

    else
    {
      v8 = 0;
    }

    if ([(NTKAtiumQuad *)self blendUseThreeColorTexture])
    {
      v9 = 0x100000000;
    }

    else
    {
      v9 = 0;
    }
  }

  v10 = [(NTKAtiumQuad *)self _needsOrientationBlend];
  if (self->_tritiumProgress <= 0.0)
  {
    v13 = [(NTKAtiumQuad *)self overrideTritiumAnimation];
    v14 = 256;
    if (!v6)
    {
      v14 = 0;
    }

    v12 = v14 | v5 | ((blendTransitionFraction > 0.0) << 16) | v8 | v9;
    if (!v13)
    {
      v110 = 0;
      v15 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v11 = 256;
    if (!v6)
    {
      v11 = 0;
    }

    v12 = v11 | v5 | ((blendTransitionFraction > 0.0) << 16) | v8 | v9;
  }

  v110 = 1;
  v15 = 256;
LABEL_18:
  v16 = 0;
  LODWORD(v17) = 0;
  v18 = v12 | ((v15 | v10) << 48);
  *&v125 = v18;
  do
  {
    v17 = *(&v125 + v16++) | (2 * v17);
  }

  while (v16 != 8);
  v19 = [NSNumber numberWithUnsignedInt:v17];
  v20 = [(NSMutableDictionary *)self->_renderPipelines objectForKey:v19];

  if (v20)
  {
    v21 = [(NSMutableDictionary *)self->_renderPipelines objectForKey:v19];
  }

  else
  {
    v21 = [(NTKAtiumQuad *)self _createRenderPipelineWithPixelFormat:self->_pixelFormat functionConstants:v18];
    [(NSMutableDictionary *)self->_renderPipelines setObject:v21 forKey:v19];
  }

  [v4 setLabel:{@"Atium Render Encoder", v18}];
  v125 = 0uLL;
  renderSize = self->_renderSize;
  v127 = xmmword_8A10;
  [v4 setViewport:&v125];
  [v4 setRenderPipelineState:v21];
  [v4 setCullMode:0];
  memset(v134, 0, sizeof(v134));
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0;
  v129 = 0;
  renderSize = 0;
  v127 = 0u;
  v125 = 0u;
  __asm { FMOV            V1.2D, #0.5 }

  *&v125 = vcvt_f32_f64(vmulq_f64(self->_renderSize, _Q1));
  firstLightColor = self->firstLightColor;
  CLKUIConvertToRGBfFromUIColor();
  v108 = v28;
  secondLightColor = self->secondLightColor;
  CLKUIConvertToRGBfFromUIColor();
  v111 = v30;
  backgroundLightColor = self->backgroundLightColor;
  CLKUIConvertToRGBfFromUIColor();
  v32 = vcvt_f16_f32(v108);
  _S2 = v108.i32[2];
  __asm { FCVT            H2, S2 }

  v32.i16[2] = _S2;
  v34 = vcvt_f16_f32(v111);
  _S3 = v111.i32[2];
  __asm { FCVT            H3, S3 }

  v34.i16[2] = _S3;
  v37 = vcvt_f16_f32(_Q0);
  _Q0.i32[0] = _Q0.i32[2];
  __asm { FCVT            H0, S0 }

  v37.i16[2] = _Q0.i16[0];
  *&v130 = v32;
  *(&v130 + 1) = v34;
  *&v131 = v37;
  _Q0.f32[0] = self->dialSize;
  DWORD2(v131) = _Q0.i32[0];
  if (self->_tritiumProgress == 1.0)
  {
    v38 = &OBJC_IVAR___NTKAtiumQuad__tritiumRotationMatrix;
  }

  else
  {
    [(NTKAtiumQuad *)self _updateDeviceRotationMatrix];
    v39 = CACurrentMediaTime();
    endOverrideTime = self->_endOverrideTime;
    if (v39 > endOverrideTime && self->_overrideDate || v39 < endOverrideTime && !self->_overrideDate)
    {
      v38 = &OBJC_IVAR___NTKAtiumQuad__idealizedRotationMatrix;
    }

    else
    {
      v38 = &OBJC_IVAR___NTKAtiumQuad__idealizedRotationMatrix;
      if (!IsReduceMotionEnabled)
      {
        v38 = &OBJC_IVAR___NTKAtiumQuad__deviceRotationMatrix;
      }
    }
  }

  v41 = &self->CLKUIQuad_opaque[*v38];
  v42 = v41[1];
  renderSize = *v41;
  v127 = v42;
  v43 = v41[3];
  v128 = v41[2];
  v129 = v43;
  materialRoughness = self->_materialRoughness;
  *(&v131 + 3) = materialRoughness;
  [(NTKAtiumQuad *)self _getHandAngles];
  v112 = v45;
  v46 = __sincosf_stret(*&v45);
  *(&v132 + 1) = __PAIR64__(LODWORD(v46.__sinval), LODWORD(v46.__cosval));
  v47 = __sincosf_stret(*(&v112 + 1));
  *&v133 = __PAIR64__(LODWORD(v47.__sinval), LODWORD(v47.__cosval));
  v48 = __sincosf_stret(*(&v112 + 2));
  *(&v133 + 1) = __PAIR64__(LODWORD(v48.__sinval), LODWORD(v48.__cosval));
  v49 = self->_shadowStrength * self->_timeShadowOverride;
  *&v132 = v49;
  *(v134 + 8) = *&self->_layoutConstants.handLength1;
  *(&v134[1] + 1) = *&self->_layoutConstants.secondHandLength;
  v50 = 0.0;
  if (self->_tritiumProgress == 1.0)
  {
    v50 = 1.0;
  }

  v51 = v50;
  *v134 = v51;
  [(NTKAtiumQuad *)self tritiumMaskMultiplier];
  *&v52 = v52;
  DWORD1(v134[0]) = LODWORD(v52);
  v53 = [(MTLDevice *)self->_mtlDevice newBufferWithBytes:&v125 length:176 options:1];
  [v4 setVertexBuffer:self->_vertexBuffer offset:0 atIndex:0];
  [v4 setVertexBuffer:v53 offset:0 atIndex:1];
  [v4 setFragmentBuffer:v53 offset:0 atIndex:0];
  if (blendTransitionFraction > 0.0)
  {
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    blendFirstLightColor = self->blendFirstLightColor;
    CLKUIConvertToRGBfFromUIColor();
    v109 = v55;
    blendSecondLightColor = self->blendSecondLightColor;
    CLKUIConvertToRGBfFromUIColor();
    v113 = v57;
    blendBackgroundLightColor = self->blendBackgroundLightColor;
    CLKUIConvertToRGBfFromUIColor();
    v59 = vcvt_f16_f32(v109);
    _S2 = v109.i32[2];
    __asm { FCVT            H2, S2 }

    v59.i16[2] = _S2;
    v61 = vcvt_f16_f32(v113);
    _S3 = v113.i32[2];
    __asm { FCVT            H3, S3 }

    v61.i16[2] = _S3;
    *&v119 = v59;
    *(&v119 + 1) = v61;
    v64 = vcvt_f16_f32(_Q0);
    _Q0.i32[0] = _Q0.i32[2];
    __asm { FCVT            H0, S0 }

    v64.i16[2] = _Q0.i16[0];
    *v120.f32 = v64;
    _Q0.f32[0] = self->_blendTransitionFraction;
    v120.i32[2] = _Q0.i32[0];
    v65 = [(MTLDevice *)self->_mtlDevice newBufferWithBytes:&v119 length:96 options:1];
    [v4 setFragmentBuffer:v65 offset:0 atIndex:1];
  }

  if (v10)
  {
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v66 = CACurrentMediaTime();
    v68 = self->_endOverrideTime;
    if (v66 >= v68)
    {
      if ([(NTKAtiumQuad *)self overrideTritiumAnimation])
      {
        v74 = CACurrentMediaTime();
        endWristRaiseTime = self->_endWristRaiseTime;
        if (v74 >= endWristRaiseTime)
        {
          v69 = 0;
          LODWORD(v119) = 0;
          self->_overrideTritiumAnimation = 0;
          tritiumProgress = 0.0;
        }

        else
        {
          tritiumProgress = 1.0 - (v74 - self->_startWristRaiseTime) / (endWristRaiseTime - self->_startWristRaiseTime);
          *&v119 = tritiumProgress;
          v69 = 1;
        }
      }

      else
      {
        v69 = 0;
        tritiumProgress = self->_tritiumProgress;
        *&v119 = tritiumProgress;
      }

      v71 = IsReduceMotionEnabled;
      v73 = 1.0;
      v72 = &OBJC_IVAR___NTKAtiumQuad__tritiumRotationMatrix;
    }

    else
    {
      v69 = 0;
      tritiumProgress = (v66 - self->_startOverrideTime) / (v68 - self->_startOverrideTime);
      *&v119 = tritiumProgress;
      v71 = IsReduceMotionEnabled;
      v72 = &OBJC_IVAR___NTKAtiumQuad__idealizedRotationMatrix;
      if (self->_overrideDate == 0 && !IsReduceMotionEnabled)
      {
        v72 = &OBJC_IVAR___NTKAtiumQuad__deviceRotationMatrix;
      }

      v73 = 0.0;
    }

    v76 = &self->CLKUIQuad_opaque[*v72];
    v77 = v76[1];
    v120 = *v76;
    v121 = v77;
    v78 = v76[2];
    v79 = v76[3];
    v122 = v78;
    v123 = v79;
    *&v124 = v73;
    if (!v71)
    {
      v78.i32[0] = 1045220557;
      LODWORD(v67) = 1.0;
      v80 = [CAMediaTimingFunction functionWithControlPoints:0.0];
      v82 = v80;
      if (v69)
      {
        *&v81 = 1.0 - tritiumProgress;
        [v80 _solveForInput:v81];
      }

      else
      {
        *&v81 = tritiumProgress;
        [v80 _solveForInput:v81];
        v83 = 1.0 - v84;
      }

      v85 = v83 * 1.57079633 * 0.7;
      *&v86 = sub_4290(v85, xmmword_8A20);
      v87 = 0;
      v88 = v120;
      v89 = v121;
      v90 = v122;
      v91 = v123;
      v114[0] = v86;
      v114[1] = v92;
      v114[2] = v93;
      v114[3] = v94;
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      do
      {
        *(&v115 + v87 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v88, COERCE_FLOAT(v114[v87])), v89, *&v114[v87], 1), v90, v114[v87], 2), v91, v114[v87], 3);
        ++v87;
      }

      while (v87 != 4);
      v120 = v115;
      v121 = v116;
      v122 = v117;
      v123 = v118;
    }

    v95 = [(MTLDevice *)self->_mtlDevice newBufferWithBytes:&v119 length:96 options:1];
    [v4 setFragmentBuffer:v95 offset:0 atIndex:2];
  }

  if ([(NTKAtiumQuad *)self useRainbowTexture])
  {
    v96 = &OBJC_IVAR___NTKAtiumQuad__reflectionRainbowCubeTexture;
  }

  else
  {
    v97 = [(NTKAtiumQuad *)self useThreeColorTexture];
    v96 = &OBJC_IVAR___NTKAtiumQuad__reflectionCubeTexture;
    if (v97)
    {
      v96 = &OBJC_IVAR___NTKAtiumQuad__reflectionThreeColorCubeTexture;
    }
  }

  [v4 setFragmentTexture:*&self->CLKUIQuad_opaque[*v96] atIndex:0];
  if (blendTransitionFraction > 0.0)
  {
    if ([(NTKAtiumQuad *)self blendUseRainbowTexture])
    {
      v98 = &OBJC_IVAR___NTKAtiumQuad__reflectionRainbowCubeTexture;
    }

    else
    {
      v99 = [(NTKAtiumQuad *)self blendUseThreeColorTexture];
      v98 = &OBJC_IVAR___NTKAtiumQuad__reflectionCubeTexture;
      if (v99)
      {
        v98 = &OBJC_IVAR___NTKAtiumQuad__reflectionThreeColorCubeTexture;
      }
    }

    [v4 setFragmentTexture:*&self->CLKUIQuad_opaque[*v98] atIndex:1];
  }

  [v4 setFragmentTexture:self->_centerMaskTexture atIndex:2];
  if (v110)
  {
    [v4 setFragmentTexture:self->_aodMaskTexture atIndex:3];
  }

  [v4 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [(NTKAtiumQuad *)self dialSize];
  if (v100 < sqrtf(vaddv_f32(vmul_f32(*&v125, *&v125))))
  {
    v101 = 0;
    LODWORD(v102) = 0;
    *&v119 = v106 | 0x10000000000;
    do
    {
      v102 = *(&v119 + v101++) | (2 * v102);
    }

    while (v101 != 8);
    v103 = [NSNumber numberWithUnsignedInt:v102];
    v104 = [(NSMutableDictionary *)self->_renderPipelines objectForKey:v103];

    if (v104)
    {
      v105 = [(NSMutableDictionary *)self->_renderPipelines objectForKey:v103];
    }

    else
    {
      v105 = [(NTKAtiumQuad *)self _createRenderPipelineWithPixelFormat:self->_pixelFormat functionConstants:v106 | 0x10000000000];
      [(NSMutableDictionary *)self->_renderPipelines setObject:v105 forKey:v103];
    }

    [v4 setRenderPipelineState:v105];
    [v4 setFragmentTexture:self->_aodMaskTextureBlurred atIndex:3];
    [v4 drawPrimitives:4 vertexStart:0 vertexCount:4];
  }
}

- (void)_updateDeviceRotationMatrix
{
  v2 = *self->_anon_80;
  v3 = *self->_anon_d0;
  v4 = vnegq_f32(v2);
  v5 = vtrn2q_s32(v2, vtrn1q_s32(v2, v4));
  v6 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v2, v4, 8uLL), *v3.f32, 1), vextq_s8(v5, v5, 8uLL), v3.f32[0]);
  v7 = vrev64q_s32(v2);
  v7.i32[0] = v4.i32[1];
  v7.i32[3] = v4.i32[2];
  anon_90 = self->_anon_90;
  *&v9 = sub_438C(vaddq_f32(v6, vmlaq_laneq_f32(vmulq_laneq_f32(v2, v3, 3), v7, v3, 2)));
  *anon_90 = v9;
  *(anon_90 + 1) = v10;
  *(anon_90 + 2) = v11;
  *(anon_90 + 3) = v12;
}

- (id)_createRenderPipelineWithPixelFormat:(unint64_t)a3 functionConstants:(id)a4
{
  v21 = a3;
  v23 = a4;
  v5 = self->_library;
  if (!self->_binaryArchive)
  {
    v6 = sub_424C();
    v7 = [CLKUIMetalBinaryArchive archiveWithName:@"atium" bundle:v6 device:self->_mtlDevice];
    binaryArchive = self->_binaryArchive;
    self->_binaryArchive = v7;
  }

  v9 = objc_opt_new();
  for (i = 0; i != 8; ++i)
  {
    [v9 setConstantValue:&v23.var0[i] type:53 atIndex:{i, v21}];
  }

  v11 = [(MTLLibrary *)v5 newFunctionWithName:@"atiumVertexShader"];
  v12 = +[MTLFunctionDescriptor functionDescriptor];
  [v12 setName:@"atiumFragmentShader"];
  [v12 setConstantValues:v9];
  v22 = v5;
  v13 = [(CLKUIMetalBinaryArchive *)self->_binaryArchive newFunctionInLibrary:v5 withDescriptor:v12];
  if (!v13)
  {
    v14 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_6034(self);
    }
  }

  v15 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v15 setVertexFunction:v11];
  [v15 setFragmentFunction:v13];
  [v15 setLabel:@"Atium Render Pipeline"];
  v16 = [v15 colorAttachments];
  v17 = [v16 objectAtIndexedSubscript:0];

  [v17 setPixelFormat:v21];
  [v17 setBlendingEnabled:1];
  [v17 setRgbBlendOperation:0];
  [v17 setAlphaBlendOperation:0];
  [v17 setSourceRGBBlendFactor:4];
  [v17 setSourceAlphaBlendFactor:4];
  [v17 setDestinationRGBBlendFactor:5];
  [v17 setDestinationAlphaBlendFactor:5];
  v18 = [(CLKUIMetalBinaryArchive *)self->_binaryArchive newRenderPipelineStateForDevice:self->_mtlDevice withDescriptor:v15];
  if (!v18)
  {
    v19 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_60C4(&self->_mtlDevice);
    }
  }

  return v18;
}

- (id)_createVertexBuffer
{
  v4[0] = xmmword_8A58;
  v4[1] = unk_8A68;
  v2 = [(MTLDevice *)self->_mtlDevice newBufferWithBytes:v4 length:32 options:1];

  return v2;
}

- (id)_createTextureWithName:(id)a3
{
  v4 = a3;
  v5 = [[MTKTextureLoader alloc] initWithDevice:self->_mtlDevice];
  v14[0] = MTKTextureLoaderOptionTextureUsage;
  v14[1] = MTKTextureLoaderOptionTextureStorageMode;
  v15[0] = &off_CB90;
  v15[1] = &off_CBA8;
  v6 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  v7 = sub_424C();
  v13 = 0;
  v8 = [v5 newTextureWithName:v4 scaleFactor:v7 bundle:v6 options:&v13 error:1.0];

  v9 = v13;
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v11 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_614C(&self->_mtlDevice);
    }
  }

  return v8;
}

- (NTKAtiumQuadDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end