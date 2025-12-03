@interface SCNAVPlayerSource
- (SCNAVPlayerSource)init;
- (id)metalTextureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)connectToProxy:(__C3DImageProxy *)proxy;
- (void)dealloc;
- (void)registerPlayerIfNeeded:(id)needed;
- (void)setPlayer:(id)player;
- (void)unregisterPlayer:(id)player;
@end

@implementation SCNAVPlayerSource

- (SCNAVPlayerSource)init
{
  v3.receiver = self;
  v3.super_class = SCNAVPlayerSource;
  return [(SCNAVPlayerSource *)&v3 init];
}

- (void)registerPlayerIfNeeded:(id)needed
{
  v13[5] = *MEMORY[0x277D85DE8];
  if (!self->_data.videoOutput)
  {
    v5 = *MEMORY[0x277CC4C20];
    v6 = *MEMORY[0x277CC4D28];
    v7 = *MEMORY[0x277CC4CD8];
    v8 = *MEMORY[0x277CC4D10];
    v12[0] = *MEMORY[0x277CC4C00];
    v12[1] = v8;
    v13[0] = v5;
    v13[1] = v6;
    v9 = *MEMORY[0x277CC4E08];
    v12[2] = *MEMORY[0x277CC4CC0];
    v12[3] = v9;
    v13[2] = v7;
    v13[3] = MEMORY[0x277CBEC38];
    v12[4] = *MEMORY[0x277CC4E30];
    v13[4] = &unk_282E0FBE8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:5];
    v11 = [objc_alloc(MEMORY[0x277CE65D0]) initWithPixelBufferAttributes:v10];
    self->_data.videoOutput = v11;
    [objc_msgSend(needed "currentItem")];
  }
}

- (void)unregisterPlayer:(id)player
{
  currentItem = [player currentItem];
  videoOutput = self->_data.videoOutput;

  [currentItem removeOutput:videoOutput];
}

- (void)dealloc
{
  [(SCNAVPlayerSource *)self unregisterPlayer:self->_player];

  SCNVideoTextureSourceRelease(&self->_data);
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
    self->_textureCache = 0;
  }

  v4.receiver = self;
  v4.super_class = SCNAVPlayerSource;
  [(SCNTextureSource *)&v4 dealloc];
}

- (void)setPlayer:(id)player
{
  if (self->_player != player)
  {
    [(SCNAVPlayerSource *)self unregisterPlayer:?];

    self->_player = player;
  }
}

- (void)connectToProxy:(__C3DImageProxy *)proxy
{
  C3DImageProxySetSource(proxy, self, 1);
  v4[0] = xmmword_282DC80B8;
  v4[1] = *&off_282DC80C8;
  C3DImageProxySetCallbacks(proxy, v4);
}

- (id)metalTextureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time status:(id *)status
{
  v23[1] = *MEMORY[0x277D85DE8];
  RenderContext = C3DEngineContextGetRenderContext(context);
  [(SCNAVPlayerSource *)self registerPlayerIfNeeded:self->_player];
  videoOutput = self->_data.videoOutput;
  v20 = 0uLL;
  v21 = 0;
  SystemTime = C3DEngineContextGetSystemTime(context);
  if (videoOutput)
  {
    [(pixelBuffer *)videoOutput itemTimeForHostTime:SystemTime];
  }

  else
  {
    v20 = 0uLL;
    v21 = 0;
  }

  v18 = v20;
  v19 = v21;
  if ([(pixelBuffer *)videoOutput hasNewPixelBufferForItemTime:&v18])
  {
    v18 = v20;
    v19 = v21;
    v12 = [(pixelBuffer *)videoOutput copyPixelBufferForItemTime:&v18 itemTimeForDisplay:0];
    if (v12)
    {
      v13 = v12;
      SCNVideoTextureSourceDiscardVideoData(&self->_data);
      self->_data.var0 = v13;
      self->_width = CVPixelBufferGetWidth(v13);
      self->_height = CVPixelBufferGetHeight(v13);
    }
  }

  if (self->_data.var0)
  {
    result = self->_data.mtlTextureForRenderer;
    if (result)
    {
      *status = 256;
    }

    else
    {
      textureCache = self->_textureCache;
      if (!textureCache)
      {
        device = [(SCNMTLRenderContext *)RenderContext device];
        v22 = *MEMORY[0x277CC4D50];
        v23[0] = &unk_282E0F8E8;
        CVMetalTextureCacheCreate(0, 0, device, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1], &self->_textureCache);
        textureCache = self->_textureCache;
      }

      SCNVideoTextureSourceCreateMetalTexture(&self->_data, RenderContext, textureCache);
      *status = 257;
      return self->_data.mtlTextureForRenderer;
    }
  }

  else
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SCNAVPlayerSource metalTextureWithEngineContext:textureSampler:nextFrameTime:status:];
    }

    return 0;
  }

  return result;
}

- (void)metalTextureWithEngineContext:textureSampler:nextFrameTime:status:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end