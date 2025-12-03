@interface NTKUnity2025Quad
- (NTKUnity2025Quad)initWithDevice:(id)device;
- (id)loadAssetWithPath:(id)path enableMeshAllocation:(BOOL)allocation;
- (void)blendToFragmentUniformsWithIdx1:(int)idx1 idx2:(int)idx2 percent:(float)percent uniforms:(id *)uniforms;
- (void)ensureMeshLoaded:(int64_t)loaded;
- (void)initRenderPipeline;
- (void)loadMesh:(int64_t)mesh;
- (void)loadMeshesWithAssetName:(id)name numberPath:(id)path hour:(int)hour;
- (void)morphBetweenColorways:(float)colorways index1:(int)index1 index2:(int)index2;
- (void)renderForDisplayWithEncoder:(id)encoder;
- (void)renderWithCommandBuffer:(id)buffer passDescriptor:(id)descriptor;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setState:(int)state;
- (void)setTritiumProgress:(double)progress;
- (void)setupForQuadView:(id)view;
- (void)unloadMesh:(int64_t)mesh;
@end

@implementation NTKUnity2025Quad

- (NTKUnity2025Quad)initWithDevice:(id)device
{
  deviceCopy = device;
  v20.receiver = self;
  v20.super_class = NTKUnity2025Quad;
  v6 = [(CLKUIQuad *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    mEMORY[0x277CFA798] = [MEMORY[0x277CFA798] sharedDevice];
    mtlDevice = v7->_mtlDevice;
    v7->_mtlDevice = mEMORY[0x277CFA798];

    v10 = v7->_mtlDevice;
    v11 = sub_23C09DC80();
    v12 = [(MTLDevice *)v10 newDefaultLibraryWithBundle:v11 error:0];
    library = v7->_library;
    v7->_library = v12;

    [deviceCopy screenScale];
    v7->_screenScale = v14;
    v7->_currentSettingIdx = 0;
    v7->_smoothedTritiumProgress = 0.0;
    v7->_deviceFPS = 30.0;
    v7->_deltaTime = 0.0333333333;
    v15 = &xmmword_23C0A0B60;
    v16 = &xmmword_27E1EE140;
    v17 = 12;
    do
    {
      v16[-2] = NTKUnity2025MathLinearizeRGBColor(*(v15 - 3));
      v16[-1] = NTKUnity2025MathLinearizeRGBColor(*(v15 - 2));
      *v16 = NTKUnity2025MathLinearizeRGBColor(*(v15 - 1));
      v18 = *v15;
      v15 += 8;
      v16[1] = NTKUnity2025MathLinearizeRGBColor(v18);
      v16 += 4;
      --v17;
    }

    while (v17);
  }

  return v7;
}

- (void)setupForQuadView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  screenScale = self->_screenScale;
  self->_renderSize.width = v6 * screenScale;
  self->_renderSize.height = v7 * screenScale;
  superview = [viewCopy superview];
  [superview safeAreaInsets];
  v10 = v9;
  superview2 = [viewCopy superview];
  [superview2 safeAreaInsets];
  v13 = v10 - v12;

  v14 = -v13;
  if (v13 >= 0.0)
  {
    v14 = v13;
  }

  v15 = self->_screenScale * v14;
  self->_renderSize.height = self->_renderSize.height + v15;
  colorPixelFormat = [viewCopy colorPixelFormat];

  self->_pixelFormat = colorPixelFormat;

  MEMORY[0x2821F9670](self, sel_initRenderPipeline);
}

- (void)renderWithCommandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  if (self->_editingColors)
  {
    v6 = (2 * self->_editingIndex1);
    v7 = (2 * self->_editingIndex2);
    editingFraction = self->_editingFraction;
  }

  else
  {
    currentSettingIdx = self->_currentSettingIdx;
    v6 = (2 * currentSettingIdx);
    v7 = (2 * currentSettingIdx) | 1u;
    editingFraction = self->_smoothedTritiumProgress;
  }

  descriptorCopy = descriptor;
  bufferCopy = buffer;
  *&v12 = editingFraction;
  [(NTKUnity2025Quad *)self blendBackgroundWithIdx1:v6 idx2:v7 percent:v12];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  colorAttachments = [descriptorCopy colorAttachments];
  v20 = [colorAttachments objectAtIndexedSubscript:0];
  [v20 setClearColor:{v14, v16, v18, 1.0}];

  v21 = [bufferCopy renderCommandEncoderWithDescriptor:descriptorCopy];

  [v21 setDepthStencilState:self->_depthStencilState];
  [(NTKUnity2025Quad *)self renderForDisplayWithEncoder:v21];
  [v21 endEncoding];
}

