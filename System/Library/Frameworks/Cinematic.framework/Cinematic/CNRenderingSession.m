@interface CNRenderingSession
+ (NSArray)destinationPixelFormatTypes;
+ (NSArray)sourcePixelFormatTypes;
- (BOOL)_encodeRenderToCommandBuffer:(id)a3 frameAttributes:(id)a4 sourceImage:(__CVBuffer *)a5 sourceDisparity:(__CVBuffer *)a6 destinationTexture:(id)a7;
- (BOOL)encodeRenderToCommandBuffer:(id)commandBuffer frameAttributes:(CNRenderingSessionFrameAttributes *)frameAttributes sourceImage:(CVPixelBufferRef)sourceImage sourceDisparity:(CVPixelBufferRef)sourceDisparity destinationImage:(CVPixelBufferRef)destinationImage;
- (BOOL)encodeRenderToCommandBuffer:(id)commandBuffer frameAttributes:(CNRenderingSessionFrameAttributes *)frameAttributes sourceImage:(CVPixelBufferRef)sourceImage sourceDisparity:(CVPixelBufferRef)sourceDisparity destinationLuma:(id)destinationLuma destinationChroma:(id)destinationChroma;
- (BOOL)encodeRenderToCommandBuffer:(id)commandBuffer frameAttributes:(CNRenderingSessionFrameAttributes *)frameAttributes sourceImage:(CVPixelBufferRef)sourceImage sourceDisparity:(CVPixelBufferRef)sourceDisparity destinationRGBA:(id)destinationRGBA;
- (CNRenderingSession)initWithCommandQueue:(id)commandQueue sessionAttributes:(CNRenderingSessionAttributes *)sessionAttributes preferredTransform:(CGAffineTransform *)preferredTransform quality:(CNRenderingQuality)quality;
- (void)dealloc;
@end

@implementation CNRenderingSession

- (CNRenderingSession)initWithCommandQueue:(id)commandQueue sessionAttributes:(CNRenderingSessionAttributes *)sessionAttributes preferredTransform:(CGAffineTransform *)preferredTransform quality:(CNRenderingQuality)quality
{
  v25[1] = *MEMORY[0x277D85DE8];
  v11 = commandQueue;
  v12 = sessionAttributes;
  v23.receiver = self;
  v23.super_class = CNRenderingSession;
  v13 = [(CNRenderingSession *)&v23 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_commandQueue, commandQueue);
    objc_storeStrong(&v14->_sessionAttributes, sessionAttributes);
    v15 = *&preferredTransform->a;
    v16 = *&preferredTransform->c;
    *&v14->_preferredTransform.tx = *&preferredTransform->tx;
    *&v14->_preferredTransform.c = v16;
    *&v14->_preferredTransform.a = v15;
    v14->_quality = quality;
    v17 = *MEMORY[0x277CBECE8];
    v24 = *MEMORY[0x277CC4D40];
    v25[0] = &unk_284A06FD0;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v19 = [v11 device];
    LODWORD(v17) = CVMetalTextureCacheCreate(v17, v18, v19, 0, &v14->_textureCache);

    if (v17 || !v14->_textureCache)
    {
      v20 = _CNLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [CNRenderingSession initWithCommandQueue:v20 sessionAttributes:? preferredTransform:? quality:?];
      }

      v14->_textureCache = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)dealloc
{
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
  }

  v4.receiver = self;
  v4.super_class = CNRenderingSession;
  [(CNRenderingSession *)&v4 dealloc];
}

- (BOOL)encodeRenderToCommandBuffer:(id)commandBuffer frameAttributes:(CNRenderingSessionFrameAttributes *)frameAttributes sourceImage:(CVPixelBufferRef)sourceImage sourceDisparity:(CVPixelBufferRef)sourceDisparity destinationImage:(CVPixelBufferRef)destinationImage
{
  v12 = MEMORY[0x277D3E8E8];
  v13 = frameAttributes;
  v14 = commandBuffer;
  v15 = [v14 device];
  v16 = [v12 createFromPixelbuffer:destinationImage device:v15 textureCache:self->_textureCache read:0 write:1];
  LOBYTE(sourceDisparity) = [(CNRenderingSession *)self _encodeRenderToCommandBuffer:v14 frameAttributes:v13 sourceImage:sourceImage sourceDisparity:sourceDisparity destinationTexture:v16];

  return sourceDisparity;
}

