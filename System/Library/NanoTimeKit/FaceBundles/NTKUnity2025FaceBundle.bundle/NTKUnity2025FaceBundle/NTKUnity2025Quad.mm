@interface NTKUnity2025Quad
- (NTKUnity2025Quad)initWithDevice:(id)a3;
- (id)loadAssetWithPath:(id)a3 enableMeshAllocation:(BOOL)a4;
- (void)blendToFragmentUniformsWithIdx1:(int)a3 idx2:(int)a4 percent:(float)a5 uniforms:(id *)a6;
- (void)ensureMeshLoaded:(int64_t)a3;
- (void)initRenderPipeline;
- (void)loadMesh:(int64_t)a3;
- (void)loadMeshesWithAssetName:(id)a3 numberPath:(id)a4 hour:(int)a5;
- (void)morphBetweenColorways:(float)a3 index1:(int)a4 index2:(int)a5;
- (void)renderForDisplayWithEncoder:(id)a3;
- (void)renderWithCommandBuffer:(id)a3 passDescriptor:(id)a4;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setState:(int)a3;
- (void)setTritiumProgress:(double)a3;
- (void)setupForQuadView:(id)a3;
- (void)unloadMesh:(int64_t)a3;
@end

@implementation NTKUnity2025Quad

- (NTKUnity2025Quad)initWithDevice:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = NTKUnity2025Quad;
  v6 = [(CLKUIQuad *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = [MEMORY[0x277CFA798] sharedDevice];
    mtlDevice = v7->_mtlDevice;
    v7->_mtlDevice = v8;

    v10 = v7->_mtlDevice;
    v11 = sub_23C09DC80();
    v12 = [(MTLDevice *)v10 newDefaultLibraryWithBundle:v11 error:0];
    library = v7->_library;
    v7->_library = v12;

    [v5 screenScale];
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

- (void)setupForQuadView:(id)a3
{
  v4 = a3;
  [v4 bounds];
  screenScale = self->_screenScale;
  self->_renderSize.width = v6 * screenScale;
  self->_renderSize.height = v7 * screenScale;
  v8 = [v4 superview];
  [v8 safeAreaInsets];
  v10 = v9;
  v11 = [v4 superview];
  [v11 safeAreaInsets];
  v13 = v10 - v12;

  v14 = -v13;
  if (v13 >= 0.0)
  {
    v14 = v13;
  }

  v15 = self->_screenScale * v14;
  self->_renderSize.height = self->_renderSize.height + v15;
  v16 = [v4 colorPixelFormat];

  self->_pixelFormat = v16;

  MEMORY[0x2821F9670](self, sel_initRenderPipeline);
}

- (void)renderWithCommandBuffer:(id)a3 passDescriptor:(id)a4
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

  v10 = a4;
  v11 = a3;
  *&v12 = editingFraction;
  [(NTKUnity2025Quad *)self blendBackgroundWithIdx1:v6 idx2:v7 percent:v12];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v10 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript:0];
  [v20 setClearColor:{v14, v16, v18, 1.0}];

  v21 = [v11 renderCommandEncoderWithDescriptor:v10];

  [v21 setDepthStencilState:self->_depthStencilState];
  [(NTKUnity2025Quad *)self renderForDisplayWithEncoder:v21];
  [v21 endEncoding];
}