- (void)renderForDisplayWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  if (self->_editingColors)
  {
    v64 = 2 * self->_editingIndex2;
    v65 = 2 * self->_editingIndex1;
    editingFraction = self->_editingFraction;
  }

  else
  {
    currentSettingIdx = self->_currentSettingIdx;
    v64 = (2 * currentSettingIdx) | 1;
    v65 = 2 * currentSettingIdx;
    editingFraction = self->_smoothedTritiumProgress;
  }

  overrideDate = self->_overrideDate;
  if (overrideDate)
  {
    faceDate = overrideDate;
  }

  else
  {
    faceDate = [MEMORY[0x277D2BFD8] faceDate];
  }

  v9 = faceDate;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v56 = v9;
  v54 = [currentCalendar components:96 fromDate:v9];
  hour = [v54 hour];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v11 = CLKLocaleIs24HourMode();
  v12 = 12;
  v13 = hour - 12;
  if (hour <= 12)
  {
    v13 = hour;
  }

  if (hour)
  {
    v12 = v13;
  }

  if ((v11 & 1) == 0)
  {
    hour = v12;
  }

  [(NTKUnity2025Quad *)self ensureMeshLoaded:hour, currentLocale];
  [encoderCopy setLabel:@"Unity2025 Render Encoder"];
  v79 = 0uLL;
  renderSize = self->_renderSize;
  v81 = xmmword_23C0A0A80;
  [encoderCopy setViewport:&v79];
  [encoderCopy setRenderPipelineState:self->_unity2025PipelineState];
  [encoderCopy setCullMode:1];
  [(CLKDevice *)self->_device screenBounds];
  v15 = v14;
  [(CLKDevice *)self->_device screenBounds];
  v17 = v15 / v16;
  *&v18 = NTKUnity2025MathBuildProjectionMatrix(0.25307, v17);
  v62 = v19;
  v63 = v18;
  v60 = v21;
  v61 = v20;
  v66 = &self->_hourStructs[hour];
  if (v66->numDigits >= 1)
  {
    v22 = 0;
    v23 = &unk_23C0A1120 + 20 * hour;
    v24 = *(v23 + 4);
    v58 = v23;
    v57 = v23 + 8;
    v25 = xmmword_23C0A0A90;
    v26 = xmmword_23C0A0AA0;
    v27 = xmmword_23C0A0AD0;
    v28 = xmmword_23C0A0AE0;
    selfCopy = self;
    do
    {
      v29 = 0;
      v87 = 0;
      v88 = 0;
      *&v30 = self->_smoothedTritiumProgress;
      v87 = __PAIR64__(v24, v30);
      v83 = v63;
      v84 = v62;
      v85 = v61;
      v86 = v60;
      v89[0] = v25;
      v89[1] = v26;
      v89[2] = xmmword_23C0A0AB0;
      v89[3] = xmmword_23C0A0AC0;
      v73 = 0u;
      v74 = 0;
      v75 = 0u;
      v76 = 0u;
      do
      {
        *(&v73 + v29 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(v89[v29])), v26, *&v89[v29], 1), v27, v89[v29], 2), v28, v89[v29], 3);
        ++v29;
      }

      while (v29 != 4);
      v79 = v73;
      renderSize = v74;
      v81 = v75;
      v82 = v76;
      v68 = [(MTLDevice *)self->_mtlDevice newBufferWithBytes:&v79 length:144 options:1];
      [encoderCopy setVertexBuffer:? offset:? atIndex:?];
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0;
      v32 = *&v57[4 * v22];
      DWORD1(v78) = *&v58[4 * v22];
      *&v31 = DWORD1(v78);
      DWORD2(v78) = v32;
      *&v31 = editingFraction;
      [(NTKUnity2025Quad *)self blendToFragmentUniformsWithIdx1:v65 idx2:v64 percent:&v73 uniforms:v31];
      v67 = [(MTLDevice *)self->_mtlDevice newBufferWithBytes:&v73 length:96 options:1];
      [encoderCopy setFragmentBuffer:? offset:? atIndex:?];
      v33 = 0;
      v69 = v22;
      v70 = &v66->digits[v22];
      do
      {
        v72 = v33;
        v34 = *(v70 + 8 * v33);
        vertexBuffers = [v34 vertexBuffers];
        v36 = [vertexBuffers objectAtIndexedSubscript:0];

        buffer = [v36 buffer];
        v71 = v36;
        [encoderCopy setVertexBuffer:buffer offset:objc_msgSend(v36 atIndex:{"offset"), 0}];

        submeshes = [v34 submeshes];
        v39 = [submeshes count];

        v40 = encoderCopy;
        if (v39)
        {
          v41 = 0;
          do
          {
            submeshes2 = [v34 submeshes];
            v43 = [submeshes2 objectAtIndexedSubscript:v41];

            primitiveType = [v43 primitiveType];
            indexCount = [v43 indexCount];
            indexType = [v43 indexType];
            indexBuffer = [v43 indexBuffer];
            buffer2 = [indexBuffer buffer];
            indexBuffer2 = [v43 indexBuffer];
            [v40 drawIndexedPrimitives:primitiveType indexCount:indexCount indexType:indexType indexBuffer:buffer2 indexBufferOffset:{objc_msgSend(indexBuffer2, "offset")}];

            ++v41;
            submeshes3 = [v34 submeshes];
            v51 = [submeshes3 count];
          }

          while (v51 > v41);
        }

        v33 = v72 + 1;
        encoderCopy = v40;
      }

      while (v72 != 4);

      v22 = v69 + 1;
      self = selfCopy;
      v26 = xmmword_23C0A0AA0;
      v25 = xmmword_23C0A0A90;
      v28 = xmmword_23C0A0AE0;
      v27 = xmmword_23C0A0AD0;
    }

    while (v69 + 1 < v66->numDigits);
  }
}

