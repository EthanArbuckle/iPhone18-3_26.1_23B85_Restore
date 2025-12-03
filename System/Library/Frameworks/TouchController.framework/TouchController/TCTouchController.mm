@interface TCTouchController
+ (BOOL)isSupported;
+ (id)_createSystemTouchControllerWithConfig:(id)config;
- (BOOL)handleTouchBeganAtPoint:(CGPoint)point index:(int64_t)index;
- (BOOL)handleTouchEndedAtPoint:(CGPoint)point index:(int64_t)index;
- (BOOL)handleTouchMovedAtPoint:(CGPoint)point index:(int64_t)index;
- (CGPoint)offsetForAnchor:(int64_t)anchor anchorCoordinateSystem:(int64_t)system;
- (CGSize)drawableSize;
- (CGSize)size;
- (GCController)controller;
- (NSArray)buttons;
- (NSArray)directionPads;
- (NSArray)switches;
- (NSArray)throttles;
- (NSArray)thumbsticks;
- (NSArray)touchpads;
- (TCTouchController)initWithDescriptor:(id)descriptor;
- (id)addButtonWithDescriptor:(id)descriptor;
- (id)addDirectionPadWithDescriptor:(id)descriptor;
- (id)addSwitchWithDescriptor:(id)descriptor;
- (id)addThrottleWithDescriptor:(id)descriptor;
- (id)addThumbstickWithDescriptor:(id)descriptor;
- (id)addTouchpadWithDescriptor:(id)descriptor;
- (id)controlAtPoint:(CGPoint)point;
- (void)_makeButtonWithAnchor:(int64_t)anchor offset:(CGPoint)offset label:(id)label colliderShape:(int64_t)shape;
- (void)_makeDpadWithAnchor:(int64_t)anchor offset:(CGPoint)offset label:(id)label;
- (void)_makeHiddenThumbstickWithLabel:(id)label colliderShape:(int64_t)shape;
- (void)_renderButtonQuadsWithCommandEncoder:(id)encoder;
- (void)_setButtonValue:(double)value forControl:(id)control;
- (void)_setDirectionPadPosition:(CGPoint)position forControl:(id)control;
- (void)addControl:(id)control;
- (void)automaticallyLayoutControlsForLabels:(id)labels;
- (void)buildDepthStencilState;
- (void)buildPipeline;
- (void)buildSharedQuadBuffers;
- (void)connect;
- (void)disconnect;
- (void)removeAllControls;
- (void)removeControl:(id)control;
- (void)renderUsingRenderCommandEncoder:(id)encoder;
- (void)setDrawableSize:(CGSize)size;
@end

@implementation TCTouchController

+ (id)_createSystemTouchControllerWithConfig:(id)config
{
  configCopy = config;
  v4 = objc_alloc_init(TCTouchController);
  config = v4->_config;
  v4->_config = configCopy;

  return v4;
}

- (TCTouchController)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v19.receiver = self;
  v19.super_class = TCTouchController;
  v5 = [(TCTouchController *)&v19 init];
  if (v5)
  {
    v6 = objc_alloc_init(_TCGameController);
    controller = v5->_controller;
    v5->_controller = v6;

    device = [descriptorCopy device];
    device = v5->_device;
    v5->_device = device;

    [descriptorCopy size];
    v5->_size.width = v10;
    v5->_size.height = v11;
    [descriptorCopy drawableSize];
    v5->_drawableSize.width = v12;
    v5->_drawableSize.height = v13;
    v5->_colorPixelFormat = [descriptorCopy colorPixelFormat];
    v5->_depthAttachmentPixelFormat = [descriptorCopy depthAttachmentPixelFormat];
    v5->_stencilAttachmentPixelFormat = [descriptorCopy stencilAttachmentPixelFormat];
    v5->_sampleCount = [descriptorCopy sampleCount];
    array = [MEMORY[0x277CBEB18] array];
    controls = v5->_controls;
    v5->_controls = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pressedControls = v5->_pressedControls;
    v5->_pressedControls = dictionary;

    [(TCTouchController *)v5 buildPipeline];
    [(TCTouchController *)v5 buildDepthStencilState];
    [(TCTouchController *)v5 buildSharedQuadBuffers];
  }

  return v5;
}

