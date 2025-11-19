@interface SCNCaptureDeviceOutputConsumerSource
- (SCNCaptureDeviceOutputConsumerSource)initWithOptions:(id)a3;
- (id)metalTextureWithEngineContext:(__C3DEngineContext *)a3 textureSampler:(__C3DTextureSampler *)a4 nextFrameTime:(double *)a5 status:(id *)a6;
- (void)_setPixelBuffer:(__CVBuffer *)a3;
- (void)_setSampleBuffer:(opaqueCMSampleBuffer *)ImageBuffer;
- (void)connectToProxy:(__C3DImageProxy *)a3;
- (void)dealloc;
- (void)setPixelBuffer:(__CVBuffer *)a3 fromDevice:(id)a4;
- (void)setSampleBuffer:(opaqueCMSampleBuffer *)a3 fromDevice:(id)a4;
@end

@implementation SCNCaptureDeviceOutputConsumerSource

- (SCNCaptureDeviceOutputConsumerSource)initWithOptions:(id)a3
{
  v7.receiver = self;
  v7.super_class = SCNCaptureDeviceOutputConsumerSource;
  v4 = [(SCNCaptureDeviceOutputConsumerSource *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_videoMirrored = 0;
    v4->_automaticallyAdjustsVideoMirroring = 1;
    v4->_containsAlpha = [objc_msgSend(a3 objectForKeyedSubscript:{@"SCNCaptureDeviceOutputConsumerOptionContainsAlpha", "BOOLValue"}];
  }

  return v5;
}

- (void)dealloc
{
  SCNVideoTextureSourceRelease(&self->_data);
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
    self->_textureCache = 0;
  }

  v4.receiver = self;
  v4.super_class = SCNCaptureDeviceOutputConsumerSource;
  [(SCNTextureSource *)&v4 dealloc];
}

- (void)connectToProxy:(__C3DImageProxy *)a3
{
  C3DImageProxySetSource(a3, self, 3);
  v4[0] = xmmword_282DC80F8;
  v4[1] = *&off_282DC8108;
  C3DImageProxySetCallbacks(a3, v4);
}

- (id)metalTextureWithEngineContext:(__C3DEngineContext *)a3 textureSampler:(__C3DTextureSampler *)a4 nextFrameTime:(double *)a5 status:(id *)a6
{
  v16[1] = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  mtlTextureForRenderer = self->_data.mtlTextureForRenderer;
  if (mtlTextureForRenderer)
  {
    *a6 = 256;
  }

  else if (self->_data.var0)
  {
    RenderContext = C3DEngineContextGetRenderContext(a3);
    v11 = RenderContext;
    textureCache = self->_textureCache;
    if (!textureCache)
    {
      v13 = [(SCNMTLRenderContext *)RenderContext device];
      v15 = *MEMORY[0x277CC4D50];
      v16[0] = &unk_282E0F8E8;
      CVMetalTextureCacheCreate(0, 0, v13, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1], &self->_textureCache);
      textureCache = self->_textureCache;
    }

    SCNVideoTextureSourceCreateMetalTexture(&self->_data, v11, textureCache);
    *a6 = 257;
    mtlTextureForRenderer = self->_data.mtlTextureForRenderer;
  }

  else
  {
    mtlTextureForRenderer = 0;
  }

  objc_sync_exit(self);
  return mtlTextureForRenderer;
}

- (void)setSampleBuffer:(opaqueCMSampleBuffer *)a3 fromDevice:(id)a4
{
  if (a4 && self->_automaticallyAdjustsVideoMirroring)
  {
    self->_videoMirrored = [a4 position] == 2;
  }

  [(SCNCaptureDeviceOutputConsumerSource *)self _setSampleBuffer:a3];
}

- (void)_setSampleBuffer:(opaqueCMSampleBuffer *)ImageBuffer
{
  objc_sync_enter(self);
  if (ImageBuffer)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(ImageBuffer);
  }

  if (self->_data.var0 != ImageBuffer)
  {
    SCNVideoTextureSourceDiscardVideoData(&self->_data);
    var0 = self->_data.var0;
    if (var0 != ImageBuffer)
    {
      if (var0)
      {
        CFRelease(var0);
        self->_data.var0 = 0;
      }

      if (ImageBuffer)
      {
        v6 = CFRetain(ImageBuffer);
      }

      else
      {
        v6 = 0;
      }

      self->_data.var0 = v6;
    }
  }

  if (ImageBuffer)
  {
    self->_width = CVPixelBufferGetWidth(ImageBuffer);
    self->_height = CVPixelBufferGetHeight(ImageBuffer);
  }

  else
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNAVPlayerSource metalTextureWithEngineContext:textureSampler:nextFrameTime:status:];
    }
  }

  objc_sync_exit(self);
}

- (void)setPixelBuffer:(__CVBuffer *)a3 fromDevice:(id)a4
{
  if (a4 && self->_automaticallyAdjustsVideoMirroring)
  {
    self->_videoMirrored = [a4 position] == 2;
  }

  [(SCNCaptureDeviceOutputConsumerSource *)self _setPixelBuffer:a3];
}

- (void)_setPixelBuffer:(__CVBuffer *)a3
{
  objc_sync_enter(self);
  if (self->_data.var0 != a3)
  {
    SCNVideoTextureSourceDiscardVideoData(&self->_data);
    var0 = self->_data.var0;
    if (var0 != a3)
    {
      if (var0)
      {
        CFRelease(var0);
        self->_data.var0 = 0;
      }

      if (a3)
      {
        v6 = CFRetain(a3);
      }

      else
      {
        v6 = 0;
      }

      self->_data.var0 = v6;
    }
  }

  if (a3)
  {
    self->_width = CVPixelBufferGetWidth(a3);
    self->_height = CVPixelBufferGetHeight(a3);
    if (!CVPixelBufferGetIOSurface(a3))
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [SCNCaptureDeviceOutputConsumerSource _setPixelBuffer:];
      }
    }
  }

  objc_sync_exit(self);
}

- (void)_setPixelBuffer:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end