- (void)ensureMeshLoaded:(int64_t)loaded
{
  hourStructs = self->_hourStructs;
  if (!self->_hourStructs[loaded].digits[0].meshes[0])
  {
    [(NTKUnity2025Quad *)self loadMesh:loaded];
  }

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = CLKLocaleIs24HourMode();
  v8 = 13;
  if (v7)
  {
    v8 = 25;
  }

  if (!hourStructs[(loaded + 1) % v8].digits[0].meshes[0])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23C09E64C;
    block[3] = &unk_278BADFB0;
    block[4] = self;
    block[5] = (loaded + 1) % v8;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  if (!hourStructs[10].digits[0].meshes[0])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_23C09E67C;
    v9[3] = &unk_278BADFD8;
    v9[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }
}

- (void)unloadMesh:(int64_t)mesh
{
  if (mesh)
  {
    v3 = &self->_hourStructs[mesh];
    v5 = v3->digits[0].meshes[0];
    digits = v3->digits;
    if (v5)
    {
      meshes = digits[1].meshes;
      v7 = 5;
      do
      {
        v8 = *(meshes - 5);
        *(meshes - 5) = 0;

        v9 = *meshes;
        *meshes++ = 0;

        --v7;
      }

      while (v7);
    }
  }
}

- (void)loadMesh:(int64_t)mesh
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"NumberMesh%ld%ld", mesh / 10, mesh % 10];
  [NTKUnity2025Quad loadMeshesWithAssetName:"loadMeshesWithAssetName:numberPath:hour:" numberPath:? hour:?];
  if (mesh > 2)
  {
    v5 = -3;
  }

  else
  {
    [(NTKUnity2025Quad *)self unloadMesh:mesh + 21];
    v5 = 9;
  }

  [(NTKUnity2025Quad *)self unloadMesh:v5 + mesh];
}