+ (BOOL)isSupported
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  if ([processInfo isMacCatalystApp])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    processInfo2 = [MEMORY[0x277CCAC38] processInfo];
    v3 = [processInfo2 isiOSAppOnMac] ^ 1;
  }

  return v3;
}

- (void)buildPipeline
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  device = self->_device;
  v48 = 0;
  v5 = [(MTLDevice *)device newDefaultLibraryWithBundle:v3 error:&v48];
  v6 = v48;
  v7 = [v5 newFunctionWithName:@"buttonVertexShader"];
  v8 = [v5 newFunctionWithName:@"buttonFragmentShader"];
  v9 = objc_alloc_init(MEMORY[0x277CD7090]);
  vertexDescriptor = self->_vertexDescriptor;
  self->_vertexDescriptor = v9;

  layouts = [(MTLVertexDescriptor *)self->_vertexDescriptor layouts];
  v12 = [layouts objectAtIndexedSubscript:0];
  [v12 setStride:16];

  attributes = [(MTLVertexDescriptor *)self->_vertexDescriptor attributes];
  v14 = [attributes objectAtIndexedSubscript:0];
  [v14 setFormat:29];

  attributes2 = [(MTLVertexDescriptor *)self->_vertexDescriptor attributes];
  v16 = [attributes2 objectAtIndexedSubscript:0];
  [v16 setOffset:0];

  attributes3 = [(MTLVertexDescriptor *)self->_vertexDescriptor attributes];
  v18 = [attributes3 objectAtIndexedSubscript:0];
  [v18 setBufferIndex:0];

  attributes4 = [(MTLVertexDescriptor *)self->_vertexDescriptor attributes];
  v20 = [attributes4 objectAtIndexedSubscript:1];
  [v20 setFormat:29];

  attributes5 = [(MTLVertexDescriptor *)self->_vertexDescriptor attributes];
  v22 = [attributes5 objectAtIndexedSubscript:1];
  [v22 setOffset:8];

  attributes6 = [(MTLVertexDescriptor *)self->_vertexDescriptor attributes];
  v24 = [attributes6 objectAtIndexedSubscript:1];
  [v24 setBufferIndex:0];

  v25 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v25 setVertexFunction:v7];
  [v25 setFragmentFunction:v8];
  [v25 setVertexDescriptor:self->_vertexDescriptor];
  [v25 setRasterSampleCount:self->_sampleCount];
  colorPixelFormat = self->_colorPixelFormat;
  colorAttachments = [v25 colorAttachments];
  v28 = [colorAttachments objectAtIndexedSubscript:0];
  [v28 setPixelFormat:colorPixelFormat];

  [v25 setDepthAttachmentPixelFormat:self->_depthAttachmentPixelFormat];
  [v25 setStencilAttachmentPixelFormat:self->_stencilAttachmentPixelFormat];
  colorAttachments2 = [v25 colorAttachments];
  v30 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v30 setBlendingEnabled:1];

  colorAttachments3 = [v25 colorAttachments];
  v32 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v32 setRgbBlendOperation:0];

  colorAttachments4 = [v25 colorAttachments];
  v34 = [colorAttachments4 objectAtIndexedSubscript:0];
  [v34 setAlphaBlendOperation:0];

  colorAttachments5 = [v25 colorAttachments];
  v36 = [colorAttachments5 objectAtIndexedSubscript:0];
  [v36 setSourceRGBBlendFactor:4];

  colorAttachments6 = [v25 colorAttachments];
  v38 = [colorAttachments6 objectAtIndexedSubscript:0];
  [v38 setDestinationRGBBlendFactor:5];

  colorAttachments7 = [v25 colorAttachments];
  v40 = [colorAttachments7 objectAtIndexedSubscript:0];
  [v40 setSourceAlphaBlendFactor:4];

  colorAttachments8 = [v25 colorAttachments];
  v42 = [colorAttachments8 objectAtIndexedSubscript:0];
  [v42 setDestinationAlphaBlendFactor:5];

  v43 = self->_device;
  v47 = 0;
  v44 = [(MTLDevice *)v43 newRenderPipelineStateWithDescriptor:v25 error:&v47];
  v45 = v47;
  pipelineState = self->_pipelineState;
  self->_pipelineState = v44;

  if (!self->_pipelineState)
  {
    NSLog(&cfstr_Error.isa, v45);
  }
}

