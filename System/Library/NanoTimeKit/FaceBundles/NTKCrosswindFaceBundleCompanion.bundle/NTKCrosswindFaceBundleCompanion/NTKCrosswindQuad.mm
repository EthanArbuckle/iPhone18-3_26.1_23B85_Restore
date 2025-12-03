@interface NTKCrosswindQuad
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)_colorCompositionForDate:(id)date;
- (NTKCrosswindQuad)initWithScreenScale:(double)scale calendar:(id)calendar;
- (NTKCrosswindQuadDelegate)delegate;
- (id)_createRenderPipelineWithPixelFormat:(unint64_t)format aodSupported:(BOOL)supported;
- (id)_createVertexBuffer;
- (id)_handContentColorAtIndex:(unint64_t)index colors:(id *)colors;
- (void)_prepareUniformsForRendering:(id *)rendering withResult:(id *)result;
- (void)renderForDisplayWithEncoder:(id)encoder;
- (void)setAnimatingOverrideDate:(BOOL)date;
- (void)setBaseLayerBackgroundColor:(id)color baseLayerForegroundColor:(id)foregroundColor;
- (void)setFromColor:(id)color midColor:(id)midColor toColor:(id)toColor forGradientIndex:(unint64_t)index;
- (void)setOutermostFromColor:(id)color midColor:(id)midColor toColor:(id)toColor forGradientIndex:(unint64_t)index;
- (void)setOverrideDate:(id)date overrideComposition:(id)composition duration:(double)duration;
- (void)setTritiumOverrideDate:(id)date hourRadians:(double)radians minuteRadians:(double)minuteRadians secondRadians:(double)secondRadians;
- (void)setTritiumProgress:(double)progress;
- (void)setupForQuadView:(id)view;
@end

@implementation NTKCrosswindQuad

- (NTKCrosswindQuad)initWithScreenScale:(double)scale calendar:(id)calendar
{
  calendarCopy = calendar;
  v21.receiver = self;
  v21.super_class = NTKCrosswindQuad;
  v8 = [(NTKCrosswindQuad *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_calendar, calendar);
    v9->_screenScale = scale;
    v10 = +[CLKUIMetalResourceManager sharedDevice];
    device = v9->_device;
    v9->_device = v10;

    v12 = v9->_device;
    v13 = sub_454C();
    v14 = [(MTLDevice *)v12 newDefaultLibraryWithBundle:v13 error:0];
    library = v9->_library;
    v9->_library = v14;

    v16 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    overrideDateMediaTimingFunction = v9->_overrideDateMediaTimingFunction;
    v9->_overrideDateMediaTimingFunction = v16;

    v18 = [[NTKCrosswindColorSequencer alloc] initWithCalendar:calendarCopy gradientCount:4];
    colorSequencer = v9->_colorSequencer;
    v9->_colorSequencer = v18;
  }

  return v9;
}

- (void)setTritiumProgress:(double)progress
{
  tritiumProgress = self->_tritiumProgress;
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_tritiumProgress = progress;
    self->_renderedTritiumProgressNeedsUpdate = 1;
  }
}

- (void)setBaseLayerBackgroundColor:(id)color baseLayerForegroundColor:(id)foregroundColor
{
  foregroundColorCopy = foregroundColor;
  CLKUIConvertToRGBfFromUIColor();
  *&self->_baseLayerBackgroundColor[5] = v6;
  CLKUIConvertToRGBfFromUIColor();
  v8 = v7;

  *&self->_baseLayerForegroundColor[5] = v8;
}

- (void)setFromColor:(id)color midColor:(id)midColor toColor:(id)toColor forGradientIndex:(unint64_t)index
{
  toColorCopy = toColor;
  midColorCopy = midColor;
  CLKUIConvertToRGBfFromUIColor();
  v17 = v11;
  CLKUIConvertToRGBfFromUIColor();
  v16 = v12;

  CLKUIConvertToRGBfFromUIColor();
  v13 = &self->_anon_e0[48 * index];
  *v13 = v17;
  *(v13 + 1) = v16;
  *(v13 + 2) = v14;
  self->_renderedGradientsNeedUpdate = 1;
  v15 = self->_handDotColors[index];
  self->_handDotColors[index] = toColorCopy;

  self->_renderedHandContentColorsNeedUpdate = 1;
}

- (void)setOutermostFromColor:(id)color midColor:(id)midColor toColor:(id)toColor forGradientIndex:(unint64_t)index
{
  toColorCopy = toColor;
  midColorCopy = midColor;
  CLKUIConvertToRGBfFromUIColor();
  v17 = v11;
  CLKUIConvertToRGBfFromUIColor();
  v16 = v12;

  CLKUIConvertToRGBfFromUIColor();
  v15 = v13;

  v14 = &self->_anon_1a0[48 * index];
  *v14 = v17;
  *(v14 + 1) = v16;
  *(v14 + 2) = v15;
}