- (id)loadAssetWithPath:(id)path enableMeshAllocation:(BOOL)allocation
{
  allocationCopy = allocation;
  pathCopy = path;
  if (allocationCopy)
  {
    if (!self->_allocator)
    {
      v7 = [objc_alloc(MEMORY[0x277CD71E8]) initWithDevice:self->_mtlDevice];
      allocator = self->_allocator;
      self->_allocator = v7;

      if (!self->_allocator)
      {
        v9 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          sub_23C09FAF0();
        }
      }
    }

    if (!self->_descriptor)
    {
      v10 = objc_alloc_init(MEMORY[0x277CD7B90]);
      descriptor = self->_descriptor;
      self->_descriptor = v10;

      v12 = objc_alloc(MEMORY[0x277CBEB18]);
      v13 = objc_alloc(MEMORY[0x277CD7B80]);
      v14 = [v13 initWithName:*MEMORY[0x277CD7AB0] format:786435 offset:0 bufferIndex:0];
      v15 = objc_alloc(MEMORY[0x277CD7B80]);
      v16 = [v15 initWithName:*MEMORY[0x277CD7AC0] format:720898 offset:16 bufferIndex:0];
      v17 = [v12 initWithObjects:{v14, v16, 0}];
      [(MDLVertexDescriptor *)self->_descriptor setAttributes:v17];

      v18 = objc_alloc(MEMORY[0x277CBEB18]);
      v19 = [objc_alloc(MEMORY[0x277CD7B88]) initWithStride:32];
      v20 = [v18 initWithObjects:{v19, 0}];
      [(MDLVertexDescriptor *)self->_descriptor setLayouts:v20];
    }
  }

  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 URLForResource:pathCopy withExtension:@"usdc"];
    if (v23)
    {
      v24 = objc_alloc(MEMORY[0x277CD7AD0]);
      if (allocationCopy)
      {
        v25 = [v24 initWithURL:v23 vertexDescriptor:self->_descriptor bufferAllocator:self->_allocator];
      }

      else
      {
        v25 = [v24 initWithURL:v23];
      }

      v26 = v25;
      if (v25)
      {
        goto LABEL_24;
      }

      v27 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        sub_23C09FB24();
      }
    }

    else
    {
      v27 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        sub_23C09FB58();
      }

      v26 = 0;
    }
  }

  else
  {
    v23 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_23C09FB8C();
    }

    v26 = 0;
  }

LABEL_24:

  return v26;
}