- (BOOL)encodeRenderToCommandBuffer:(id)commandBuffer frameAttributes:(CNRenderingSessionFrameAttributes *)frameAttributes sourceImage:(CVPixelBufferRef)sourceImage sourceDisparity:(CVPixelBufferRef)sourceDisparity destinationRGBA:(id)destinationRGBA
{
  v12 = MEMORY[0x277D3E8E8];
  v13 = frameAttributes;
  v14 = commandBuffer;
  v15 = [v12 createRGBA:destinationRGBA];
  LOBYTE(sourceDisparity) = [(CNRenderingSession *)self _encodeRenderToCommandBuffer:v14 frameAttributes:v13 sourceImage:sourceImage sourceDisparity:sourceDisparity destinationTexture:v15];

  return sourceDisparity;
}

- (BOOL)encodeRenderToCommandBuffer:(id)commandBuffer frameAttributes:(CNRenderingSessionFrameAttributes *)frameAttributes sourceImage:(CVPixelBufferRef)sourceImage sourceDisparity:(CVPixelBufferRef)sourceDisparity destinationLuma:(id)destinationLuma destinationChroma:(id)destinationChroma
{
  v14 = MEMORY[0x277D3E8E8];
  v15 = frameAttributes;
  v16 = commandBuffer;
  v17 = [v14 createYUV420:destinationLuma chroma:destinationChroma];
  LOBYTE(destinationLuma) = [(CNRenderingSession *)self _encodeRenderToCommandBuffer:v16 frameAttributes:v15 sourceImage:sourceImage sourceDisparity:sourceDisparity destinationTexture:v17];

  return destinationLuma;
}