- (void)setOverrideDate:(id)date overrideComposition:(id)composition duration:(double)duration
{
  var1 = composition.var1;
  var0 = composition.var0;
  dateCopy = date;
  overrideDate = self->_overrideDate;
  if ((NTKEqualObjects() & 1) == 0)
  {
    if (duration > 0.0 && !self->_hasEverPreparedForRendering)
    {
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      v64 = 0u;
      [(NTKCrosswindQuad *)self _prepareUniformsForRendering:&v64 withResult:0];
    }

    v12 = +[NTKDate faceDate];
    v13 = v12;
    v14 = self->_overrideDate;
    if (!v14)
    {
      v14 = v12;
    }

    v15 = v14;
    if (dateCopy)
    {
      v16 = dateCopy;
    }

    else
    {
      v16 = [v13 dateByAddingTimeInterval:duration];
    }

    v17 = v16;
    objc_storeStrong(&self->_overrideDate, date);
    self->_overrideComposition.innerSecondGradientIndex = var0;
    self->_overrideComposition.outerSecondGradientIndex = var1;
    v18 = CACurrentMediaTime();
    self->_startOverrideTime = v18;
    self->_endOverrideTime = v18 + duration;
    v62 = 0;
    v63 = 0;
    v61 = 0;
    calendar = self->_calendar;
    NTKHourMinuteSecondAnglesForTime();
    *self->_startOverrideAngles = NTKCrosswindHourMinuteSecondAnglesToPolarAngles();
    v20 = self->_calendar;
    NTKHourMinuteSecondAnglesForTime();
    endOverrideAngles = self->_endOverrideAngles;
    *self->_endOverrideAngles = NTKCrosswindHourMinuteSecondAnglesToPolarAngles();
    *self->_fullTurnAngleCrossings = 0;
    if (duration > 0.0)
    {
      v96 = *self->_renderedGradientIndiciesForHandContentColors;
      v22 = *self->_renderedInnerSectorsConfiguration.gradientIndicies;
      v97 = self->_renderedGradientIndiciesForHandContentColors[2];
      v98 = v22;
      v99 = self->_renderedInnerSectorsConfiguration.gradientIndicies[2];
      v48 = *self->_renderedOuterSectorsConfiguration.gradientIndicies;
      v23 = *&self->_startOverrideAngles[8];
      v24 = *&self->_endOverrideAngles[8];
      v25 = NTKCrosswindPolarFullTurnAngleCrossingAlongShortestPathBetweenAngles();
      v26 = *&self->_startOverrideAngles[4];
      v27 = *&self->_endOverrideAngles[4];
      v28 = NTKCrosswindPolarFullTurnAngleCrossingAlongShortestPathBetweenAngles() + v25;
      v29 = *self->_startOverrideAngles;
      v30 = *endOverrideAngles;
      v33.n128_u32[0] = NTKCrosswindPolarFullTurnAngleCrossingAlongShortestPathBetweenAngles() + v28;
      v33.n128_u32[1] = v28;
      v47 = v33.n128_u64[0];
      *&v67 = 0;
      v33.n128_u32[3] = 0;
      v65 = 0u;
      v66 = 0u;
      v64 = 0u;
      v60 = 0;
      memset(v59, 0, sizeof(v59));
      v58 = 0u;
      v31 = *endOverrideAngles;
      LODWORD(v32) = HIDWORD(*endOverrideAngles);
      v33.n128_u64[0] = *&self->_endOverrideAngles[8];
      v50 = *endOverrideAngles;
      if (COERCE_FLOAT(*endOverrideAngles) >= v32)
      {
        v35 = 2;
        if (v32 >= v33.n128_f32[0])
        {
          v36 = 0;
          v34 = 1;
        }

        else
        {
          v34 = 0;
          if (v31.n128_f32[0] >= v33.n128_f32[0])
          {
            v36 = 1;
          }

          else
          {
            v36 = 2;
          }

          if (v31.n128_f32[0] < v33.n128_f32[0])
          {
            v35 = 1;
          }

          else
          {
            v35 = 2;
          }
        }
      }

      else
      {
        v34 = 2;
        if (v31.n128_f32[0] >= v33.n128_f32[0])
        {
          v36 = 0;
          v35 = 1;
        }

        else
        {
          v35 = 0;
          if (v32 >= v33.n128_f32[0])
          {
            v36 = 1;
          }

          else
          {
            v36 = 2;
          }

          if (v32 < v33.n128_f32[0])
          {
            v34 = 1;
          }

          else
          {
            v34 = 2;
          }
        }
      }

      v33.n128_u64[0] = __PAIR64__(v34, v35);
      v33.n128_u32[2] = v36;
      v49 = v33;
      v37 = [(NTKCrosswindQuad *)self _colorCompositionForDate:v17];
      v39 = v38;
      v56 = 0;
      v55 = 0;
      v57 = 0;
      v52 = -1;
      v53 = v37;
      v54 = 0;
      NTKCrosswindBuildSectorsConfiguration(&v64, &v52, &v57, v50, v49);
      v56 = 0;
      v55 = 0;
      v51 = 0;
      v52 = -1;
      v53 = v39;
      v54 = 1;
      NTKCrosswindBuildSectorsConfiguration(&v58, &v52, &v51, v50, v49);
      v49.n128_u64[0] = __PAIR64__(v51, v57);
      AngleIndiciesFromSectorsConfiguration = NTKCrosswindGetAngleIndiciesFromSectorsConfiguration(&v64);
      v46 = LODWORD(AngleIndiciesFromSectorsConfiguration);
      v41 = NTKCrosswindGetAngleIndiciesFromSectorsConfiguration(&v58);
      v42 = *(&v64 + v46 + 4);
      v43 = *(v59 + SHIDWORD(v41));
      v45 = *(v59 + v44);
      *self->_transitionContext.transitionInnerGradientIndicies = v98;
      self->_transitionContext.transitionInnerGradientIndicies[2] = v99;
      *self->_transitionContext.transitionOuterGradientIndicies = v48;
      *self->_anon_344 = 0;
      *&self->_anon_344[4] = v47;
      *&self->_anon_344[12] = v96;
      *&self->_anon_344[28] = v97;
      *&self->_anon_344[36] = v42;
      *&self->_anon_344[44] = v43;
      *&self->_anon_344[52] = v45;
      *&self->_anon_344[60] = v37;
      *&self->_anon_344[68] = v39;
      *&self->_anon_344[76] = v49.n128_u64[0];
    }

    else
    {
      *self->_transitionContext.transitionInnerGradientIndicies = 0u;
      *&self->_transitionContext.transitionOuterGradientIndicies[1] = 0u;
      *&self->_anon_344[12] = 0u;
      *&self->_anon_344[28] = 0u;
      *&self->_anon_344[44] = 0u;
      *&self->_anon_344[60] = 0u;
      *&self->_anon_344[76] = 0;
    }
  }
}