- (void)buildDepthStencilState
{
  v5 = objc_opt_new();
  [v5 setDepthCompareFunction:7];
  [v5 setDepthWriteEnabled:0];
  v3 = [(MTLDevice *)self->_device newDepthStencilStateWithDescriptor:v5];
  depthState = self->_depthState;
  self->_depthState = v3;
}

- (void)buildSharedQuadBuffers
{
  v11 = *MEMORY[0x277D85DE8];
  v10[0] = xmmword_23AAEE148;
  v10[1] = unk_23AAEE158;
  v10[2] = xmmword_23AAEE168;
  v10[3] = unk_23AAEE178;
  LODWORD(v9) = 3;
  v3 = [(MTLDevice *)self->_device newBufferWithBytes:v10 length:64 options:0, 0x2000200010000, v9];
  quadVertexBuffer = self->_quadVertexBuffer;
  self->_quadVertexBuffer = v3;

  [(MTLBuffer *)self->_quadVertexBuffer setLabel:@"Quad Vertex Buffer"];
  v5 = [(MTLDevice *)self->_device newBufferWithBytes:&v8 length:12 options:0];
  quadIndexBuffer = self->_quadIndexBuffer;
  self->_quadIndexBuffer = v5;

  [(MTLBuffer *)self->_quadIndexBuffer setLabel:@"Quad Index Buffer"];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setDrawableSize:(CGSize)size
{
  v15 = *MEMORY[0x277D85DE8];
  self->_drawableSize = size;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_controls;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 layoutIfNeeded];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)renderUsingRenderCommandEncoder:(id)encoder
{
  v38 = *MEMORY[0x277D85DE8];
  encoderCopy = encoder;
  controls = [(TCTouchController *)self controls];
  v6 = [controls count];

  if (v6 && self->_connected)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v9 = v8;

    time = self->_time;
    if (time < 1.0)
    {
      self->_time = v9;
      time = v9;
    }

    self->_deltaTime = v9 - time;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    touchpads = [(TCTouchController *)self touchpads];
    v12 = [touchpads countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v34;
      do
      {
        v15 = 0;
        do
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(touchpads);
          }

          [*(*(&v33 + 1) + 8 * v15++) resetDeltas];
        }

        while (v13 != v15);
        v13 = [touchpads countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v13);
    }

    [(TCTouchController *)self _renderButtonQuadsWithCommandEncoder:encoderCopy];
    controls2 = [(TCTouchController *)self controls];
    v17 = [controls2 count];

    if (v17)
    {
      v18 = 0;
      while (1)
      {
        controls3 = [(TCTouchController *)self controls];
        v20 = [controls3 objectAtIndexedSubscript:v18];

        if (objc_opt_respondsToSelector())
        {
          break;
        }

LABEL_22:

        ++v18;
        controls4 = [(TCTouchController *)self controls];
        v31 = [controls4 count];

        if (v18 >= v31)
        {
          goto LABEL_23;
        }
      }

      v21 = v20;
      [v21 highlightIntensity];
      if (v22 <= 0.0 || ([v21 isPressed] & 1) != 0)
      {
        [v21 highlightIntensity];
        v24 = v23;
        v25 = 0.0;
        if (v24 >= 0.0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        deltaTime = self->_deltaTime;
        [v21 highlightDuration];
        v28 = -1.0 / v27;
        [v21 highlightIntensity];
        v25 = v29 + deltaTime * v28;
        *&v25 = v25;
      }

      [v21 setHighlightIntensity:v25];
LABEL_21:

      goto LABEL_22;
    }

LABEL_23:
    self->_time = v9;
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_renderButtonQuadsWithCommandEncoder:(id)encoder
{
  v68 = *MEMORY[0x277D85DE8];
  encoderCopy = encoder;
  v5 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v6 = self->_controls;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v56;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v56 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v55 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v11 collectQuadDataInto:v5];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = -[MTLDevice newBufferWithLength:options:](self->_device, "newBufferWithLength:options:", 96 * [v5 count], 0);
    instanceBuffer = self->_instanceBuffer;
    self->_instanceBuffer = v12;

    width = self->_drawableSize.width;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v50 = v15;

    v16.f64[0] = width;
    v16.f64[1] = self->_drawableSize.height;
    v53 = v16;
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
    v48 = v18;

    contents = [(MTLBuffer *)self->_instanceBuffer contents];
    if ([v5 count])
    {
      v20 = 0;
      v21.f64[0] = v50;
      v21.f64[1] = v48;
      v22 = vcvt_f32_f64(vdivq_f64(v53, v21));
      v23 = v22.f32[1];
      *v24.f32 = vdiv_f32(vadd_f32(v22, 0), vsub_f32(0, v22));
      v47 = COERCE_UNSIGNED_INT(2.0 / v22.f32[0]);
      v22.i32[0] = 0;
      v22.f32[1] = 2.0 / v22.f32[1];
      v46 = v22;
      v24.i64[1] = 0x3F8000003F000000;
      v49 = v24;
      do
      {
        v25 = [v5 objectAtIndexedSubscript:v20];
        [v25 position];
        *&v26 = v26;
        v51 = LODWORD(v26);
        [v25 position];
        v28 = v27;
        [v25 size];
        *&v29 = v29;
        v54 = LODWORD(v29);
        [v25 size];
        v31.i32[0] = v51;
        v30 = 0;
        v31.f32[1] = v23 - v28;
        v31.i32[2] = 0;
        v31.i32[3] = 1.0;
        *&v32 = v32;
        LODWORD(v33) = 0;
        HIDWORD(v33) = LODWORD(v32);
        v59 = v54;
        v60 = v33;
        v61 = xmmword_23AAEE0F0;
        v62 = xmmword_23AAEE100;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        do
        {
          *(&v63 + v30) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AAEE110, COERCE_FLOAT(*(&v59 + v30))), xmmword_23AAEE120, *(&v59 + v30), 1), xmmword_23AAEE0F0, *(&v59 + v30), 2), v31, *(&v59 + v30), 3);
          v30 += 16;
        }

        while (v30 != 64);
        v34 = 0;
        v59 = v63;
        v60 = v64;
        v61 = v65;
        v62 = v66;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        do
        {
          *(&v63 + v34) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v47, COERCE_FLOAT(*(&v59 + v34))), v46, *(&v59 + v34), 1), xmmword_23AAEE130, *(&v59 + v34), 2), v49, *(&v59 + v34), 3);
          v34 += 16;
        }

        while (v34 != 64);
        v35 = v64;
        v36 = v65;
        v37 = v66;
        v38 = contents + 96 * v20;
        *v38 = v63;
        *(v38 + 16) = v35;
        *(v38 + 32) = v36;
        *(v38 + 48) = v37;
        Components = CGColorGetComponents([v25 tintColor]);
        *(v38 + 64) = vcvt_hight_f32_f64(vcvt_f32_f64(*Components), Components[1]);
        [v25 highlightIntensity];
        *(v38 + 80) = v40;
        *(v38 + 84) = 0;
        *(v38 + 92) = 0;

        ++v20;
      }

      while (v20 < [v5 count]);
    }

    [encoderCopy setRenderPipelineState:self->_pipelineState];
    [encoderCopy setVertexBuffer:self->_quadVertexBuffer offset:0 atIndex:0];
    [encoderCopy setVertexBuffer:self->_instanceBuffer offset:0 atIndex:1];
    [encoderCopy setDepthStencilState:self->_depthState];
    if ([v5 count])
    {
      v41 = 0;
      do
      {
        v42 = [v5 objectAtIndexedSubscript:v41];
        texture = [v42 texture];
        [encoderCopy setFragmentTexture:texture atIndex:0];

        highlightTexture = [v42 highlightTexture];
        [encoderCopy setFragmentTexture:highlightTexture atIndex:1];

        [encoderCopy drawIndexedPrimitives:3 indexCount:6 indexType:0 indexBuffer:self->_quadIndexBuffer indexBufferOffset:0 instanceCount:1 baseVertex:0 baseInstance:v41];
        ++v41;
      }

      while (v41 < [v5 count]);
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (NSArray)buttons
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_controls;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:{v9, v12}];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)switches
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_controls;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:{v9, v12}];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)thumbsticks
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_controls;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:{v9, v12}];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)directionPads
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_controls;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:{v9, v12}];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)throttles
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_controls;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:{v9, v12}];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)touchpads
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_controls;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:{v9, v12}];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)addControl:(id)control
{
  [(NSMutableArray *)self->_controls addObject:control];
  controls = [(TCTouchController *)self controls];
  v7 = [controls sortedArrayUsingComparator:&__block_literal_global_2];

  v5 = [v7 mutableCopy];
  controls = self->_controls;
  self->_controls = v5;
}