- (BOOL)_encodeRenderToCommandBuffer:(id)a3 frameAttributes:(id)a4 sourceImage:(__CVBuffer *)a5 sourceDisparity:(__CVBuffer *)a6 destinationTexture:(id)a7
{
  v62 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a7;
  commandQueue = self->_commandQueue;
  v15 = a4;
  v16 = [(MTLCommandQueue *)commandQueue device];
  v17 = [v12 device];

  if (v16 != v17)
  {
    v18 = _CNLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(MTLCommandQueue *)self->_commandQueue device];
      v20 = [v19 name];
      [v12 device];
      v59 = a5;
      v22 = v21 = a6;
      v23 = [v22 name];
      *buf = 138412546;
      *&buf[4] = v20;
      *&buf[12] = 2112;
      *&buf[14] = v23;
      _os_log_impl(&dword_236F52000, v18, OS_LOG_TYPE_DEFAULT, "warning: rendering session device (%@) and command buffer device (%@) are different!", buf, 0x16u);

      a6 = v21;
      a5 = v59;
    }
  }

  if (!self->_renderPipeline)
  {
    v24 = objc_alloc(MEMORY[0x277D3E8B8]);
    v25 = [v12 device];
    v26 = [(CNRenderingSessionAttributes *)self->_sessionAttributes internalMetadata];
    v27 = [v26 renderingVersion];
    Width = CVPixelBufferGetWidth(a5);
    Height = CVPixelBufferGetHeight(a5);
    v30 = [v13 width];
    v31 = [v13 height];
    v32 = CVPixelBufferGetWidth(a6);
    v33 = [v24 initWithDevice:v25 version:v27 colorInputSize:Width colorOutputSize:Height disparitySize:{v30, v31, v32, CVPixelBufferGetHeight(a6)}];

    [v33 setDebugRendering:0];
    [v33 setVerbose:0];
    [v33 setUseRGBA:{objc_msgSend(v13, "isRGB")}];
    v34 = *&self->_preferredTransform.c;
    *buf = *&self->_preferredTransform.a;
    *&buf[16] = v34;
    v61 = *&self->_preferredTransform.tx;
    [v33 setPreferredTransform:buf];
    v35 = [objc_alloc(MEMORY[0x277D3E8A8]) initWithDescriptor:v33];
    renderPipeline = self->_renderPipeline;
    self->_renderPipeline = v35;

    v37 = [(CNRenderingSession *)self quality];
    if (v37 > CNRenderingQualityExportHigh)
    {
      v38 = 75;
    }

    else
    {
      v38 = dword_236F68020[v37];
    }

    v39 = [(PTRenderPipeline *)self->_renderPipeline createRenderStateWithQuality:v38];
    renderState = self->_renderState;
    self->_renderState = v39;

    v41 = [(CNRenderingSessionAttributes *)self->_sessionAttributes internalMetadata];
    [v41 applyToRenderState:self->_renderState];
  }

  v42 = objc_opt_new();
  v43 = [(CNRenderingSessionAttributes *)self->_sessionAttributes internalMetadata];
  [v43 applyToRenderRequest:v42];

  v44 = [v15 internalMetadata];
  [v44 applyToRenderRequest:v42];

  [v42 setRenderState:self->_renderState];
  [v15 fNumber];
  [v42 setFNumber:?];
  [v15 focusDisparity];
  v46 = v45;

  LODWORD(v47) = v46;
  [v42 setFocusDisparity:v47];
  v48 = MEMORY[0x277D3E8E8];
  v49 = [v12 device];
  v50 = [v48 createFromPixelbuffer:a5 device:v49 textureCache:self->_textureCache read:1 write:0];
  [v42 setSourceColor:v50];

  [v42 setDestinationColor:v13];
  v51 = MEMORY[0x277D3E898];
  v52 = [v12 device];
  v53 = [v51 createTextureFromPixelBuffer:a6 device:v52 textureCache:self->_textureCache sRGB:0];
  [v42 setSourceDisparity:v53];

  v54 = [v42 sourceColor];
  [v54 copyMetadataTo:v13];

  v55 = [(PTRenderPipeline *)self->_renderPipeline encodeRenderTo:v12 withRenderRequest:v42];
  if (v55)
  {
    v56 = _CNLogSystem();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      [CNRenderingSession _encodeRenderToCommandBuffer:v12 frameAttributes:v56 sourceImage:? sourceDisparity:? destinationTexture:?];
    }
  }

  v57 = *MEMORY[0x277D85DE8];
  return v55 == 0;
}

+ (NSArray)sourcePixelFormatTypes
{
  if (sourcePixelFormatTypes_onceToken != -1)
  {
    +[CNRenderingSession sourcePixelFormatTypes];
  }

  v3 = sourcePixelFormatTypes_sSourcePixelFormatTypes;

  return v3;
}

void __44__CNRenderingSession_sourcePixelFormatTypes__block_invoke()
{
  v0 = sourcePixelFormatTypes_sSourcePixelFormatTypes;
  sourcePixelFormatTypes_sSourcePixelFormatTypes = &unk_284A06FA0;
}

+ (NSArray)destinationPixelFormatTypes
{
  if (destinationPixelFormatTypes_onceToken != -1)
  {
    +[CNRenderingSession destinationPixelFormatTypes];
  }

  v3 = destinationPixelFormatTypes_sDestinationPixelFormatTypes;

  return v3;
}

void __49__CNRenderingSession_destinationPixelFormatTypes__block_invoke()
{
  v0 = destinationPixelFormatTypes_sDestinationPixelFormatTypes;
  destinationPixelFormatTypes_sDestinationPixelFormatTypes = &unk_284A06FB8;
}

- (void)_encodeRenderToCommandBuffer:(uint64_t)a1 frameAttributes:(NSObject *)a2 sourceImage:sourceDisparity:destinationTexture:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_236F52000, a2, OS_LOG_TYPE_ERROR, "error: encodeRenderToCommandBuffer failed (%@)", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end