- (void)setTritiumOverrideDate:(id)date hourRadians:(double)radians minuteRadians:(double)minuteRadians secondRadians:(double)secondRadians
{
  dateCopy = date;
  if (dateCopy)
  {
    v9 = NTKCrosswindHourMinuteSecondAnglesToPolarAngles();
    *self->_startOverrideAngles = v9;
    *self->_endOverrideAngles = v9;
    tritiumOverrideDate = self->_tritiumOverrideDate;
    if ((NTKEqualObjects() & 1) == 0)
    {
      objc_storeStrong(&self->_tritiumOverrideDate, date);
      v11 = CACurrentMediaTime();
      self->_startOverrideTime = v11;
      self->_endOverrideTime = v11;
      v12 = [(NTKCrosswindColorSequencing *)self->_colorSequencer colorCompositionForDate:dateCopy];
      v14 = v13;
      v40 = 0;
      v41 = 0;
      v39 = 0;
      calendar = self->_calendar;
      NTKHourMinuteSecondAnglesForTime();
      v16 = NTKCrosswindHourMinuteSecondAnglesToPolarAngles();
      if (v16.n128_f32[0] >= v16.n128_f32[1])
      {
        v19 = 2;
        if (v16.n128_f32[1] >= v16.n128_f32[2])
        {
          v20 = 0;
          v18 = 1;
        }

        else
        {
          v18 = 0;
          if (v16.n128_f32[0] >= v16.n128_f32[2])
          {
            v20 = 1;
          }

          else
          {
            v20 = 2;
          }

          if (v16.n128_f32[0] < v16.n128_f32[2])
          {
            v19 = 1;
          }

          else
          {
            v19 = 2;
          }
        }
      }

      else
      {
        v18 = 2;
        if (v16.n128_f32[0] >= v16.n128_f32[2])
        {
          v20 = 0;
          v19 = 1;
        }

        else
        {
          v19 = 0;
          if (v16.n128_f32[1] >= v16.n128_f32[2])
          {
            v20 = 1;
          }

          else
          {
            v20 = 2;
          }

          if (v16.n128_f32[1] < v16.n128_f32[2])
          {
            v18 = 1;
          }

          else
          {
            v18 = 2;
          }
        }
      }

      v17.n128_u64[0] = __PAIR64__(v18, v19);
      v17.n128_u32[2] = v20;
      v26 = v17;
      v22 = v20;
      v38 = 0;
      memset(v37, 0, sizeof(v37));
      v36 = 0u;
      v35 = 0;
      memset(v34, 0, sizeof(v34));
      v33 = 0u;
      v32 = 0;
      v31 = 0;
      v28 = -1;
      v29 = v12;
      v30 = 256;
      v27 = v16;
      NTKCrosswindBuildSectorsConfiguration(&v36, &v28, 0, v16, v17);
      v32 = 0;
      v31 = 0;
      v28 = -1;
      v29 = v14;
      v30 = 257;
      NTKCrosswindBuildSectorsConfiguration(&v33, &v28, 0, v27, v26);
      AngleIndiciesFromSectorsConfiguration = NTKCrosswindGetAngleIndiciesFromSectorsConfiguration(&v36);
      v26.n128_u32[0] = LODWORD(AngleIndiciesFromSectorsConfiguration);
      v24 = NTKCrosswindGetAngleIndiciesFromSectorsConfiguration(&v33);
      v25 = *(v34 + SHIDWORD(v24));
      self->_tritiumOverrideContext.gradientIndiciesForHandContentColors[0] = *(v37 + v26.n128_i32[0]);
      self->_tritiumOverrideContext.gradientIndiciesForHandContentColors[1] = v25;
      self->_tritiumOverrideContext.composition.innerSecondGradientIndex = v12;
      self->_tritiumOverrideContext.composition.outerSecondGradientIndex = v14;
      self->_tritiumOverrideContext.secondAngleIndexForRelativeAngleOrdering = v22;
    }
  }

  else
  {
    v21 = self->_tritiumOverrideDate;
    self->_tritiumOverrideDate = 0;

    *self->_tritiumOverrideContext.gradientIndiciesForHandContentColors = 0u;
    self->_tritiumOverrideContext.composition = 0u;
    self->_tritiumOverrideContext.secondAngleIndexForRelativeAngleOrdering = 0;
  }
}