uint64_t __32__TCTouchController_addControl___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 zIndex];
  if (v6 <= [v5 zIndex])
  {
    v8 = [v4 zIndex];
    if (v8 >= [v5 zIndex])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)removeControl:(id)control
{
  [(NSMutableArray *)self->_controls removeObject:control];
  controls = [(TCTouchController *)self controls];
  v7 = [controls sortedArrayUsingComparator:&__block_literal_global_139];

  v5 = [v7 mutableCopy];
  controls = self->_controls;
  self->_controls = v5;
}

uint64_t __35__TCTouchController_removeControl___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 zIndex];
  if (v6 <= [v5 zIndex])
  {
    v8 = [v4 zIndex];
    if (v8 >= [v5 zIndex])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)addButtonWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [[TCButton alloc] initWithDescriptor:descriptorCopy touchController:self];
  [(TCTouchController *)self addControl:v5];
  controller = self->_controller;
  label = [descriptorCopy label];

  [(_TCGameController *)controller addButtonWithLabel:label];

  return v5;
}

- (id)addSwitchWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [[TCSwitch alloc] initWithDescriptor:descriptorCopy touchController:self];
  [(TCTouchController *)self addControl:v5];
  controller = self->_controller;
  label = [descriptorCopy label];

  [(_TCGameController *)controller addButtonWithLabel:label];

  return v5;
}