- (void)renderForDisplayWithEncoder:(id)a3
{
  v4 = a3;
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
    v8 = overrideDate;
  }

  else
  {
    v8 = [MEMORY[0x277D2BFD8] faceDate];
  }

  v9 = v8;
  v55 = [MEMORY[0x277CBEA80] currentCalendar];
  v56 = v9;
  v54 = [v55 components:96 fromDate:v9];
  v10 = [v54 hour];
  v52 = [MEMORY[0x277CBEAF8] currentLocale];
  v11 = CLKLocaleIs24HourMode();
  v12 = 12;
  v13 = v10 - 12;
  if (v10 <= 12)
  {
    v13 = v10;
  }

  if (v10)
  {
    v12 = v13;
  }

  if ((v11 & 1) == 0)
  {
    v10 = v12;
  }

  [(NTKUnity2025Quad *)self ensureMeshLoaded:v10, v52];
  [v4 setLabel:@"Unity2025 Render Encoder"];
  v79 = 0uLL;
  renderSize = self->_renderSize;
  v81 = xmmword_23C0A0A80;
  [v4 setViewport:&v79];
  [v4 setRenderPipelineState:self->_unity2025PipelineState];
  [v4 setCullMode:1];
  [(CLKDevice *)self->_device screenBounds];
  v15 = v14;
  [(CLKDevice *)self->_device screenBounds];
  v17 = v15 / v16;
  *&v18 = NTKUnity2025MathBuildProjectionMatrix(0.25307, v17);
  v62 = v19;
  v63 = v18;
  v60 = v21;
  v61 = v20;
  v66 = &self->_hourStructs[v10];
  if (v66->numDigits >= 1)
  {
    v22 = 0;
    v23 = &unk_23C0A1120 + 20 * v10;
    v24 = *(v23 + 4);
    v58 = v23;
    v57 = v23 + 8;
    v25 = xmmword_23C0A0A90;
    v26 = xmmword_23C0A0AA0;
    v27 = xmmword_23C0A0AD0;
    v28 = xmmword_23C0A0AE0;
    v59 = self;
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
      [v4 setVertexBuffer:? offset:? atIndex:?];
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
      [v4 setFragmentBuffer:? offset:? atIndex:?];
      v33 = 0;
      v69 = v22;
      v70 = &v66->digits[v22];
      do
      {
        v72 = v33;
        v34 = *(v70 + 8 * v33);
        v35 = [v34 vertexBuffers];
        v36 = [v35 objectAtIndexedSubscript:0];

        v37 = [v36 buffer];
        v71 = v36;
        [v4 setVertexBuffer:v37 offset:objc_msgSend(v36 atIndex:{"offset"), 0}];

        v38 = [v34 submeshes];
        v39 = [v38 count];

        v40 = v4;
        if (v39)
        {
          v41 = 0;
          do
          {
            v42 = [v34 submeshes];
            v43 = [v42 objectAtIndexedSubscript:v41];

            v44 = [v43 primitiveType];
            v45 = [v43 indexCount];
            v46 = [v43 indexType];
            v47 = [v43 indexBuffer];
            v48 = [v47 buffer];
            v49 = [v43 indexBuffer];
            [v40 drawIndexedPrimitives:v44 indexCount:v45 indexType:v46 indexBuffer:v48 indexBufferOffset:{objc_msgSend(v49, "offset")}];

            ++v41;
            v50 = [v34 submeshes];
            v51 = [v50 count];
          }

          while (v51 > v41);
        }

        v33 = v72 + 1;
        v4 = v40;
      }

      while (v72 != 4);

      v22 = v69 + 1;
      self = v59;
      v26 = xmmword_23C0A0AA0;
      v25 = xmmword_23C0A0A90;
      v28 = xmmword_23C0A0AE0;
      v27 = xmmword_23C0A0AD0;
    }

    while (v69 + 1 < v66->numDigits);
  }
}