- (void)setupForQuadView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  screenScale = self->_screenScale;
  self->_renderSize.width = v6 * screenScale;
  self->_renderSize.height = v7 * screenScale;
  colorPixelFormat = [viewCopy colorPixelFormat];

  v9 = [(NTKCrosswindQuad *)self _createRenderPipelineWithPixelFormat:colorPixelFormat aodSupported:0];
  renderPipelineState = self->_renderPipelineState;
  self->_renderPipelineState = v9;

  v11 = [(NTKCrosswindQuad *)self _createRenderPipelineWithPixelFormat:colorPixelFormat aodSupported:1];
  renderPipelineStateAodTransition = self->_renderPipelineStateAodTransition;
  self->_renderPipelineStateAodTransition = v11;

  _createVertexBuffer = [(NTKCrosswindQuad *)self _createVertexBuffer];
  vertexBuffer = self->_vertexBuffer;
  self->_vertexBuffer = _createVertexBuffer;

  _objc_release_x1();
}

- (void)renderForDisplayWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  [encoderCopy setLabel:@"Crosswind Render Encoder"];
  v9[0] = 0;
  v9[1] = 0;
  renderSize = self->_renderSize;
  v11 = xmmword_A950;
  [encoderCopy setViewport:v9];
  v5 = &OBJC_IVAR___NTKCrosswindQuad__renderPipelineState;
  if (self->_tritiumProgress > 0.0)
  {
    v5 = &OBJC_IVAR___NTKCrosswindQuad__renderPipelineStateAodTransition;
  }

  [encoderCopy setRenderPipelineState:*&self->CLKUIQuad_opaque[*v5]];
  [encoderCopy setCullMode:0];
  bzero(v9, 0x2C0uLL);
  v8 = 0;
  [(NTKCrosswindQuad *)self _prepareUniformsForRendering:v9 withResult:&v8];
  v6 = [(MTLDevice *)self->_device newBufferWithBytes:v9 length:704 options:1];
  [encoderCopy setVertexBuffer:self->_vertexBuffer offset:0 atIndex:0];
  [encoderCopy setVertexBuffer:v6 offset:0 atIndex:1];
  [encoderCopy setFragmentBuffer:v6 offset:0 atIndex:0];
  if (v8 == 1)
  {
    delegate = [(NTKCrosswindQuad *)self delegate];
    [delegate crosswindQuadWillUpdateForegroundColors:self];
  }

  [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
  [(NTKCrosswindQuad *)self setAnimatingOverrideDate:HIBYTE(v8)];
}

- (void)setAnimatingOverrideDate:(BOOL)date
{
  if (self->_animatingOverrideDate != date)
  {
    self->_animatingOverrideDate = date;
    delegate = [(NTKCrosswindQuad *)self delegate];
    [delegate crosswindQuadDidUpdateAnimatingOverrideDate:self];
  }
}