- (id)addThumbstickWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [[TCThumbstick alloc] initWithDescriptor:descriptorCopy touchController:self];
  [(TCTouchController *)self addControl:v5];
  controller = self->_controller;
  label = [descriptorCopy label];

  [(_TCGameController *)controller addDirectionPadWithLabel:label];

  return v5;
}

- (id)addDirectionPadWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [[TCDirectionPad alloc] initWithDescriptor:descriptorCopy touchController:self];
  [(TCTouchController *)self addControl:v5];
  compositeLabel = [descriptorCopy compositeLabel];

  if (compositeLabel)
  {
    controller = self->_controller;
    compositeLabel2 = [descriptorCopy compositeLabel];
    [(_TCGameController *)controller addDirectionPadWithLabel:compositeLabel2];
LABEL_11:

    goto LABEL_12;
  }

  upLabel = [descriptorCopy upLabel];

  if (upLabel)
  {
    v10 = self->_controller;
    upLabel2 = [descriptorCopy upLabel];
    [(_TCGameController *)v10 addButtonWithLabel:upLabel2];
  }

  downLabel = [descriptorCopy downLabel];

  if (downLabel)
  {
    v13 = self->_controller;
    downLabel2 = [descriptorCopy downLabel];
    [(_TCGameController *)v13 addButtonWithLabel:downLabel2];
  }

  leftLabel = [descriptorCopy leftLabel];

  if (leftLabel)
  {
    v16 = self->_controller;
    leftLabel2 = [descriptorCopy leftLabel];
    [(_TCGameController *)v16 addButtonWithLabel:leftLabel2];
  }

  rightLabel = [descriptorCopy rightLabel];

  if (rightLabel)
  {
    v19 = self->_controller;
    compositeLabel2 = [descriptorCopy rightLabel];
    [(_TCGameController *)v19 addButtonWithLabel:compositeLabel2];
    goto LABEL_11;
  }

LABEL_12:

  return v5;
}

- (id)addThrottleWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [[TCThrottle alloc] initWithDescriptor:descriptorCopy touchController:self];
  [(TCTouchController *)self addControl:v5];
  controller = self->_controller;
  label = [descriptorCopy label];

  [(_TCGameController *)controller addButtonWithLabel:label];

  return v5;
}

- (id)addTouchpadWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [[TCTouchpad alloc] initWithDescriptor:descriptorCopy touchController:self];
  [(TCTouchController *)self addControl:v5];
  controller = self->_controller;
  label = [descriptorCopy label];

  [(_TCGameController *)controller addButtonWithLabel:label];

  return v5;
}

- (void)removeAllControls
{
  v3 = objc_opt_new();
  controls = self->_controls;
  self->_controls = v3;

  MEMORY[0x2821F96F8]();
}