- (void)ensureMeshLoaded:(int64_t)a3
{
  hourStructs = self->_hourStructs;
  if (!self->_hourStructs[a3].digits[0].meshes[0])
  {
    [(NTKUnity2025Quad *)self loadMesh:a3];
  }

  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = CLKLocaleIs24HourMode();
  v8 = 13;
  if (v7)
  {
    v8 = 25;
  }

  if (!hourStructs[(a3 + 1) % v8].digits[0].meshes[0])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23C09E64C;
    block[3] = &unk_278BADFB0;
    block[4] = self;
    block[5] = (a3 + 1) % v8;
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

- (void)unloadMesh:(int64_t)a3
{
  if (a3)
  {
    v3 = &self->_hourStructs[a3];
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

- (void)loadMesh:(int64_t)a3
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"NumberMesh%ld%ld", a3 / 10, a3 % 10];
  [NTKUnity2025Quad loadMeshesWithAssetName:"loadMeshesWithAssetName:numberPath:hour:" numberPath:? hour:?];
  if (a3 > 2)
  {
    v5 = -3;
  }

  else
  {
    [(NTKUnity2025Quad *)self unloadMesh:a3 + 21];
    v5 = 9;
  }

  [(NTKUnity2025Quad *)self unloadMesh:v5 + a3];
}

- (id)loadAssetWithPath:(id)a3 enableMeshAllocation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
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
    v23 = [v21 URLForResource:v6 withExtension:@"usdc"];
    if (v23)
    {
      v24 = objc_alloc(MEMORY[0x277CD7AD0]);
      if (v4)
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

- (void)loadMeshesWithAssetName:(id)a3 numberPath:(id)a4 hour:(int)a5
{
  v68 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [(NTKUnity2025Quad *)self loadAssetWithPath:a3 enableMeshAllocation:1];
  v10 = [v9 objectAtPath:v8];
  v11 = v10;
  v51 = v9;
  v52 = v8;
  if (!v10)
  {
    v49 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
    {
      sub_23C09FBF4();
    }

    goto LABEL_35;
  }

  v12 = [v10 children];
  v13 = [v12 count];

  v55 = v13;
  if (v13 != 1)
  {
    v14 = [v11 children];
    v15 = [v14 count];

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

  if (a5 < 0)
  {
    v16 = 23;
  }

  else
  {
    v16 = a5;
  }

  v17 = a5 & ~(a5 >> 31);
  if (v17 <= v16)
  {
    v53 = v16 + 1;
    digits = self->_hourStructs[v17].digits;
    v54 = v11;
    while (1)
    {
      v18 = &self->_hourStructs[v17];
      v18->hour = v17;
      v19 = [v11 children];
      v20 = v19;
      v58 = v17;
      v21 = v55 == 1 ? 0 : v17;
      v22 = [v19 objectAtIndexedSubscript:v21];

      v23 = [v22 children];
      if ([v23 count] == 1)
      {
        break;
      }

      v24 = [v22 children];
      v25 = [v24 count];

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
    v26 = [v22 children];
    v27 = [v26 count];

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
        v32 = [v22 children];
        v60 = v28;
        v33 = [v32 objectAtIndexedSubscript:v28];

        for (i = 0; i != 5; ++i)
        {
          v35 = [v33 children];
          v36 = [v35 objectAtIndexedSubscript:i];
          v37 = [v36 children];
          v38 = [v37 objectAtIndexedSubscript:0];

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
        v47 = [v57 children];
        v48 = [v47 count];

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

  v7 = [MEMORY[0x277CD6D78] functionDescriptor];
  [v7 setName:@"unity2025VertexShader"];
  v8 = [(CLKUIMetalBinaryArchive *)self->_binaryArchive newFunctionInLibrary:self->_library withDescriptor:v7];
  if (!v8)
  {
    v9 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_23C09FC28(self);
    }
  }

  v10 = [MEMORY[0x277CD6D78] functionDescriptor];
  [v10 setName:@"unity2025FragmentShader"];
  v11 = [(CLKUIMetalBinaryArchive *)self->_binaryArchive newFunctionInLibrary:self->_library withDescriptor:v10];
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
  v14 = [v13 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript:0];

  [v15 setPixelFormat:self->_pixelFormat];
  [v15 setBlendingEnabled:0];
  v16 = [(CLKUIMetalBinaryArchive *)self->_binaryArchive newRenderPipelineStateForDevice:self->_mtlDevice withDescriptor:v13];
  unity2025PipelineState = self->_unity2025PipelineState;
  self->_unity2025PipelineState = v16;

  v18 = objc_opt_new();
  [v18 setDepthCompareFunction:3];
  [v18 setDepthWriteEnabled:1];
  v19 = [MEMORY[0x277CFA798] sharedDevice];
  v20 = [v19 newDepthStencilStateWithDescriptor:v18];
  depthStencilState = self->_depthStencilState;
  self->_depthStencilState = v20;
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v6 = a3;
  overrideDate = self->_overrideDate;
  v8 = v6;
  if ((NTKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_overrideDate, a3);
  }
}

- (void)setState:(int)a3
{
  if (self->_state != a3)
  {
    if ((a3 - 1) >= 2)
    {
      v3 = 1.0 / self->_deviceFPS;
    }

    else
    {
      v3 = 0.0166666667;
    }

    self->_deltaTime = v3;
    if (a3)
    {
      v4 = &OBJC_IVAR___NTKUnity2025Quad__triggerTwistAnimation;
      if (a3 == 2)
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

    self->_state = a3;
  }
}

- (void)setTritiumProgress:(double)a3
{
  self->_tritiumProgress = a3;
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

- (void)blendToFragmentUniformsWithIdx1:(int)a3 idx2:(int)a4 percent:(float)a5 uniforms:(id *)a6
{
  v6 = 0;
  v7 = vdupq_lane_s64(COERCE__INT64(a5), 0);
  do
  {
    v8 = vcvtq_f64_f32(*(&unk_23C0A0B20 + 128 * a3 + v6 * 4 + 80));
    *&a6->var0[v6] = vcvt_f32_f64(vmlaq_f64(v8, vsubq_f64(vcvtq_f64_f32(*(&unk_23C0A0B20 + 128 * a4 + v6 * 4 + 80)), v8), v7));
    v6 += 2;
  }

  while (v6 != 8);
  v9 = (&unk_27E1EE120 + 64 * a3);
  v10 = (&unk_27E1EE120 + 64 * a4);
  *&a6->var1 = vmlaq_n_f32(v9[1], vsubq_f32(v10[1], v9[1]), a5);
  *&a6[1].var0[1] = vmlaq_n_f32(v9[2], vsubq_f32(v10[2], v9[2]), a5);
  *&a6[1].var0[5] = vmlaq_n_f32(v9[3], vsubq_f32(v10[3], v9[3]), a5);
  a6[1].var2 = a5;
}

- (void)morphBetweenColorways:(float)a3 index1:(int)a4 index2:(int)a5
{
  self->_editingColors = 1;
  self->_editingIndex1 = a4;
  self->_editingIndex2 = a5;
  self->_editingFraction = a3;
  self->_state = 5;
  v5 = 2 * a4;
  v6 = (&unk_23C0A0B20 + 256 * a4);
  v7 = (&unk_23C0A0B20 + 256 * a5);
  *self->_backgroundColor = vmlaq_n_f32(v6[1], vsubq_f32(v7[1], v6[1]), a3);
  if (a3 >= 0.5)
  {
    v5 = 2 * a5;
  }

  self->_isGreyscale = (v5 - 2) < 4;
  *self->_complicationForegroundColor = vmlaq_n_f32(*v6, vsubq_f32(*v7, *v6), a3);
  if (a4 == a5)
  {
    self->_editingColors = 0;
    self->_currentSettingIdx = a4;
    self->_state = 4;
  }
}

@end