- (id)_createRenderPipelineWithPixelFormat:(unint64_t)format aodSupported:(BOOL)supported
{
  if (!self->_binaryArchive)
  {
    v6 = sub_454C();
    v7 = [CLKUIMetalBinaryArchive archiveWithName:@"crosswind" bundle:v6 device:self->_device];
    binaryArchive = self->_binaryArchive;
    self->_binaryArchive = v7;
  }

  v9 = objc_opt_new();
  supportedCopy = supported;
  [v9 setConstantValue:&supportedCopy type:53 atIndex:0];
  v10 = self->_library;
  v11 = [(MTLLibrary *)v10 newFunctionWithName:@"crosswindVertexShader"];
  v12 = +[MTLFunctionDescriptor functionDescriptor];
  [v12 setName:@"crosswindQuadtoneConicFragmentShader"];
  v23 = v9;
  [v12 setConstantValues:v9];
  v13 = [(CLKUIMetalBinaryArchive *)self->_binaryArchive newFunctionInLibrary:v10 withDescriptor:v12];
  if (!v13)
  {
    v14 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_7768(self);
    }
  }

  v15 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v15 setVertexFunction:v11];
  [v15 setFragmentFunction:v13];
  [v15 setLabel:@"Crosswind Render Pipeline"];
  colorAttachments = [v15 colorAttachments];
  [colorAttachments objectAtIndexedSubscript:0];
  v18 = v17 = v11;

  [v18 setPixelFormat:format];
  [v18 setBlendingEnabled:1];
  [v18 setRgbBlendOperation:0];
  [v18 setAlphaBlendOperation:0];
  [v18 setSourceRGBBlendFactor:4];
  [v18 setSourceAlphaBlendFactor:4];
  [v18 setDestinationRGBBlendFactor:5];
  [v18 setDestinationAlphaBlendFactor:5];
  v19 = [(CLKUIMetalBinaryArchive *)self->_binaryArchive newRenderPipelineStateForDevice:self->_device withDescriptor:v15];
  if (!v19)
  {
    v20 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_77F4(&self->_device);
    }
  }

  return v19;
}

- (id)_createVertexBuffer
{
  v4[0] = xmmword_A968;
  v4[1] = unk_A978;
  v2 = [(MTLDevice *)self->_device newBufferWithBytes:v4 length:32 options:1];

  return v2;
}