- (id)controlAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  controls = [(TCTouchController *)self controls];
  reverseObjectEnumerator = [controls reverseObjectEnumerator];

  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          collider = [v10 collider];
          v12 = [collider containsPoint:{x, y}];

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }
      }

      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)handleTouchBeganAtPoint:(CGPoint)point index:(int64_t)index
{
  if (!self->_connected)
  {
    return 0;
  }

  y = point.y;
  x = point.x;
  v8 = [(TCTouchController *)self controlAtPoint:?];
  v9 = v8 != 0;
  if (v8)
  {
    pressedControls = self->_pressedControls;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:index];
    [(NSMutableDictionary *)pressedControls setObject:v8 forKeyedSubscript:v11];

    [v8 handleTouchBeganAtPoint:{x, y}];
  }

  return v9;
}

- (BOOL)handleTouchMovedAtPoint:(CGPoint)point index:(int64_t)index
{
  if (!self->_connected)
  {
    return 0;
  }

  y = point.y;
  x = point.x;
  pressedControls = self->_pressedControls;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v8 = [(NSMutableDictionary *)pressedControls objectForKeyedSubscript:v7];

  v9 = v8 != 0;
  if (v8)
  {
    [v8 handleTouchMovedAtPoint:{x, y}];
  }

  return v9;
}

- (BOOL)handleTouchEndedAtPoint:(CGPoint)point index:(int64_t)index
{
  if (!self->_connected)
  {
    return 0;
  }

  y = point.y;
  x = point.x;
  pressedControls = self->_pressedControls;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v10 = [(NSMutableDictionary *)pressedControls objectForKeyedSubscript:v9];

  v11 = v10 != 0;
  if (v10)
  {
    [v10 handleTouchEndedAtPoint:{x, y}];
    v12 = self->_pressedControls;
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:index];
    [(NSMutableDictionary *)v12 removeObjectForKey:v13];
  }

  return v11;
}

