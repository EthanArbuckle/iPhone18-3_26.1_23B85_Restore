@interface SCNCaptureDeviceSource
- (id)metalTextureWithEngineContext:(__C3DEngineContext *)a3 textureSampler:(__C3DTextureSampler *)a4 nextFrameTime:(double *)a5 status:(id *)a6;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)connectToProxy:(__C3DImageProxy *)a3;
- (void)dealloc;
- (void)setCaptureDevice:(id)a3;
@end

@implementation SCNCaptureDeviceSource

- (void)dealloc
{
  [(AVCaptureSession *)self->_captureSession stopRunning];

  SCNVideoTextureSourceRelease(&self->_data);
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
    self->_textureCache = 0;
  }

  v4.receiver = self;
  v4.super_class = SCNCaptureDeviceSource;
  [(SCNTextureSource *)&v4 dealloc];
}

- (void)setCaptureDevice:(id)a3
{
  if (self->_captureDevice != a3)
  {
    [(AVCaptureSession *)self->_captureSession stopRunning];

    self->_captureSession = 0;
    self->_captureDevice = a3;
  }
}

- (void)connectToProxy:(__C3DImageProxy *)a3
{
  C3DImageProxySetSource(a3, self, 2);
  v4[0] = xmmword_282DC80D8;
  v4[1] = *&off_282DC80E8;
  C3DImageProxySetCallbacks(a3, v4);
}

- (id)metalTextureWithEngineContext:(__C3DEngineContext *)a3 textureSampler:(__C3DTextureSampler *)a4 nextFrameTime:(double *)a5 status:(id *)a6
{
  v24[2] = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  if (!self->_captureSession)
  {
    v20 = 0;
    v13 = [objc_alloc(MEMORY[0x277CE5AD8]) initWithDevice:self->_captureDevice error:&v20];
    if (v20)
    {
      v14 = scn_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SCNCaptureDeviceSource metalTextureWithEngineContext:textureSampler:nextFrameTime:status:];
      }

      goto LABEL_10;
    }

    v18 = objc_alloc_init(MEMORY[0x277CE5B38]);
    self->_captureSession = v18;
    [(AVCaptureSession *)v18 addInput:v13];

    [(AVCaptureSession *)self->_captureSession commitConfiguration];
    [(AVCaptureSession *)self->_captureSession startRunning];
  }

  RenderContext = C3DEngineContextGetRenderContext(a3);
  if (!self->_data.videoOutput)
  {
    v10 = objc_alloc_init(MEMORY[0x277CE5B60]);
    v11 = *MEMORY[0x277CC4E30];
    v23[0] = *MEMORY[0x277CC4E08];
    v23[1] = v11;
    v24[0] = MEMORY[0x277CBEC38];
    v24[1] = &unk_282E0FBE8;
    [v10 setVideoSettings:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v24, v23, 2)}];
    [v10 setSampleBufferDelegate:self queue:-[SCNMTLRenderContext resourceQueue](RenderContext)];
    [(AVCaptureSession *)self->_captureSession addOutput:v10];
    self->_data.videoOutput = v10;
  }

  mtlTextureForRenderer = self->_data.mtlTextureForRenderer;
  if (mtlTextureForRenderer)
  {
    *a6 = 256;
    goto LABEL_15;
  }

  if (!self->_data.var0)
  {
    v19 = scn_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SCNAVPlayerSource metalTextureWithEngineContext:textureSampler:nextFrameTime:status:];
    }

LABEL_10:
    mtlTextureForRenderer = 0;
    goto LABEL_15;
  }

  textureCache = self->_textureCache;
  if (!textureCache)
  {
    v16 = [(SCNMTLRenderContext *)RenderContext device];
    v21 = *MEMORY[0x277CC4D50];
    v22 = &unk_282E0F8E8;
    CVMetalTextureCacheCreate(0, 0, v16, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1], &self->_textureCache);
    textureCache = self->_textureCache;
  }

  SCNVideoTextureSourceCreateMetalTexture(&self->_data, RenderContext, textureCache);
  *a6 = 257;
  mtlTextureForRenderer = self->_data.mtlTextureForRenderer;
LABEL_15:
  objc_sync_exit(self);
  return mtlTextureForRenderer;
}

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  objc_sync_enter(self);
  ImageBuffer = CMSampleBufferGetImageBuffer(a4);
  if (ImageBuffer)
  {
    SCNVideoTextureSourceDiscardVideoData(&self->_data);
    self->_data.var0 = CVPixelBufferRetain(ImageBuffer);
    self->_videoMirrored = [a5 isVideoMirrored];
    self->_width = CVPixelBufferGetWidth(ImageBuffer);
    self->_height = CVPixelBufferGetHeight(ImageBuffer);
  }

  else
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SCNAVPlayerSource metalTextureWithEngineContext:textureSampler:nextFrameTime:status:];
    }
  }

  objc_sync_exit(self);
}

@end