- (void)loadMeshesWithAssetName:(id)name numberPath:(id)path hour:(int)hour
{
  v68 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v9 = [(NTKUnity2025Quad *)self loadAssetWithPath:name enableMeshAllocation:1];
  v10 = [v9 objectAtPath:pathCopy];
  v11 = v10;
  v51 = v9;
  v52 = pathCopy;
  if (!v10)
  {
    v49 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
    {
      sub_23C09FBF4();
    }

    goto LABEL_35;
  }

  children = [v10 children];
  v13 = [children count];

  v55 = v13;
  if (v13 != 1)
  {
    children2 = [v11 children];
    v15 = [children2 count];

    if (v15 != 24)
    {
      v49 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        sub_23C09FBC0();
      }

LABEL_35:

      goto LABEL_36;
    }
  }

  if (hour < 0)
  {
    hourCopy = 23;
  }

  else
  {
    hourCopy = hour;
  }

  v17 = hour & ~(hour >> 31);
  if (v17 <= hourCopy)
  {
    v53 = hourCopy + 1;
    digits = self->_hourStructs[v17].digits;
    v54 = v11;
    while (1)
    {
      v18 = &self->_hourStructs[v17];
      v18->hour = v17;
      children3 = [v11 children];
      v20 = children3;
      v58 = v17;
      v21 = v55 == 1 ? 0 : v17;
      v22 = [children3 objectAtIndexedSubscript:v21];

      children4 = [v22 children];
      if ([children4 count] == 1)
      {
        break;
      }

      children5 = [v22 children];
      v25 = [children5 count];

      if (v25 == 2)
      {
        goto LABEL_15;
      }

LABEL_29:

      v17 = v58 + 1;
      digits = (digits + 96);
      v11 = v54;
      if (v58 + 1 == v53)
      {
        goto LABEL_36;
      }
    }

LABEL_15:
    v18->centerZ = 0.0;
    children6 = [v22 children];
    v27 = [children6 count];

    if (v27)
    {
      v28 = 0;
      v29 = digits;
      v30 = 99999.0;
      v31 = -99999.0;
      v57 = v22;
      do
      {
        v59 = v28 + 1;
        v18->numDigits = v28 + 1;
        children7 = [v22 children];
        v60 = v28;
        v33 = [children7 objectAtIndexedSubscript:v28];

        for (i = 0; i != 5; ++i)
        {
          children8 = [v33 children];
          v36 = [children8 objectAtIndexedSubscript:i];
          children9 = [v36 children];
          v38 = [children9 objectAtIndexedSubscript:0];

          if (!v38)
          {
            goto LABEL_24;
          }

          v39 = objc_alloc(MEMORY[0x277CD71E0]);
          mtlDevice = self->_mtlDevice;
          v61 = 0;
          v41 = [v39 initWithMesh:v38 device:mtlDevice error:&v61];
          v42 = v61;
          v43 = v29->meshes[i];
          v29->meshes[i] = v41;

          [v38 boundingBox];
          if (v30 >= v44)
          {
            v30 = v44;
          }

          [v38 boundingBox];
          if (v31 < v45)
          {
            v31 = v45;
          }

          v18->centerZ = (v30 + v31) * 0.5;

          if (!v29->meshes[i])
          {
LABEL_24:
            v46 = _NTKLoggingObjectForDomain();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
            {
              *buf = 67109632;
              v63 = v58;
              v64 = 1024;
              v65 = v60;
              v66 = 1024;
              v67 = i;
              _os_log_fault_impl(&dword_23C099000, v46, OS_LOG_TYPE_FAULT, "Error loading or creating mesh for hour:%d digit:%d submesh:%d", buf, 0x14u);
            }
          }
        }

        v22 = v57;
        children10 = [v57 children];
        v48 = [children10 count];

        ++v29;
        v28 = v59;
      }

      while (v48 > v59);
    }

    goto LABEL_29;
  }

LABEL_36:

  v50 = *MEMORY[0x277D85DE8];
}

- (void)initRenderPipeline
{
  if (!self->_binaryArchive)
  {
    v3 = MEMORY[0x277CFA788];
    v4 = sub_23C09DC80();
    v5 = [v3 archiveWithName:@"unity2025" bundle:v4 device:self->_mtlDevice];
    binaryArchive = self->_binaryArchive;
    self->_binaryArchive = v5;
  }

  functionDescriptor = [MEMORY[0x277CD6D78] functionDescriptor];
  [functionDescriptor setName:@"unity2025VertexShader"];
  v8 = [(CLKUIMetalBinaryArchive *)self->_binaryArchive newFunctionInLibrary:self->_library withDescriptor:functionDescriptor];
  if (!v8)
  {
    v9 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_23C09FC28(self);
    }
  }

  functionDescriptor2 = [MEMORY[0x277CD6D78] functionDescriptor];
  [functionDescriptor2 setName:@"unity2025FragmentShader"];
  v11 = [(CLKUIMetalBinaryArchive *)self->_binaryArchive newFunctionInLibrary:self->_library withDescriptor:functionDescriptor2];
  if (!v11)
  {
    v12 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_23C09FCB4(self);
    }
  }

  v13 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v13 setVertexFunction:v8];
  [v13 setFragmentFunction:v11];
  [v13 setDepthAttachmentPixelFormat:252];
  [v13 setRasterSampleCount:4];
  [v13 setLabel:@"Unity2025 Render Pipeline"];
  colorAttachments = [v13 colorAttachments];
  v15 = [colorAttachments objectAtIndexedSubscript:0];

  [v15 setPixelFormat:self->_pixelFormat];
  [v15 setBlendingEnabled:0];
  v16 = [(CLKUIMetalBinaryArchive *)self->_binaryArchive newRenderPipelineStateForDevice:self->_mtlDevice withDescriptor:v13];
  unity2025PipelineState = self->_unity2025PipelineState;
  self->_unity2025PipelineState = v16;

  v18 = objc_opt_new();
  [v18 setDepthCompareFunction:3];
  [v18 setDepthWriteEnabled:1];
  mEMORY[0x277CFA798] = [MEMORY[0x277CFA798] sharedDevice];
  v20 = [mEMORY[0x277CFA798] newDepthStencilStateWithDescriptor:v18];
  depthStencilState = self->_depthStencilState;
  self->_depthStencilState = v20;
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  overrideDate = self->_overrideDate;
  v8 = dateCopy;
  if ((NTKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_overrideDate, date);
  }
}