- (id)_handContentColorAtIndex:(unint64_t)index colors:(id *)colors
{
  if (self->_renderedTransitionProgress > 0.0)
  {
    v7 = &self->_transitionContext + 8 * index;
    v8 = colors[*(v7 + 7)];
    v9 = colors[*(v7 + 4)];
    v10 = CLKUIInterpolateBetweenColors();
LABEL_3:

    goto LABEL_8;
  }

  v10 = colors[self->_renderedGradientIndiciesForHandContentColors[index]];
  if (self->_tritiumProgress > 0.0 && index <= 1 && self->_tritiumOverrideDate)
  {
    v9 = colors[self->_tritiumOverrideContext.gradientIndiciesForHandContentColors[index]];
    v11 = CLKUIInterpolateBetweenColors();

    v10 = v11;
    goto LABEL_3;
  }

LABEL_8:

  return v10;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)_colorCompositionForDate:(id)date
{
  dateCopy = date;
  if (self->_overrideDate != dateCopy || (innerSecondGradientIndex = self->_overrideComposition.innerSecondGradientIndex, outerSecondGradientIndex = self->_overrideComposition.outerSecondGradientIndex, NTKCrosswindColorCompositionEqualToComposition(innerSecondGradientIndex, outerSecondGradientIndex, -1, -1)))
  {
    innerSecondGradientIndex = [(NTKCrosswindColorSequencing *)self->_colorSequencer colorCompositionForDate:dateCopy];
    outerSecondGradientIndex = v7;
  }

  v8 = innerSecondGradientIndex;
  v9 = outerSecondGradientIndex;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (void)_prepareUniformsForRendering:(id *)rendering withResult:(id *)result
{
  self->_hasEverPreparedForRendering = 1;
  __asm { FMOV            V1.2D, #0.5 }

  *&rendering->var0 = vcvt_f32_f64(vmulq_f64(self->_renderSize, _Q1));
  screenScale = self->_screenScale;
  *&rendering->var2 = vcvt_f32_f64(vmulq_n_f64(*&self->_innerCircleRadius, screenScale));
  *&screenScale = screenScale * self->_outerCircleRadius;
  rendering->var5.var1[0] = *&screenScale;
  *&rendering->var5.var2[1] = *&self->_baseLayerBackgroundColor[5];
  *&rendering->var6.var1[1] = *&self->_baseLayerForegroundColor[5];
  v13 = *&self->_anon_e0[160];
  v12 = *&self->_anon_e0[176];
  v14 = *&self->_anon_e0[144];
  *&rendering[1].var6.var0 = *&self->_anon_e0[128];
  *rendering[1].var6.var2 = v14;
  *&rendering[1].var8.var0 = v13;
  *rendering[1].var8.var2 = v12;
  v16 = *&self->_anon_e0[96];
  v15 = *&self->_anon_e0[112];
  v17 = *&self->_anon_e0[80];
  *&rendering->var10 = *&self->_anon_e0[64];
  *rendering->var12 = v17;
  *&rendering[1].var2 = v16;
  *&rendering[1].var5.var1[2] = v15;
  v19 = *&self->_anon_e0[32];
  v18 = *&self->_anon_e0[48];
  v20 = *&self->_anon_e0[16];
  *&rendering->var6.var2[2] = *self->_anon_e0;
  *&rendering->var8.var1[1] = v20;
  *&rendering->var8.var2[2] = v19;
  *&rendering->var9.var1[2] = v18;
  v21 = *&self->_anon_1a0[48];
  v23 = *self->_anon_1a0;
  v22 = *&self->_anon_1a0[16];
  *&rendering[1].var11[1] = *&self->_anon_1a0[32];
  *&rendering[2].var0 = v21;
  *rendering[1].var9.var1 = v23;
  *&rendering[1].var9.var2[1] = v22;
  v24 = *&self->_anon_1a0[112];
  v26 = *&self->_anon_1a0[64];
  v25 = *&self->_anon_1a0[80];
  *&rendering[2].var6.var1[1] = *&self->_anon_1a0[96];
  *&rendering[2].var6.var2[2] = v24;
  *rendering[2].var5.var1 = v26;
  *&rendering[2].var5.var2[1] = v25;
  v27 = *&self->_anon_1a0[176];
  v29 = *&self->_anon_1a0[128];
  v28 = *&self->_anon_1a0[144];
  *&rendering[2].var9.var1[2] = *&self->_anon_1a0[160];
  *&rendering[2].var10 = v27;
  *&rendering[2].var8.var1[1] = v29;
  *&rendering[2].var8.var2[2] = v28;
  renderedGradientsNeedUpdate = self->_renderedGradientsNeedUpdate;
  self->_renderedGradientsNeedUpdate = 0;
  renderedHandContentColorsNeedUpdate = self->_renderedHandContentColorsNeedUpdate;
  self->_renderedHandContentColorsNeedUpdate = 0;
  overrideDate = [(NTKCrosswindQuad *)self overrideDate];
  v31 = overrideDate;
  if (overrideDate)
  {
    v32 = overrideDate;
  }

  else
  {
    v32 = +[NTKDate faceDate];
  }

  v33 = v32;

  v34 = CACurrentMediaTime();
  tritiumOverrideDate = self->_tritiumOverrideDate;
  endOverrideTime = self->_endOverrideTime;
  v118 = v33;
  if (v34 >= endOverrideTime && *&self->_overrideDate == 0)
  {
    calendar = self->_calendar;
    NTKHourMinuteSecondAnglesForTime();
    v44 = NTKCrosswindHourMinuteSecondAnglesToPolarAngles();
    v127 = v44.n128_f32[1];
    v128 = v44.n128_f32[0];
    v126 = v44.n128_f32[2];
LABEL_18:
    v57 = [(NTKCrosswindQuad *)self _colorCompositionForDate:v33];
    v59 = v58;
    v60 = 0;
    goto LABEL_24;
  }

  startOverrideTime = self->_startOverrideTime;
  v38 = endOverrideTime - startOverrideTime;
  if (v38 <= 0.0)
  {
    v42 = 0;
    v40 = 1.0;
  }

  else
  {
    v39 = (v34 - startOverrideTime) / v38;
    v40 = 1.0;
    if (v39 >= 1.0)
    {
      v42 = 0;
    }

    else
    {
      *&v39 = v39;
      [(CAMediaTimingFunction *)self->_overrideDateMediaTimingFunction _solveForInput:v39];
      v40 = v41;
      v42 = 1;
    }
  }

  v120 = *self->_endOverrideAngles;
  v123 = *self->_startOverrideAngles;
  CLKInterpolateShortestPathBetweenAnglesUnclipped();
  CLKWrapRadians();
  v128 = v45;
  CLKInterpolateShortestPathBetweenAnglesUnclipped();
  CLKWrapRadians();
  v127 = v46;
  CLKInterpolateShortestPathBetweenAnglesUnclipped();
  CLKWrapRadians();
  v126 = v47;
  if (!v42)
  {
    goto LABEL_18;
  }

  v124 = *self->_renderedAngles;
  v48 = NTKCrosswindPolarFullTurnAngleCrossingBetweenAngles();
  v49 = NTKCrosswindPolarFullTurnAngleCrossingBetweenAngles();
  v50.i32[0] = NTKCrosswindPolarFullTurnAngleCrossingBetweenAngles() + v49 + v48;
  v50.i32[1] = v49 + v48;
  *self->_fullTurnAngleCrossings = vadd_s32(*self->_fullTurnAngleCrossings, v50);
  var1 = rendering[4].var8.var1;
  v52 = *self->_transitionContext.transitionInnerGradientIndicies;
  LODWORD(rendering[4].var8.var1[2]) = self->_transitionContext.transitionInnerGradientIndicies[2];
  *rendering[4].var8.var1 = v52;
  *rendering[4].var8.var2 = *self->_transitionContext.transitionOuterGradientIndicies;
  v53 = *self->_fullTurnAngleCrossings;
  if (v53)
  {
    v54 = 0;
    v55 = v53;
    do
    {
      *(&v129 + NTKCrosswindOffsetIndexWrapped(v54, v55, 3)) = *(var1 + v54);
      ++v54;
    }

    while (v54 != 3);
    *var1 = v129;
    rendering[4].var8.var1[2] = *(&v129 + 2);
    v56 = *&self->_fullTurnAngleCrossings[4];
    if (!v56)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v56 = HIDWORD(*self->_fullTurnAngleCrossings);
  if (HIDWORD(v53))
  {
LABEL_20:
    v61 = 0;
    var2 = rendering[4].var8.var2;
    v63 = v56;
    do
    {
      *(&v129 + NTKCrosswindOffsetIndexWrapped(v61, v63, 2)) = var2[v61];
      ++v61;
    }

    while (v61 != 2);
    *var2 = v129;
  }

LABEL_23:
  *&v64 = 1.0 - v40;
  rendering[4].var8.var0 = v64;
  v57 = *&self->_anon_344[60];
  v59 = *&self->_anon_344[68];
  v60 = 1;
LABEL_24:
  innerSecondGradientIndex = self->_renderedColorComposition.innerSecondGradientIndex;
  outerSecondGradientIndex = self->_renderedColorComposition.outerSecondGradientIndex;
  self->_renderedColorComposition.innerSecondGradientIndex = v57;
  self->_renderedColorComposition.outerSecondGradientIndex = v59;
  v116 = NTKCrosswindColorCompositionEqualToComposition(v57, v59, innerSecondGradientIndex, outerSecondGradientIndex);
  v67.n128_f32[0] = v128;
  v68 = v127;
  v69.n128_f32[0] = v126;
  v70 = v67;
  v70.n128_f32[1] = v68;
  if (v67.n128_f32[0] >= v68)
  {
    v74 = 2;
    if (v68 >= v69.n128_f32[0])
    {
      v73 = 0;
      v71 = 1;
    }

    else
    {
      v71 = 0;
      if (v67.n128_f32[0] >= v69.n128_f32[0])
      {
        v73 = 1;
      }

      else
      {
        v73 = 2;
      }

      if (v67.n128_f32[0] < v69.n128_f32[0])
      {
        v74 = 1;
      }

      else
      {
        v74 = 2;
      }
    }
  }

  else
  {
    if (v68 < v69.n128_f32[0])
    {
      v71 = 1;
    }

    else
    {
      v71 = 2;
    }

    if (v68 >= v69.n128_f32[0])
    {
      v72 = 1;
    }

    else
    {
      v72 = 2;
    }

    if (v67.n128_f32[0] < v69.n128_f32[0])
    {
      v73 = v72;
    }

    else
    {
      v71 = 2;
      v73 = 0;
    }

    v74 = v67.n128_f32[0] >= v69.n128_f32[0];
  }

  v70.n128_f32[2] = v126;
  v69.n128_u64[0] = __PAIR64__(v71, v74);
  v69.n128_u32[2] = v73;
  v121 = v69;
  v110 = v127;
  v112 = v128;
  if (v60)
  {
    v75 = *&self->_anon_344[76];
    v76 = v75;
    v77 = HIDWORD(v75);
  }

  else
  {
    v76 = -1;
    v77 = -1;
  }

  v130 = 0;
  *&v129 = v76;
  *(&v129 + 1) = v57;
  v125 = v70;
  NTKCrosswindBuildSectorsConfiguration(rendering[2].var12, &v129, 0, v70, v121);
  v130 = 1;
  *&v129 = v77;
  *(&v129 + 1) = v59;
  NTKCrosswindBuildSectorsConfiguration(&rendering[3].var6.var1[1], &v129, 0, v125, v121);
  if (v60)
  {
    sub_60AC(&rendering[3].var2, rendering[2].var12[0], (*self->_fullTurnAngleCrossings - *&self->_anon_344[4]));
    sub_60AC(&rendering[3].var6.var2[2], LODWORD(rendering[3].var6.var1[1]), *&self->_fullTurnAngleCrossings[4] - *&self->_anon_344[8]);
  }

  tritiumProgress = self->_tritiumProgress;
  if (tritiumProgress > 0.0)
  {
    v79 = v125;
    if (tritiumOverrideDate)
    {
      v57 = self->_tritiumOverrideContext.composition.innerSecondGradientIndex;
      v59 = self->_tritiumOverrideContext.composition.outerSecondGradientIndex;
      secondAngleIndexForRelativeAngleOrdering = self->_tritiumOverrideContext.secondAngleIndexForRelativeAngleOrdering;
      LODWORD(v129) = 0;
      if (v112 >= v110)
      {
        v81 = v127;
      }

      else
      {
        v81 = v128;
      }

      if (v112 >= v110)
      {
        v82 = v128;
      }

      else
      {
        v82 = v127;
      }

      *(&v129 + 4) = __PAIR64__(LODWORD(v82), LODWORD(v81));
      HIDWORD(v129) = 1086918619;
      v83 = (*(&v129 + secondAngleIndexForRelativeAngleOrdering) + *(&v129 + secondAngleIndexForRelativeAngleOrdering + 1)) * 0.5;
      v84.n128_u32[3] = v125.n128_u32[3];
      v79.n128_u64[0] = v125.n128_u64[0];
      v79.n128_f32[2] = v83;
      v79.n128_u32[3] = v125.n128_u32[3];
      if (v112 >= v110)
      {
        if (v83 <= v112)
        {
          v88 = 1;
        }

        else
        {
          v88 = 2;
        }

        if (v83 > v112)
        {
          v90 = 1;
        }

        else
        {
          v90 = 2;
        }

        v87 = v83 <= v110;
        if (v83 > v110)
        {
          v89 = v90;
        }

        else
        {
          v88 = 0;
          v89 = 2;
        }
      }

      else
      {
        if (v83 > v110)
        {
          v85 = 1;
        }

        else
        {
          v85 = 2;
        }

        if (v83 <= v110)
        {
          v86 = 1;
        }

        else
        {
          v86 = 2;
        }

        if (v83 > v112)
        {
          v87 = v85;
        }

        else
        {
          v87 = 2;
        }

        if (v83 > v112)
        {
          v88 = v86;
        }

        else
        {
          v88 = 0;
        }

        v89 = v83 <= v112;
      }

      v84.n128_u64[0] = __PAIR64__(v87, v89);
      v84.n128_u32[2] = v88;
      v121 = v84;
    }

    v113 = v79;
    v130 = 256;
    *&v129 = -1;
    *(&v129 + 1) = v57;
    NTKCrosswindBuildSectorsConfiguration(&rendering[3].var9.var1[2], &v129, 0, v79, v121);
    v130 = 257;
    *&v129 = -1;
    *(&v129 + 1) = v59;
    NTKCrosswindBuildSectorsConfiguration(rendering[4].var5.var1, &v129, 0, v113, v121);
  }

  v91 = v60;
  v114 = tritiumOverrideDate;
  renderedTritiumProgressNeedsUpdate = self->_renderedTritiumProgressNeedsUpdate;
  self->_renderedTritiumProgressNeedsUpdate = 0;
  v92 = tritiumProgress;
  rendering[3].var9.var1[0] = v92;
  AngleIndiciesFromSectorsConfiguration = NTKCrosswindGetAngleIndiciesFromSectorsConfiguration(rendering[2].var12);
  v122 = LODWORD(AngleIndiciesFromSectorsConfiguration);
  v94 = NTKCrosswindGetAngleIndiciesFromSectorsConfiguration(&rendering[3].var6.var1[1]);
  v95 = *(&rendering[3].var2 + v122);
  v96 = rendering[3].var6.var2[SHIDWORD(v94) + 2];
  *&v129 = v95;
  *(&v129 + 1) = v96;
  v98 = rendering[3].var6.var2[v97 + 2];
  v99 = self->_renderedGradientIndiciesForHandContentColors[0];
  v100 = self->_renderedGradientIndiciesForHandContentColors[1];
  v101 = self->_renderedGradientIndiciesForHandContentColors[2];
  self->_renderedGradientIndiciesForHandContentColors[2] = v98;
  *self->_renderedGradientIndiciesForHandContentColors = v129;
  *self->_renderedAngles = v125;
  v103 = *&rendering[3].var2;
  v102 = *&rendering[3].var5.var1[2];
  v104 = *rendering[2].var12;
  *&self->_anon_28c[20] = *&rendering[3].var6.var0;
  *self->_renderedInnerSectorsConfiguration.gradientIndicies = v103;
  *&self->_anon_28c[4] = v102;
  *&self->_renderedInnerSectorsConfiguration.angleCount = v104;
  v106 = *&rendering[3].var6.var2[2];
  v105 = *&rendering[3].var8.var1[1];
  v107 = *&rendering[3].var6.var1[1];
  *&self->_anon_2c4[20] = *&rendering[3].var8.var2[2];
  *self->_renderedOuterSectorsConfiguration.gradientIndicies = v106;
  *&self->_anon_2c4[4] = v105;
  *&self->_renderedOuterSectorsConfiguration.angleCount = v107;
  *&v106 = self->_renderedTransitionProgress;
  v130 = v98;
  LODWORD(self->_renderedTransitionProgress) = rendering[4].var8.var0;
  v108 = CLKFloatEqualsFloat();
  NTKCrosswindDeduplicateAnglesInSectorsConfiguration(rendering[2].var12);
  NTKCrosswindDeduplicateAnglesInSectorsConfiguration(&rendering[3].var6.var1[1]);
  if (tritiumProgress > 0.0)
  {
    NTKCrosswindDeduplicateAnglesInSectorsConfiguration(&rendering[3].var9.var1[2]);
    NTKCrosswindDeduplicateAnglesInSectorsConfiguration(rendering[4].var5.var1);
  }

  if (result)
  {
    v109 = 1;
    if (!renderedGradientsNeedUpdate && v116 && !renderedHandContentColorsNeedUpdate && !(v99 ^ v95 | v100 ^ v96 | v101 ^ v98))
    {
      v109 = v108 ^ 1 | (v114 != 0 && renderedTritiumProgressNeedsUpdate);
    }

    result->var0 = v109;
    result->var1 = v91;
  }
}

- (NTKCrosswindQuadDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end