- (CGPoint)offsetForAnchor:(int64_t)anchor anchorCoordinateSystem:(int64_t)system
{
  width = self->_size.width;
  height = self->_size.height;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  *&v10 = height * 0.4;
  v11 = 0.0;
  if (userInterfaceIdiom == 1)
  {
    v12 = height * 0.4;
  }

  else
  {
    v12 = 0.0;
  }

  if (system == 1)
  {
    v11 = 0.0;
    if (anchor > 4)
    {
      if (anchor > 6)
      {
        if (anchor != 7)
        {
          v10 = 0.0;
          if (anchor != 8)
          {
            goto LABEL_43;
          }

          v10 = width;
LABEL_35:
          v11 = height;
          goto LABEL_43;
        }

LABEL_34:
        v10 = width * 0.5;
        goto LABEL_35;
      }

      if (anchor == 5)
      {
LABEL_32:
        v10 = width;
        v11 = height * 0.5;
        goto LABEL_43;
      }

      v11 = height;
    }

    else
    {
      if (anchor > 2)
      {
        if (anchor != 3)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      if (anchor == 1)
      {
        v10 = width * 0.5;
        goto LABEL_43;
      }

      if (anchor == 2)
      {
        v10 = width;
        goto LABEL_43;
      }
    }

LABEL_42:
    v10 = 0.0;
    goto LABEL_43;
  }

  if (system)
  {
    goto LABEL_43;
  }

  if (anchor <= 3)
  {
    if (anchor <= 1)
    {
      if (anchor)
      {
        if (anchor == 1)
        {
          v10 = width * 0.5;
          v11 = 0.0;
        }

        goto LABEL_43;
      }

      v14 = v12 + 0.0;
      goto LABEL_41;
    }

    if (anchor == 2)
    {
      v10 = width;
      v13 = v12 + 0.0;
      goto LABEL_39;
    }

LABEL_30:
    v11 = height * 0.5;
    goto LABEL_42;
  }

  if (anchor <= 5)
  {
    if (anchor != 4)
    {
      goto LABEL_32;
    }

LABEL_33:
    v10 = width * 0.5;
    v11 = height * 0.5;
    goto LABEL_43;
  }

  switch(anchor)
  {
    case 6:
      v14 = height + 0.0;
LABEL_41:
      v11 = v14;
      goto LABEL_42;
    case 7:
      goto LABEL_34;
    case 8:
      v10 = width;
      v13 = height + 0.0;
LABEL_39:
      v11 = v13;
      break;
  }

LABEL_43:
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)connect
{
  if (!self->_connected)
  {
    self->_connected = 1;
    v2 = self->_controller;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__TCTouchController_connect__block_invoke;
    block[3] = &unk_278B6B5C0;
    v5 = v2;
    v3 = v2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)disconnect
{
  if (self->_connected)
  {
    v8 = v2;
    v9 = v3;
    self->_connected = 0;
    v4 = self->_controller;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__TCTouchController_disconnect__block_invoke;
    block[3] = &unk_278B6B5C0;
    v7 = v4;
    v5 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (GCController)controller
{
  if (self->_connected)
  {
    v3 = self->_controller;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setButtonValue:(double)value forControl:(id)control
{
  controlCopy = control;
  if (![controlCopy role])
  {
    name = [controlCopy name];
    if (name)
    {
      v7 = name;
      [(_TCGameController *)self->_controller setValue:name forButtonElement:value];
    }
  }
}

- (void)_setDirectionPadPosition:(CGPoint)position forControl:(id)control
{
  y = position.y;
  x = position.x;
  controlCopy = control;
  if ([controlCopy role] == 1)
  {
    name = [controlCopy name];
    if (name)
    {
      v8 = name;
      [(_TCGameController *)self->_controller setPosition:name forDirectionPadElement:x, y];
    }
  }
}

- (void)automaticallyLayoutControlsForLabels:(id)labels
{
  v43 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  [(TCTouchController *)self removeAllControls];
  v4 = +[TCControlLabel buttonA];
  [(TCTouchController *)self _makeButtonWithAnchor:8 offset:v4 label:0 colliderShape:-100.0, -60.0];

  v5 = +[TCControlLabel buttonX];
  [(TCTouchController *)self _makeButtonWithAnchor:8 offset:v5 label:0 colliderShape:-140.0, -100.0];

  v6 = +[TCControlLabel buttonY];
  [(TCTouchController *)self _makeButtonWithAnchor:8 offset:v6 label:0 colliderShape:-100.0, -140.0];

  v7 = +[TCControlLabel buttonB];
  [(TCTouchController *)self _makeButtonWithAnchor:8 offset:v7 label:0 colliderShape:-60.0, -100.0];

  v8 = +[TCControlLabel buttonLeftTrigger];
  [(TCTouchController *)self _makeButtonWithAnchor:0 offset:v8 label:1 colliderShape:60.0, 60.0];

  v9 = +[TCControlLabel buttonLeftShoulder];
  [(TCTouchController *)self _makeButtonWithAnchor:0 offset:v9 label:1 colliderShape:60.0, 120.0];

  v10 = +[TCControlLabel buttonRightTrigger];
  [(TCTouchController *)self _makeButtonWithAnchor:2 offset:v10 label:1 colliderShape:-60.0, 60.0];

  v11 = +[TCControlLabel buttonRightShoulder];
  [(TCTouchController *)self _makeButtonWithAnchor:2 offset:v11 label:1 colliderShape:-60.0, 120.0];

  v12 = +[TCControlLabel buttonOptions];
  [(TCTouchController *)self _makeButtonWithAnchor:7 offset:v12 label:0 colliderShape:-45.0, -60.0];

  v13 = +[TCControlLabel buttonMenu];
  [(TCTouchController *)self _makeButtonWithAnchor:7 offset:v13 label:0 colliderShape:45.0, -60.0];

  v14 = +[TCControlLabel leftThumbstickButton];
  [(TCTouchController *)self _makeButtonWithAnchor:7 offset:v14 label:0 colliderShape:-130.0, -60.0];

  v15 = +[TCControlLabel rightThumbstickButton];
  [(TCTouchController *)self _makeButtonWithAnchor:7 offset:v15 label:0 colliderShape:130.0, -60.0];

  v16 = +[TCControlLabel directionPad];
  [(TCTouchController *)self _makeDpadWithAnchor:6 offset:v16 label:105.0, -105.0];

  v17 = +[TCControlLabel leftThumbstick];
  [(TCTouchController *)self _makeHiddenThumbstickWithLabel:v17 colliderShape:2];

  v18 = +[TCControlLabel rightThumbstick];
  [(TCTouchController *)self _makeHiddenThumbstickWithLabel:v18 colliderShape:3];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_controls;
  v19 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v38;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v37 + 1) + 8 * i);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v24 = labelsCopy;
        v25 = [v24 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v25)
        {
          v26 = *v34;
          while (2)
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v34 != v26)
              {
                objc_enumerationMutation(v24);
              }

              v28 = *(*(&v33 + 1) + 8 * j);
              label = [v23 label];
              LOBYTE(v28) = [v28 isEqual:label];

              if (v28)
              {
                v25 = 1;
                goto LABEL_16;
              }
            }

            v25 = [v24 countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:

        [v23 setEnabled:v25];
      }

      v20 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v20);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_makeButtonWithAnchor:(int64_t)anchor offset:(CGPoint)offset label:(id)label colliderShape:(int64_t)shape
{
  y = offset.y;
  x = offset.x;
  labelCopy = label;
  v17 = objc_opt_new();
  [v17 setHighlightDuration:0.25];
  [v17 setZIndex:0];
  [v17 setColliderShape:shape];
  v12 = shape == 0;
  v13 = shape != 0;
  v14 = 78.0;
  if (v12)
  {
    v14 = 60.0;
  }

  [v17 setSize:v14];
  [v17 setAnchor:anchor];
  [v17 setOffset:{x, y}];
  [v17 setLabel:labelCopy];

  [v17 size];
  v15 = [TCControlContents buttonContentsForSystemImageNamed:&stru_284DB3138 size:v13 shape:self controller:?];
  [v17 setContents:v15];

  v16 = [(TCTouchController *)self addButtonWithDescriptor:v17];
}

- (void)_makeDpadWithAnchor:(int64_t)anchor offset:(CGPoint)offset label:(id)label
{
  y = offset.y;
  x = offset.x;
  v18 = objc_opt_new();
  [v18 setMutuallyExclusiveInput:1];
  [v18 setHighlightDuration:0.25];
  [v18 setZIndex:0];
  [v18 setColliderShape:0];
  [v18 setSize:{60.0, 60.0}];
  [v18 setAnchor:6];
  [v18 setOffset:{x, y}];
  v8 = +[TCControlLabel directionPad];
  [v18 setCompositeLabel:v8];

  [v18 setSize:{120.0, 120.0}];
  [v18 setRadial:0];
  [v18 setMutuallyExclusiveInput:0];
  compositeLabel = [v18 compositeLabel];
  v10 = [TCControlContents directionPadContentsForLabel:compositeLabel size:1 style:0 direction:self controller:60.0, 60.0];
  [v18 setUpContents:v10];

  compositeLabel2 = [v18 compositeLabel];
  v12 = [TCControlContents directionPadContentsForLabel:compositeLabel2 size:1 style:1 direction:self controller:60.0, 60.0];
  [v18 setDownContents:v12];

  compositeLabel3 = [v18 compositeLabel];
  v14 = [TCControlContents directionPadContentsForLabel:compositeLabel3 size:1 style:2 direction:self controller:60.0, 60.0];
  [v18 setLeftContents:v14];

  compositeLabel4 = [v18 compositeLabel];
  v16 = [TCControlContents directionPadContentsForLabel:compositeLabel4 size:1 style:3 direction:self controller:60.0, 60.0];
  [v18 setRightContents:v16];

  v17 = [(TCTouchController *)self addDirectionPadWithDescriptor:v18];
}

- (void)_makeHiddenThumbstickWithLabel:(id)label colliderShape:(int64_t)shape
{
  labelCopy = label;
  v10 = objc_opt_new();
  [v10 setHighlightDuration:0.150000006];
  [v10 setZIndex:-1];
  [v10 setColliderShape:shape];
  [v10 setAnchor:6];
  [v10 setOffset:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  [v10 setStickSize:{50.0, 50.0}];
  [v10 setSize:{90.0, 90.0}];
  [v10 setLabel:labelCopy];

  [v10 setHidesWhenNotPressed:1];
  [v10 stickSize];
  v7 = [TCControlContents thumbstickStickContentsOfSize:self controller:?];
  [v10 setStickContents:v7];

  [v10 size];
  v8 = [TCControlContents thumbstickBackgroundContentsOfSize:self controller:?];
  [v10 setBackgroundContents:v8];

  v9 = [(TCTouchController *)self addThumbstickWithDescriptor:v10];
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)drawableSize
{
  width = self->_drawableSize.width;
  height = self->_drawableSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end