- (void)setState:(int)state
{
  if (self->_state != state)
  {
    if ((state - 1) >= 2)
    {
      v3 = 1.0 / self->_deviceFPS;
    }

    else
    {
      v3 = 0.0166666667;
    }

    self->_deltaTime = v3;
    if (state)
    {
      v4 = &OBJC_IVAR___NTKUnity2025Quad__triggerTwistAnimation;
      if (state == 2)
      {
        v5 = 1;
      }

      else
      {
        v4 = &OBJC_IVAR___NTKUnity2025Quad__twistTimerActive;
        v5 = 0;
      }

      *(&self->super.super.isa + *v4) = v5;
    }

    self->_state = state;
  }
}

- (void)setTritiumProgress:(double)progress
{
  self->_tritiumProgress = progress;
  self->_smoothedTritiumProgress = 0.0;
  tritiumProgress = self->_tritiumProgress;
  if (tritiumProgress > 0.0)
  {
    v4 = tritiumProgress;
    v5 = fminf(fmaxf(v4, 0.0), 1.0);
    v6 = (v5 * -2.0 + 3.0) * (v5 * v5);
    self->_smoothedTritiumProgress = v6;
  }
}

- (void)blendToFragmentUniformsWithIdx1:(int)idx1 idx2:(int)idx2 percent:(float)percent uniforms:(id *)uniforms
{
  v6 = 0;
  v7 = vdupq_lane_s64(COERCE__INT64(percent), 0);
  do
  {
    v8 = vcvtq_f64_f32(*(&unk_23C0A0B20 + 128 * idx1 + v6 * 4 + 80));
    *&uniforms->var0[v6] = vcvt_f32_f64(vmlaq_f64(v8, vsubq_f64(vcvtq_f64_f32(*(&unk_23C0A0B20 + 128 * idx2 + v6 * 4 + 80)), v8), v7));
    v6 += 2;
  }

  while (v6 != 8);
  v9 = (&unk_27E1EE120 + 64 * idx1);
  v10 = (&unk_27E1EE120 + 64 * idx2);
  *&uniforms->var1 = vmlaq_n_f32(v9[1], vsubq_f32(v10[1], v9[1]), percent);
  *&uniforms[1].var0[1] = vmlaq_n_f32(v9[2], vsubq_f32(v10[2], v9[2]), percent);
  *&uniforms[1].var0[5] = vmlaq_n_f32(v9[3], vsubq_f32(v10[3], v9[3]), percent);
  uniforms[1].var2 = percent;
}

- (void)morphBetweenColorways:(float)colorways index1:(int)index1 index2:(int)index2
{
  self->_editingColors = 1;
  self->_editingIndex1 = index1;
  self->_editingIndex2 = index2;
  self->_editingFraction = colorways;
  self->_state = 5;
  v5 = 2 * index1;
  v6 = (&unk_23C0A0B20 + 256 * index1);
  v7 = (&unk_23C0A0B20 + 256 * index2);
  *self->_backgroundColor = vmlaq_n_f32(v6[1], vsubq_f32(v7[1], v6[1]), colorways);
  if (colorways >= 0.5)
  {
    v5 = 2 * index2;
  }

  self->_isGreyscale = (v5 - 2) < 4;
  *self->_complicationForegroundColor = vmlaq_n_f32(*v6, vsubq_f32(*v7, *v6), colorways);
  if (index1 == index2)
  {
    self->_editingColors = 0;
    self->_currentSettingIdx = index1;
    self->_state = 4;
  }
}

@end