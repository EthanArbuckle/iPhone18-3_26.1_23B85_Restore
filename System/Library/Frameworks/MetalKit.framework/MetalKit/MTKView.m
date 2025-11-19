@interface MTKView
- (BOOL)exportToTargaAtLocation:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5 size:(unint64_t)a6 bytes:(void *)a7;
- (BOOL)framebufferOnly;
- (BOOL)presentsWithTransaction;
- (CGSize)_pixelSizeFromPointSize:(CGSize)a3;
- (CGSize)drawableSize;
- (CGSize)preferredDrawableSize;
- (MTKView)initWithCoder:(NSCoder *)coder;
- (MTKView)initWithFrame:(CGRect)frameRect device:(id)device;
- (MTL4RenderPassDescriptor)currentMTL4RenderPassDescriptor;
- (MTLClearColor)clearColor;
- (MTLRenderPassDescriptor)currentRenderPassDescriptor;
- (const)multisampleColorTexturesForceUpdate:(BOOL)a3;
- (id)currentDrawable;
- (id)delegate;
- (id)depthStencilTexture;
- (id)multisampleColorTexture;
- (id)preferredDevice;
- (int64_t)_calculateRefeshesPerSecond;
- (void)__initCommon;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_createDisplayLinkForScreen:(id)a3;
- (void)_dumpFrameImageWithFilename:(id)a3;
- (void)_dumpFramerate:(double)a3 withFilename:(id)a4;
- (void)_resizeDrawable;
- (void)_resizeMetalLayerDrawable;
- (void)_updateToNativeScale;
- (void)configureColorAttachments:(id)a3;
- (void)configureDepthAttachment:(id)a3 stencilAttachment:(id)a4;
- (void)createDepthStencilTexture;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)displayLayer:(id)a3;
- (void)draw;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)getEnvironmentSettings;
- (void)layoutSubviews;
- (void)releaseDrawables;
- (void)setColorPixelFormat:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setContentScaleFactor:(double)a3;
- (void)setDepthStencilAttachmentTextureUsage:(MTLTextureUsage)depthStencilAttachmentTextureUsage;
- (void)setDepthStencilPixelFormat:(MTLPixelFormat)depthStencilPixelFormat;
- (void)setDepthStencilStorageMode:(MTLStorageMode)depthStencilStorageMode;
- (void)setDevice:(id)device;
- (void)setDrawableAttachmentIndex:(unint64_t)a3;
- (void)setDrawableSize:(CGSize)drawableSize;
- (void)setEnableSetNeedsDisplay:(BOOL)enableSetNeedsDisplay;
- (void)setFrame:(CGRect)a3;
- (void)setMultisampleColorAttachmentTextureUsage:(MTLTextureUsage)multisampleColorAttachmentTextureUsage;
- (void)setNilValueForKey:(id)a3;
- (void)setPreferredFramesPerSecond:(NSInteger)preferredFramesPerSecond;
- (void)setSampleCount:(NSUInteger)sampleCount;
@end

@implementation MTKView

- (void)_resizeDrawable
{
  [(MTKView *)self bounds];
  [(MTKView *)self _pixelSizeFromPointSize:v3, v4];
  v7 = v6;
  v8 = v5;
  if (self->_drawableSize.width != v6 || self->_drawableSize.height != v5)
  {
    v10 = [(MTKView *)self delegate];
    [v10 mtkView:self drawableSizeWillChange:{v7, v8}];

    self->_drawableSize.width = v7;
    self->_drawableSize.height = v8;
    self->_sizeDirty = 1;
  }
}

- (void)__initCommon
{
  [(MTKView *)self getEnvironmentSettings];
  if (self->_forceOrientation)
  {
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_forceOrientation];
    [v3 setValue:v4 forKey:@"orientation"];
  }

  self->_pausedOnBackgrounding = 1;
  [(MTKView *)self setContentScaleFactor:0.0];
  v5 = [(MTKView *)self layer];
  objc_storeWeak(&self->_metalLayer, v5);

  self->_sampleCount = 1;
  self->_paused = 0;
  self->_renderAttachmentDirtyState = -2147418111;
  *self->_colorPixelFormats = 0u;
  *&self->_colorPixelFormats[2] = 0u;
  *&self->_colorPixelFormats[4] = 0u;
  *&self->_colorPixelFormats[6] = 0u;
  *self->_colorTextures = 0u;
  *&self->_colorTextures[2] = 0u;
  *&self->_colorTextures[4] = 0u;
  *&self->_colorTextures[6] = 0u;
  *self->_multisampleColorTextures = 0u;
  *&self->_multisampleColorTextures[2] = 0u;
  *&self->_multisampleColorTextures[4] = 0u;
  *&self->_multisampleColorTextures[6] = 0u;
  self->_drawableAttachmentIndex = 0;
  self->_maxValidAttachmentIndex = 0;
  [(MTKView *)self setColorPixelFormat:80];
  device = self->_device;
  WeakRetained = objc_loadWeakRetained(&self->_metalLayer);
  [WeakRetained setDevice:device];

  v8 = objc_loadWeakRetained(&self->_metalLayer);
  [v8 setDelegate:self];

  v9 = objc_loadWeakRetained(&self->_metalLayer);
  [v9 setFramebufferOnly:1];

  self->_framebufferOnly = 1;
  v10 = _mtkLinkedOnOrAfter(1);
  v11 = 4;
  if (!v10)
  {
    v11 = 0;
  }

  self->_depthStencilTextureUsage = v11;
  self->_multisampleColorTextureUsage = v11;
  if (self->_dumpFrameAtFrame || self->_dumpFrameAtSeconds || self->_dumpFirstFrame)
  {
    v12 = objc_loadWeakRetained(&self->_metalLayer);
    [v12 setFramebufferOnly:0];
  }

  self->_clearColor.red = 0.0;
  self->_clearColor.green = 0.0;
  self->_clearColor.blue = 0.0;
  self->_clearColor.alpha = 1.0;
  self->_clearDepth = 1.0;
  self->_clearStencil = 0;
  self->_depthStencilStorageMode = 2;
  self->_enableSetNeedsDisplay = 0;
  if (self->_drawOffscreen)
  {
    for (i = 0; i != 3; ++i)
    {
      v14 = [[MTKOffscreenDrawable alloc] initWithDevice:self->_device pixelFormat:[(MTKView *)self colorPixelFormat] size:i drawableID:self->_drawableSize.width, self->_drawableSize.height];
      v15 = self->_offscreenSwapChain[i];
      self->_offscreenSwapChain[i] = v14;
    }
  }

  v19 = [MEMORY[0x1E696AD88] defaultCenter];
  [(MTKView *)self setOpaque:1];
  [(MTKView *)self setBackgroundColor:0];
  [(MTKView *)self setPreferredFramesPerSecond:60];
  [v19 addObserver:self selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
  [v19 addObserver:self selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
  if (!_drawRectSuperIMP)
  {
    _drawRectSuperIMP = [MEMORY[0x1E69DD250] instanceMethodForSelector:sel_drawRect_];
  }

  if (objc_opt_respondsToSelector())
  {
    drawRectSubIMP = [(MTKView *)self methodForSelector:sel_drawRect_];
    self->_drawRectSubIMP = drawRectSubIMP;
  }

  else
  {
    drawRectSubIMP = self->_drawRectSubIMP;
  }

  if (drawRectSubIMP)
  {
    v17 = drawRectSubIMP == _drawRectSuperIMP;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  self->_subClassOverridesDrawRect = v18;
  self->_autoResizeDrawable = 1;
  [(MTKView *)self _resizeDrawable];
}

- (void)getEnvironmentSettings
{
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v4 = [v3 environment];
  v51 = [v4 objectForKey:@"MTK_TERMINATE_AFTER_FRAME"];

  v5 = [MEMORY[0x1E696AE30] processInfo];
  v6 = [v5 environment];
  v50 = [v6 objectForKey:@"MTK_TERMINATE_AFTER_SECONDS"];

  v7 = [MEMORY[0x1E696AE30] processInfo];
  v8 = [v7 environment];
  v9 = [v8 objectForKey:@"MTK_MEASURE_FRAMERATE_AFTER_FRAME"];

  v10 = [MEMORY[0x1E696AE30] processInfo];
  v11 = [v10 environment];
  v12 = [v11 objectForKey:@"MTK_MEASURE_FRAMERATE_AFTER_SECONDS"];

  v13 = [MEMORY[0x1E696AE30] processInfo];
  v14 = [v13 environment];
  v49 = [v14 objectForKey:@"MTK_DUMP_PATH"];

  v15 = [MEMORY[0x1E696AE30] processInfo];
  v16 = [v15 environment];
  v17 = [v16 objectForKey:@"MTK_DUMP_FRAME_AFTER_FRAME"];

  v18 = [MEMORY[0x1E696AE30] processInfo];
  v19 = [v18 environment];
  v20 = [v19 objectForKey:@"MTK_DUMP_FRAME_AFTER_SECONDS"];

  v21 = [MEMORY[0x1E696AE30] processInfo];
  v22 = [v21 environment];
  v23 = [v22 objectForKey:@"MTK_DUMP_FIRST_FRAME"];

  v24 = [MEMORY[0x1E696AE30] processInfo];
  v25 = [v24 environment];
  v26 = [v25 objectForKey:@"MTK_DRAW_OFFSCREEN"];

  v27 = [MEMORY[0x1E696AE30] processInfo];
  v28 = [v27 environment];
  v29 = [v28 objectForKey:@"MTK_FORCE_ORIENTATION"];

  v30 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v30 setNumberStyle:1];
  v31 = [v30 numberFromString:v51];
  v48 = [v30 numberFromString:v50];
  v46 = v9;
  v47 = [v30 numberFromString:v9];
  v45 = v12;
  v32 = [v30 numberFromString:v12];
  v44 = v17;
  v33 = [v30 numberFromString:v17];
  v43 = v20;
  v34 = [v30 numberFromString:v20];
  v42 = v23;
  v35 = [v30 numberFromString:v23];
  v36 = [v30 numberFromString:v26];
  if (v49)
  {
    v37 = [v49 copy];
  }

  else
  {
    v37 = @"/tmp";
  }

  dumpPath = self->_dumpPath;
  self->_dumpPath = &v37->isa;

  if (v31)
  {
    self->_terminateAfterFrame = [v31 unsignedIntegerValue];
  }

  if (v48)
  {
    self->_terminateAfterSeconds = [v48 unsignedIntegerValue];
  }

  if (v47)
  {
    self->_measureAfterFrame = [v47 unsignedIntegerValue];
  }

  if (v32)
  {
    self->_measureAfterSeconds = [v32 unsignedIntegerValue];
  }

  if (v33)
  {
    self->_dumpFrameAtFrame = [v33 unsignedIntegerValue];
  }

  if (v34)
  {
    self->_dumpFrameAtSeconds = [v34 unsignedIntegerValue];
  }

  if (v35)
  {
    self->_dumpFirstFrame = [v35 BOOLValue];
  }

  if (v36)
  {
    self->_drawOffscreen = [v36 BOOLValue];
  }

  self->_forceOrientation = 0;
  if ([v29 isEqualToString:@"Portrait"])
  {
    v39 = 1;
LABEL_28:
    self->_forceOrientation = v39;
    goto LABEL_29;
  }

  if ([v29 isEqualToString:@"PortraitUpsideDown"])
  {
    v39 = 2;
    goto LABEL_28;
  }

  if ([v29 isEqualToString:@"LandscapeLeft"])
  {
    v39 = 4;
    goto LABEL_28;
  }

  if ([v29 isEqualToString:@"LandscapeRight"])
  {
    v39 = 3;
    goto LABEL_28;
  }

  if (!self->_forceOrientation)
  {
    v40 = [v30 numberFromString:v29];
    if (v40)
    {
      v41 = v40;
      self->_forceOrientation = [v40 unsignedIntegerValue];
      v40 = v41;
    }
  }

LABEL_29:
}

- (void)_updateToNativeScale
{
  if (self->_autoResizeDrawable)
  {
    v3 = [(MTKView *)self window];

    if (v3)
    {
      v4 = [(MTKView *)self window];
      v5 = [v4 screen];
      [v5 nativeScale];
      v7 = v6;

      [(MTKView *)self setContentScaleFactor:v7];
    }
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)drawableSize
{
  width = self->_drawableSize.width;
  height = self->_drawableSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)didMoveToWindow
{
  v3 = [(MTKView *)self window];

  if (v3)
  {
    [(MTKView *)self _updateToNativeScale];
    displayLink = [(MTKView *)self window];
    v5 = [displayLink screen];
    [(MTKView *)self _createDisplayLinkForScreen:v5];
  }

  else
  {
    [(CADisplayLink *)self->_displayLink invalidate];
    displayLink = self->_displayLink;
    self->_displayLink = 0;
  }

  v6.receiver = self;
  v6.super_class = MTKView;
  [(MTKView *)&v6 didMoveToWindow];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MTKView;
  [(MTKView *)&v3 layoutSubviews];
  if (self->_autoResizeDrawable)
  {
    [(MTKView *)self _resizeDrawable];
  }
}

- (void)draw
{
  ++self->_frameNum;
  v3 = objc_autoreleasePoolPush();
  [(MTKView *)self _resizeMetalLayerDrawable];
  if (self->_subClassOverridesDrawRect)
  {
    drawRectSubIMP = self->_drawRectSubIMP;
    [(MTKView *)self bounds];
    drawRectSubIMP(self, sel_drawRect_);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained drawInMTKView:self];
  }

  if (self->_frameNum == 1)
  {
    if (self->_dumpFirstFrame)
    {
      [(MTKView *)self _dumpFrameImageWithFilename:@"MTKViewFirstFrameDump"];
    }

    self->_startTime = CACurrentMediaTime();
  }

  v6 = CACurrentMediaTime();
  startTime = self->_startTime;
  dumpFrameAtFrame = self->_dumpFrameAtFrame;
  if (dumpFrameAtFrame && dumpFrameAtFrame <= self->_frameNum)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MTKViewFrameDumpAfterFrame_%d", self->_frameNum];
    [(MTKView *)self _dumpFrameImageWithFilename:v9];
    self->_dumpFrameAtFrame = 0;
  }

  v10 = v6 - startTime;
  dumpFrameAtSeconds = self->_dumpFrameAtSeconds;
  if (dumpFrameAtSeconds && v10 >= dumpFrameAtSeconds)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MTKViewFrameDumpAfterSeconds_%lu", self->_dumpFrameAtSeconds];
    [(MTKView *)self _dumpFrameImageWithFilename:v12];
    self->_dumpFrameAtSeconds = 0;
  }

  measureAfterFrame = self->_measureAfterFrame;
  if (measureAfterFrame && measureAfterFrame <= self->_frameNum)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MTKViewFramerateAfterFrame_%d", self->_frameNum];
    LODWORD(v15) = self->_frameNum;
    [(MTKView *)self _dumpFramerate:v14 withFilename:v15 / v10];
    self->_measureAfterFrame = 0;
  }

  measureAfterSeconds = self->_measureAfterSeconds;
  if (measureAfterSeconds && v10 >= measureAfterSeconds)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MTKViewFramerateAfterSeconds_%lu", self->_measureAfterSeconds];
    LODWORD(v18) = self->_frameNum;
    [(MTKView *)self _dumpFramerate:v17 withFilename:v18 / v10];
    self->_measureAfterSeconds = 0;
  }

  terminateAfterFrame = self->_terminateAfterFrame;
  if (terminateAfterFrame && terminateAfterFrame <= self->_frameNum || (terminateAfterSeconds = self->_terminateAfterSeconds) != 0 && v10 >= terminateAfterSeconds)
  {
    exit(0);
  }

  currentDrawable = self->_currentDrawable;
  self->_currentDrawable = 0;

  drawableAttachmentIndex = self->_drawableAttachmentIndex;
  v23 = self->_colorTextures[drawableAttachmentIndex];
  self->_colorTextures[drawableAttachmentIndex] = 0;

  objc_autoreleasePoolPop(v3);
}

- (void)_resizeMetalLayerDrawable
{
  if (self->_sizeDirty)
  {
    width = self->_drawableSize.width;
    height = self->_drawableSize.height;
    WeakRetained = objc_loadWeakRetained(&self->_metalLayer);
    [WeakRetained setDrawableSize:{width, height}];

    self->_renderAttachmentDirtyState |= 0x80010001;
    self->_sizeDirty = 0;
  }
}

- (MTLRenderPassDescriptor)currentRenderPassDescriptor
{
  v3 = [(MTKView *)self currentDrawable];
  if (v3)
  {
    v4 = [MEMORY[0x1E6974128] renderPassDescriptor];
    v5 = [v4 colorAttachments];
    [(MTKView *)self configureColorAttachments:v5];

    v6 = [(MTKView *)self depthStencilTexture];

    if (v6)
    {
      v7 = [v4 depthAttachment];
      v8 = [v4 stencilAttachment];
      [(MTKView *)self configureDepthAttachment:v7 stencilAttachment:v8];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)currentDrawable
{
  currentDrawable = self->_currentDrawable;
  if (!currentDrawable)
  {
    v4 = objc_autoreleasePoolPush();
    if (self->_drawOffscreen)
    {
      v5 = (self->_drawableIdx + 1) % 3;
      self->_drawableIdx = v5;
      v6 = self->_offscreenSwapChain[v5];
      v7 = self->_currentDrawable;
      self->_currentDrawable = v6;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_metalLayer);
      v9 = [WeakRetained nextDrawable];
      v10 = self->_currentDrawable;
      self->_currentDrawable = v9;

      if (self->_frameNum != 1 || self->_dumpFrameAtFrame || self->_dumpFrameAtSeconds || !self->_dumpFirstFrame || !self->_framebufferOnly)
      {
        goto LABEL_11;
      }

      v7 = objc_loadWeakRetained(&self->_metalLayer);
      [v7 setFramebufferOnly:1];
    }

LABEL_11:
    objc_autoreleasePoolPop(v4);
    currentDrawable = self->_currentDrawable;
  }

  return currentDrawable;
}

- (id)depthStencilTexture
{
  if ((self->_renderAttachmentDirtyState & 0x80000000) == 0)
  {
    p_depthStencilTexture = &self->_depthStencilTexture;
LABEL_3:
    v4 = *p_depthStencilTexture;
    goto LABEL_4;
  }

  if (self->_device)
  {
    p_depthStencilTexture = &self->_depthStencilTexture;
    depthStencilTexture = self->_depthStencilTexture;
    if (!depthStencilTexture)
    {
      goto LABEL_19;
    }

    v7 = [(MTLTexture *)depthStencilTexture width];
    WeakRetained = objc_loadWeakRetained(&self->_metalLayer);
    [WeakRetained drawableSize];
    if (v9 == v7)
    {
      v10 = [(MTLTexture *)*p_depthStencilTexture height];
      v11 = objc_loadWeakRetained(&self->_metalLayer);
      [v11 drawableSize];
      if (v12 == v10 && [(MTLTexture *)*p_depthStencilTexture sampleCount]== self->_sampleCount && [(MTLTexture *)*p_depthStencilTexture pixelFormat]== self->_depthStencilPixelFormat && [(MTLTexture *)*p_depthStencilTexture usage]== self->_depthStencilTextureUsage)
      {
        v13 = [(MTLTexture *)*p_depthStencilTexture storageMode];
        depthStencilStorageMode = self->_depthStencilStorageMode;

        if (v13 == depthStencilStorageMode)
        {
          goto LABEL_3;
        }

LABEL_19:
        if (self->_depthStencilPixelFormat)
        {
          Main = CFRunLoopGetMain();
          v16 = *MEMORY[0x1E695E8D0];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __30__MTKView_depthStencilTexture__block_invoke;
          block[3] = &unk_1E8580E00;
          block[4] = self;
          CFRunLoopPerformBlock(Main, v16, block);
          v17 = CFRunLoopGetMain();
          CFRunLoopWakeUp(v17);
          [(MTKView *)self _resizeMetalLayerDrawable];
          [(MTKView *)self createDepthStencilTexture];
        }

        goto LABEL_3;
      }
    }

    goto LABEL_19;
  }

  v4 = 0;
LABEL_4:

  return v4;
}

- (void)createDepthStencilTexture
{
  v3 = MEMORY[0x1E69741C0];
  depthStencilPixelFormat = self->_depthStencilPixelFormat;
  WeakRetained = objc_loadWeakRetained(&self->_metalLayer);
  [WeakRetained drawableSize];
  v7 = v6;
  v8 = objc_loadWeakRetained(&self->_metalLayer);
  [v8 drawableSize];
  v15 = [v3 texture2DDescriptorWithPixelFormat:depthStencilPixelFormat width:v7 height:v9 mipmapped:0];

  if (self->_sampleCount >= 2)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  [v15 setTextureType:v10];
  [v15 setSampleCount:self->_sampleCount];
  [v15 setUsage:self->_depthStencilTextureUsage];
  [v15 setStorageMode:self->_depthStencilStorageMode];
  v11 = [(MTLDevice *)self->_device newTextureWithDescriptor:v15];
  depthStencilTexture = self->_depthStencilTexture;
  self->_depthStencilTexture = v11;

  v13 = self->_depthStencilPixelFormat - 250;
  if (v13 > 3)
  {
    v14 = @"MTKView Depth Stencil";
  }

  else
  {
    v14 = off_1E8580E20[v13];
  }

  [(MTLTexture *)self->_depthStencilTexture setLabel:v14];
  self->_renderAttachmentDirtyState &= ~0x80000000;
}

- (BOOL)exportToTargaAtLocation:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5 size:(unint64_t)a6 bytes:(void *)a7
{
  v9 = a5;
  v10 = a4;
  v11 = MEMORY[0x1E695DF88];
  v12 = a3;
  v13 = [[v11 alloc] initWithLength:18];
  v14 = [v13 mutableBytes];
  *v14 = 0;
  *(v14 + 2) = 2;
  *(v14 + 3) = 0;
  *(v14 + 11) = 0;
  *(v14 + 12) = v10;
  *(v14 + 14) = v9;
  *(v14 + 16) = 32;
  [v13 appendBytes:a7 length:a6];
  v20 = 0;
  v15 = [v13 writeToURL:v12 options:0 error:&v20];

  v16 = v20;
  v17 = v16;
  if ((v15 & 1) == 0)
  {
    v18 = [v16 localizedDescription];
    NSLog(&cfstr_CouldnTExportI.isa, v18);
  }

  return v15;
}

- (void)_dumpFramerate:(double)a3 withFilename:(id)a4
{
  dumpPath = self->_dumpPath;
  v6 = a4;
  v7 = [(NSString *)dumpPath copy];
  v8 = [v7 stringByAppendingString:@"/"];

  v9 = [v8 stringByAppendingString:v6];

  v13 = [v9 stringByAppendingString:@".txt"];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&a3];
  v11 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = [v10 dataUsingEncoding:4];
  [v11 createFileAtPath:v13 contents:v12 attributes:0];
}

- (void)_dumpFrameImageWithFilename:(id)a3
{
  v4 = a3;
  v5 = self->_colorPixelFormats[self->_drawableAttachmentIndex];
  v6 = 4.0;
  if (v5 - 70 > 0x2D)
  {
    goto LABEL_4;
  }

  if (((1 << (v5 - 70)) & 0xC03) != 0)
  {
    goto LABEL_7;
  }

  if (v5 != 115)
  {
LABEL_4:
    if (v5 - 554 < 2)
    {
      goto LABEL_7;
    }

    if (v5 - 552 > 1)
    {
      [MTKView _dumpFrameImageWithFilename:];
    }
  }

  v6 = 8.0;
LABEL_7:
  p_drawableSize = &self->_drawableSize;
  v26 = (v6 * self->_drawableSize.width);
  v8 = (self->_drawableSize.height * v26);
  v28 = self->_colorPixelFormats[self->_drawableAttachmentIndex];
  v30 = [[MTKTextureIOBufferAllocator alloc] initWithDevice:self->_device];
  v27 = [(MTKTextureIOBufferAllocator *)v30 newBufferWithLength:v8];
  v29 = [(MTLDevice *)self->_device newCommandQueue];
  v9 = [v29 commandBuffer];
  v10 = [v9 blitCommandEncoder];
  width = self->_drawableSize.width;
  height = self->_drawableSize.height;
  v13 = [(CAMetalDrawable *)self->_currentDrawable texture];
  memset(v33, 0, 24);
  v14 = [v27 buffer];
  v32[0] = width;
  v32[1] = height;
  v15 = v4;
  v32[2] = 1;
  [v10 copyFromTexture:v13 sourceSlice:0 sourceLevel:0 sourceOrigin:v33 sourceSize:v32 toBuffer:v14 destinationOffset:0 destinationBytesPerRow:v26 destinationBytesPerImage:v8];

  [v10 endEncoding];
  [v9 commit];
  [v9 waitUntilCompleted];
  v16 = [MEMORY[0x1E695DFF8] URLWithString:@"file:///"];
  v17 = [v16 URLByAppendingPathComponent:self->_dumpPath];

  v18 = [v17 URLByAppendingPathComponent:v4];

  v19 = [v18 URLByAppendingPathExtension:@"png"];

  v20 = COERCE_DOUBLE(vmovn_s64(vcvtq_u64_f64(*p_drawableSize)));
  v21 = [objc_alloc(MEMORY[0x1E69DA0C0]) initWithDimensions:v28 pixelFormat:0 alphaInfo:v26 bytesPerRow:v8 bytesPerImage:v27 buffer:0 offset:v20];
  v31 = 0;
  LOBYTE(v18) = [v21 exportToURL:v19 uttype:@"public.png" error:&v31];
  v22 = v31;
  if ((v18 & 1) == 0)
  {
    v23 = [v19 absoluteString];
    v24 = [v23 UTF8String];
    v25 = [v22 localizedDescription];
    printf("Image Dump Error - %s: %s ", v24, [v25 UTF8String]);
  }
}

- (void)setColorPixelFormat:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if (a4 <= 8)
  {
    v4 = a4;
    colorPixelFormats = self->_colorPixelFormats;
    self->_colorPixelFormats[a4] = a3;
    self->_renderAttachmentDirtyState |= 0x10001u;
    if (self->_drawableAttachmentIndex == a4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_metalLayer);
      [WeakRetained setPixelFormat:a3];
    }

    maxValidAttachmentIndex = self->_maxValidAttachmentIndex;
    if (a3)
    {
      if (maxValidAttachmentIndex >= v4)
      {
        return;
      }

      goto LABEL_6;
    }

    if (maxValidAttachmentIndex == v4)
    {
      for (i = 7; ; --i)
      {
        v4 = i;
        if (colorPixelFormats[i])
        {
          break;
        }

        if (!v4)
        {
          return;
        }
      }

LABEL_6:
      self->_maxValidAttachmentIndex = v4;
    }
  }
}

- (void)setDrawableAttachmentIndex:(unint64_t)a3
{
  if (self->_drawableAttachmentIndex <= 7)
  {
    self->_drawableAttachmentIndex = a3;
  }
}

- (void)setDevice:(id)device
{
  v5 = device;
  if (self->_device != v5)
  {
    depthStencilTexture = self->_depthStencilTexture;
    self->_depthStencilTexture = 0;
    v10 = v5;

    multisampleColorTexture = self->_multisampleColorTexture;
    self->_multisampleColorTexture = 0;

    WeakRetained = objc_loadWeakRetained(&self->_metalLayer);
    [WeakRetained setDevice:v10];

    if (self->_drawOffscreen)
    {
      for (i = 0; i != 3; ++i)
      {
        [(MTKOffscreenDrawable *)self->_offscreenSwapChain[i] setDevice:v10];
      }
    }

    self->_renderAttachmentDirtyState |= 0x80010001;
    objc_storeStrong(&self->_device, device);
    v5 = v10;
  }
}

- (const)multisampleColorTexturesForceUpdate:(BOOL)a3
{
  [(MTKView *)self colorTextures];
  v5 = &OBJC_IVAR___MTKView__forceOrientation;
  if ((self->_renderAttachmentDirtyState & 0x10000) == 0)
  {
    return (&self->super.super.super.isa + v5[8]);
  }

  if (self->_device)
  {
    v6 = 0;
    v35 = *MEMORY[0x1E695E8D0];
    v7 = &OBJC_IVAR___MTKView__forceOrientation;
    v36 = a3;
    do
    {
      if (a3 || (v8 = self + v5[8], (v9 = *&v8[8 * v6]) == 0))
      {
        v16 = 0;
      }

      else
      {
        v10 = [v9 width];
        WeakRetained = objc_loadWeakRetained(&self->_metalLayer);
        [WeakRetained drawableSize];
        if (v12 == v10)
        {
          v13 = [*&v8[8 * v6] height];
          v14 = objc_loadWeakRetained(&self->_metalLayer);
          [v14 drawableSize];
          v16 = v15 == v13 && [*&v8[8 * v6] sampleCount] == *(&self->super.super.super.isa + v7[3]) && objc_msgSend(*&v8[8 * v6], "pixelFormat") == self->_colorPixelFormats[v6] && objc_msgSend(*&v8[8 * v6], "usage") == self->_multisampleColorTextureUsage;
        }

        else
        {
          v16 = 0;
        }
      }

      v17 = v7[3];
      if (*(&self->super.super.super.isa + v17) >= 2 && !v16)
      {
        if (self->_colorPixelFormats[v6])
        {
          Main = CFRunLoopGetMain();
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __47__MTKView_multisampleColorTexturesForceUpdate___block_invoke;
          block[3] = &unk_1E8580E00;
          block[4] = self;
          CFRunLoopPerformBlock(Main, v35, block);
          v19 = CFRunLoopGetMain();
          CFRunLoopWakeUp(v19);
          [(MTKView *)self _resizeMetalLayerDrawable];
          v20 = MEMORY[0x1E69741C0];
          v21 = self->_colorPixelFormats[v6];
          v22 = objc_loadWeakRetained(&self->_metalLayer);
          [v22 drawableSize];
          v23 = v7;
          v24 = v5;
          v26 = v25;
          v27 = objc_loadWeakRetained(&self->_metalLayer);
          [v27 drawableSize];
          v29 = v26;
          v5 = v24;
          v7 = v23;
          v30 = [v20 texture2DDescriptorWithPixelFormat:v21 width:v29 height:v28 mipmapped:0];

          a3 = v36;
          [v30 setTextureType:4];
          [v30 setSampleCount:*(&self->super.super.super.isa + v17)];
          [v30 setUsage:self->_multisampleColorTextureUsage];
          [v30 setStorageMode:2];
          v31 = [(MTLDevice *)self->_device newTextureWithDescriptor:v30];
        }

        else
        {
          v31 = 0;
        }

        v32 = self + v5[8];
        v33 = *&v32[8 * v6];
        *&v32[8 * v6] = v31;
      }

      ++v6;
    }

    while (v6 <= self->_maxValidAttachmentIndex);
    self->_renderAttachmentDirtyState &= ~0x10000u;
    return (&self->super.super.super.isa + v5[8]);
  }

  return 0;
}

- (id)multisampleColorTexture
{
  v2 = [(MTKView *)self multisampleColorTextures][8 * self->_drawableAttachmentIndex];

  return v2;
}

- (void)setPreferredFramesPerSecond:(NSInteger)preferredFramesPerSecond
{
  self->_preferredFramesPerSecond = preferredFramesPerSecond;
  if (preferredFramesPerSecond <= 0)
  {
    [(MTKView *)self setPaused:1];
    preferredFramesPerSecond = self->_preferredFramesPerSecond;
  }

  [(MTKView *)self setNominalFramesPerSecond:preferredFramesPerSecond];
  v4 = self->_preferredFramesPerSecond;
  displayLink = self->_displayLink;

  [(CADisplayLink *)displayLink setPreferredFramesPerSecond:v4];
}

- (int64_t)_calculateRefeshesPerSecond
{
  v2 = [(MTKView *)self window];
  v3 = [v2 screen];
  v4 = v3;
  if (v3)
  {
    [v3 _refreshRate];
    v6 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v7 _refreshRate];
    v6 = v8;
  }

  if (v6 == 0.0)
  {
    return 0;
  }

  else
  {
    return llround(1.0 / v6);
  }
}

- (void)_createDisplayLinkForScreen:(id)a3
{
  displayLink = self->_displayLink;
  v5 = a3;
  [(CADisplayLink *)displayLink invalidate];
  v10 = [[MTKViewDisplayLinkTarget alloc] initWithTarget:self];
  v6 = [v5 displayLinkWithTarget:v10 selector:sel_draw];

  v7 = self->_displayLink;
  self->_displayLink = v6;

  v8 = self->_displayLink;
  v9 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [(CADisplayLink *)v8 addToRunLoop:v9 forMode:*MEMORY[0x1E695DA28]];

  [(CADisplayLink *)self->_displayLink setPaused:self->_paused];
  [(CADisplayLink *)self->_displayLink setPreferredFramesPerSecond:self->_preferredFramesPerSecond];
}

- (void)_applicationWillEnterForeground:(id)a3
{
  v4 = a3;
  if (!self->_pausedOnBackgrounding && self->_paused)
  {
    v5 = v4;
    [(MTKView *)self setPaused:0];
    v4 = v5;
  }
}

- (void)_applicationDidEnterBackground:(id)a3
{
  [(MTKView *)self releaseDrawables];
  paused = self->_paused;
  self->_pausedOnBackgrounding = paused;
  if (!paused)
  {

    [(MTKView *)self setPaused:1];
  }
}

- (MTKView)initWithFrame:(CGRect)frameRect device:(id)device
{
  height = frameRect.size.height;
  width = frameRect.size.width;
  y = frameRect.origin.y;
  x = frameRect.origin.x;
  v10 = device;
  v14.receiver = self;
  v14.super_class = MTKView;
  v11 = [(MTKView *)&v14 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_device, device);
    [(MTKView *)v12 __initCommon];
  }

  return v12;
}

- (MTKView)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v17.receiver = self;
  v17.super_class = MTKView;
  v5 = [(MTKView *)&v17 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    device = v5->_device;
    v5->_device = 0;

    [(MTKView *)v6 __initCommon];
    v8 = 0;
    if ([(NSCoder *)v4 containsValueForKey:@"MTKViewNumberColorPixelFormatsCoderKey"])
    {
      v8 = [(NSCoder *)v4 decodeIntegerForKey:@"MTKViewNumberColorPixelFormatsCoderKey"];
      v6->_maxValidAttachmentIndex = v8 - 1;
    }

    if ([(NSCoder *)v4 containsValueForKey:@"MTKViewColorPixelFormatArrayCoderKey"])
    {
      v16 = 0;
      v9 = [(NSCoder *)v4 decodeBytesForKey:@"MTKViewColorPixelFormatArrayCoderKey" returnedLength:&v16];
      if (v16 != 8 * v8)
      {
        [MTKView initWithCoder:];
      }

      if (v8)
      {
        v10 = v9;
        for (i = 0; i != v8; ++i)
        {
          [(MTKView *)v6 setColorPixelFormat:*(v10 + 8 * i) atIndex:i];
        }
      }
    }

    if ([(NSCoder *)v4 containsValueForKey:@"MTKViewDrawableAttachmentIndexCoderKey"])
    {
      [(MTKView *)v6 setDrawableAttachmentIndex:[(NSCoder *)v4 decodeIntForKey:@"MTKViewDrawableAttachmentIndexCoderKey"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"MTKViewColorPixelFormatCoderKey"])
    {
      [(MTKView *)v6 setColorPixelFormat:[(NSCoder *)v4 decodeIntForKey:@"MTKViewColorPixelFormatCoderKey"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"MTKViewDepthStencilPixelFormatCoderKey"])
    {
      [(MTKView *)v6 setDepthStencilPixelFormat:[(NSCoder *)v4 decodeIntForKey:@"MTKViewDepthStencilPixelFormatCoderKey"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"MTKViewSampleCountCoderKey"])
    {
      [(MTKView *)v6 setSampleCount:[(NSCoder *)v4 decodeIntForKey:@"MTKViewSampleCountCoderKey"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"MTKViewClearColorCoderKey"])
    {
      v12 = [(NSCoder *)v4 decodeObjectForKey:@"MTKViewClearColorCoderKey"];
      v13 = [v12 bytes];
      [(MTKView *)v6 setClearColor:*v13, v13[1], v13[2], v13[3]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"MTKViewFramebufferOnlyCoderKey"])
    {
      [(MTKView *)v6 setFramebufferOnly:[(NSCoder *)v4 decodeBoolForKey:@"MTKViewFramebufferOnlyCoderKey"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"MTKViewPresentsWithTransactionCoderKey"])
    {
      [(MTKView *)v6 setPresentsWithTransaction:[(NSCoder *)v4 decodeBoolForKey:@"MTKViewPresentsWithTransactionCoderKey"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"MTKViewClearDepthCoderKey"])
    {
      [(NSCoder *)v4 decodeFloatForKey:@"MTKViewClearDepthCoderKey"];
      [(MTKView *)v6 setClearDepth:v14];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"MTKViewClearStencilCoderKey"])
    {
      [(MTKView *)v6 setClearStencil:[(NSCoder *)v4 decodeIntForKey:@"MTKViewClearStencilCoderKey"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"MTKViewPreferredFramesPerSecondCoderKey"])
    {
      [(MTKView *)v6 setPreferredFramesPerSecond:[(NSCoder *)v4 decodeIntForKey:@"MTKViewPreferredFramesPerSecondCoderKey"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"MTKViewEnableSetNeedsDisplayCoderKey"])
    {
      [(MTKView *)v6 setEnableSetNeedsDisplay:[(NSCoder *)v4 decodeBoolForKey:@"MTKViewEnableSetNeedsDisplayCoderKey"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"MTKViewPausedCoderKey"])
    {
      [(MTKView *)v6 setPaused:[(NSCoder *)v4 decodeBoolForKey:@"MTKViewPausedCoderKey"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"MTKViewAutoResizeDrawableCoderKey"])
    {
      [(MTKView *)v6 setAutoResizeDrawable:[(NSCoder *)v4 decodeBoolForKey:@"MTKViewAutoResizeDrawableCoderKey"]];
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MTKView;
  [(MTKView *)&v18 encodeWithCoder:v4];
  maxValidAttachmentIndex = self->_maxValidAttachmentIndex;
  v6 = maxValidAttachmentIndex + 1;
  v7 = maxValidAttachmentIndex == -1;
  [v4 encodeInteger:maxValidAttachmentIndex + 1 forKey:@"MTKViewNumberColorPixelFormatsCoderKey"];
  v8 = 8 * v6;
  v9 = malloc_type_malloc(8 * v6, 0xA42A86C0uLL);
  v10 = v9;
  if (!v7)
  {
    colorPixelFormats = self->_colorPixelFormats;
    v12 = v9;
    do
    {
      v13 = *colorPixelFormats++;
      *v12++ = v13;
      --v6;
    }

    while (v6);
  }

  [v4 encodeBytes:v9 length:v8 forKey:@"MTKViewColorPixelFormatArrayCoderKey"];
  free(v10);
  [v4 encodeInteger:-[MTKView drawableAttachmentIndex](self forKey:{"drawableAttachmentIndex"), @"MTKViewDrawableAttachmentIndexCoderKey"}];
  [v4 encodeInteger:-[MTKView colorPixelFormat](self forKey:{"colorPixelFormat"), @"MTKViewColorPixelFormatCoderKey"}];
  [v4 encodeInteger:self->_depthStencilPixelFormat forKey:@"MTKViewDepthStencilPixelFormatCoderKey"];
  [v4 encodeInteger:self->_sampleCount forKey:@"MTKViewSampleCountCoderKey"];
  v14 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_clearColor length:32];
  [v4 encodeObject:v14 forKey:@"MTKViewClearColorCoderKey"];
  clearDepth = self->_clearDepth;
  *&clearDepth = clearDepth;
  [v4 encodeFloat:@"MTKViewClearDepthCoderKey" forKey:clearDepth];
  [v4 encodeInteger:self->_clearStencil forKey:@"MTKViewClearStencilCoderKey"];
  [v4 encodeInteger:self->_preferredFramesPerSecond forKey:@"MTKViewPreferredFramesPerSecondCoderKey"];
  [v4 encodeBool:self->_enableSetNeedsDisplay forKey:@"MTKViewEnableSetNeedsDisplayCoderKey"];
  [v4 encodeBool:self->_paused forKey:@"MTKViewPausedCoderKey"];
  WeakRetained = objc_loadWeakRetained(&self->_metalLayer);
  [v4 encodeBool:objc_msgSend(WeakRetained forKey:{"framebufferOnly"), @"MTKViewFramebufferOnlyCoderKey"}];

  v17 = objc_loadWeakRetained(&self->_metalLayer);
  [v4 encodeBool:objc_msgSend(v17 forKey:{"presentsWithTransaction"), @"MTKViewPresentsWithTransactionCoderKey"}];

  [v4 encodeBool:self->_autoResizeDrawable forKey:@"MTKViewAutoResizeDrawableCoderKey"];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];
  [(CADisplayLink *)self->_displayLink invalidate];

  v4.receiver = self;
  v4.super_class = MTKView;
  [(MTKView *)&v4 dealloc];
}

- (void)releaseDrawables
{
  depthStencilTexture = self->_depthStencilTexture;
  self->_depthStencilTexture = 0;

  multisampleColorTexture = self->_multisampleColorTexture;
  self->_multisampleColorTexture = 0;

  self->_renderAttachmentDirtyState |= 0x80010000;
}

- (void)configureColorAttachments:(id)a3
{
  v8 = a3;
  if (self->_sampleCount < 2)
  {
    [(MTKView *)self colorTextures];
    v6 = 0;
    do
    {
      v7 = [v8 objectAtIndexedSubscript:v6];
      [v7 setTexture:self->_colorTextures[v6]];
      [v7 setLoadAction:2];
      [v7 setClearColor:{self->_clearColor.red, self->_clearColor.green, self->_clearColor.blue, self->_clearColor.alpha}];

      ++v6;
    }

    while (v6 <= self->_maxValidAttachmentIndex);
  }

  else
  {
    [(MTKView *)self multisampleColorTextures];
    v4 = 0;
    do
    {
      v5 = [v8 objectAtIndexedSubscript:v4];
      [v5 setTexture:self->_multisampleColorTextures[v4]];
      [v5 setResolveTexture:self->_colorTextures[v4]];
      [v5 setStoreAction:2];
      [v5 setLoadAction:2];
      [v5 setClearColor:{self->_clearColor.red, self->_clearColor.green, self->_clearColor.blue, self->_clearColor.alpha}];

      ++v4;
    }

    while (v4 <= self->_maxValidAttachmentIndex);
  }
}

- (void)configureDepthAttachment:(id)a3 stencilAttachment:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (self->_depthStencilPixelFormat == 253)
  {
    [v10 setTexture:0];
  }

  else
  {
    v7 = [(MTKView *)self depthStencilTexture];
    [v10 setTexture:v7];

    [v10 setLoadAction:2];
    [v10 setStoreAction:0];
    [v10 setClearDepth:self->_clearDepth];
  }

  depthStencilPixelFormat = self->_depthStencilPixelFormat;
  if (depthStencilPixelFormat == 252 || depthStencilPixelFormat == 250)
  {
    [v6 setTexture:0];
  }

  else
  {
    v9 = [(MTKView *)self depthStencilTexture];
    [v6 setTexture:v9];

    [v6 setLoadAction:2];
    [v6 setStoreAction:0];
    [v6 setClearStencil:self->_clearStencil];
  }
}

- (MTL4RenderPassDescriptor)currentMTL4RenderPassDescriptor
{
  v3 = [(MTKView *)self currentDrawable];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [v4 colorAttachments];
    [(MTKView *)self configureColorAttachments:v5];

    v6 = [(MTKView *)self depthStencilTexture];

    if (v6)
    {
      v7 = [v4 depthAttachment];
      v8 = [v4 stencilAttachment];
      [(MTKView *)self configureDepthAttachment:v7 stencilAttachment:v8];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGSize)_pixelSizeFromPointSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(MTKView *)self window];
  v7 = [v6 screen];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  v10 = v9;

  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v10 fixedCoordinateSpace];
  [(MTKView *)self convertRect:v19 toCoordinateSpace:v12, v14, v16, v18];
  v42 = CGRectIntegral(v41);
  v20 = v42.size.width;

  [v10 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [v10 coordinateSpace];
  [(MTKView *)self convertRect:v29 toCoordinateSpace:v22, v24, v26, v28];
  v44 = CGRectIntegral(v43);
  v30 = v44.size.width;

  [(MTKView *)self contentScaleFactor];
  v32 = v31 * self->_drawableScaleFactor.width;
  [(MTKView *)self contentScaleFactor];
  v34 = v33 * self->_drawableScaleFactor.height;
  if (v20 == v30)
  {
    v35 = v32;
  }

  else
  {
    v35 = v34;
  }

  if (v20 != v30)
  {
    v34 = v32;
  }

  v36 = round(width * v35);
  v37 = round(height * v34);

  v38 = v36;
  v39 = v37;
  result.height = v39;
  result.width = v38;
  return result;
}

- (void)displayLayer:(id)a3
{
  if (self->_enableSetNeedsDisplay)
  {
    [(MTKView *)self draw];
  }
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  if (self->_enableSetNeedsDisplay)
  {
    [(MTKView *)self displayLayer:a3, a4];
  }
}

- (void)setEnableSetNeedsDisplay:(BOOL)enableSetNeedsDisplay
{
  self->_enableSetNeedsDisplay = enableSetNeedsDisplay;
  if (enableSetNeedsDisplay)
  {
    [(MTKView *)self setPaused:1];
  }
}

- (void)setDrawableSize:(CGSize)drawableSize
{
  height = drawableSize.height;
  width = drawableSize.width;
  p_drawableSize = &self->_drawableSize;
  if (self->_drawableSize.width != drawableSize.width || self->_drawableSize.height != drawableSize.height)
  {
    [(MTKView *)self bounds];
    v9 = v8;
    [(MTKView *)self setContentScaleFactor:width / v10];
    self->_drawableScaleFactor.width = 1.0;
    [(MTKView *)self contentScaleFactor];
    self->_drawableScaleFactor.height = height / v9 / v11;
    v12 = [(MTKView *)self delegate];
    [v12 mtkView:self drawableSizeWillChange:{width, height}];

    p_drawableSize->width = width;
    p_drawableSize->height = height;
    self->_sizeDirty = 1;
  }
}

- (id)preferredDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_metalLayer);
  v3 = [WeakRetained preferredDevice];

  return v3;
}

- (void)setContentScaleFactor:(double)a3
{
  v5 = [(MTKView *)self window];
  v6 = [v5 screen];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  v9 = v8;

  [v9 nativeScale];
  v11 = v10;
  [(MTKView *)self contentScaleFactor];
  if (a3 != 0.0 && v12 == a3)
  {
    v40.receiver = self;
    v40.super_class = MTKView;
    [(MTKView *)&v40 setContentScaleFactor:a3];
    goto LABEL_18;
  }

  v13 = v11;
  [v9 nativeBounds];
  v15 = v14;
  v17 = v16;
  [v9 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [v9 fixedCoordinateSpace];
  [(MTKView *)self convertRect:v26 toCoordinateSpace:v19, v21, v23, v25];
  v28 = v27;
  v30 = v29;

  v31 = [MEMORY[0x1E696AE30] processInfo];
  if (([v31 isMacCatalystApp] & 1) == 0)
  {

LABEL_11:
    v35 = (v15 <= v17) ^ (v28 > v30);
    if (v35)
    {
      v34 = v30;
    }

    else
    {
      v34 = v28;
    }

    if (!v35)
    {
      v28 = v30;
    }

    goto LABEL_16;
  }

  v32 = [MEMORY[0x1E696AE30] processInfo];
  v33 = [v32 isiOSAppOnMac];

  if (v33)
  {
    goto LABEL_11;
  }

  v34 = v30;
LABEL_16:
  self->_drawableScaleFactor.width = v15 / v28 / v13;
  self->_drawableScaleFactor.height = v17 / v34 / v13;
  v40.receiver = self;
  v40.super_class = MTKView;
  [(MTKView *)&v40 setContentScaleFactor:a3];
  [(MTKView *)self contentScaleFactor];
  if (v36 == 0.0)
  {
    [MTKView setContentScaleFactor:];
  }

  [(MTKView *)self contentScaleFactor];
  v38 = v37;
  WeakRetained = objc_loadWeakRetained(&self->_metalLayer);
  [WeakRetained setContentsScale:v38];

  [(MTKView *)self _resizeDrawable];
LABEL_18:
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = MTKView;
  [(MTKView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (self->_autoResizeDrawable)
  {
    [(MTKView *)self _resizeDrawable];
  }
}

- (void)setNilValueForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"clearColor"])
  {
    [(MTKView *)self setClearColor:0.0, 0.0, 0.0, 1.0];
  }

  else if ([v4 isEqualToString:@"sampleCount"])
  {
    [(MTKView *)self setSampleCount:1];
  }

  else if ([v4 isEqualToString:@"clearDepth"])
  {
    [(MTKView *)self setClearDepth:1.0];
  }

  else if ([v4 isEqualToString:@"clearStencil"])
  {
    [(MTKView *)self setClearStencil:0];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MTKView;
    [(MTKView *)&v5 setNilValueForKey:v4];
  }
}

- (void)setSampleCount:(NSUInteger)sampleCount
{
  if (sampleCount <= 1)
  {
    multisampleColorTexture = self->_multisampleColorTexture;
    self->_multisampleColorTexture = 0;
  }

  self->_sampleCount = sampleCount;
  self->_renderAttachmentDirtyState |= 0x80010001;
}

- (void)setDepthStencilPixelFormat:(MTLPixelFormat)depthStencilPixelFormat
{
  if (depthStencilPixelFormat)
  {
    if (depthStencilPixelFormat == MTLPixelFormatX32_Stencil8)
    {
      [MTKView setDepthStencilPixelFormat:];
    }
  }

  else
  {
    depthStencilTexture = self->_depthStencilTexture;
    self->_depthStencilTexture = 0;
  }

  self->_depthStencilPixelFormat = depthStencilPixelFormat;
  self->_renderAttachmentDirtyState |= 0x80000000;
}

- (void)setDepthStencilAttachmentTextureUsage:(MTLTextureUsage)depthStencilAttachmentTextureUsage
{
  if (self->_depthStencilTextureUsage != depthStencilAttachmentTextureUsage)
  {
    self->_depthStencilTextureUsage = depthStencilAttachmentTextureUsage;
    self->_renderAttachmentDirtyState |= 0x80000000;
  }
}

- (void)setDepthStencilStorageMode:(MTLStorageMode)depthStencilStorageMode
{
  if (self->_depthStencilStorageMode != depthStencilStorageMode)
  {
    self->_depthStencilStorageMode = depthStencilStorageMode;
    self->_renderAttachmentDirtyState |= 0x80000000;
  }
}

- (void)setMultisampleColorAttachmentTextureUsage:(MTLTextureUsage)multisampleColorAttachmentTextureUsage
{
  if (self->_multisampleColorTextureUsage != multisampleColorAttachmentTextureUsage)
  {
    self->_multisampleColorTextureUsage = multisampleColorAttachmentTextureUsage;
    self->_renderAttachmentDirtyState |= 0x10001u;
  }
}

- (BOOL)framebufferOnly
{
  self->_framebufferOnly = 0;
  WeakRetained = objc_loadWeakRetained(&self->_metalLayer);
  v3 = [WeakRetained framebufferOnly];

  return v3;
}

- (BOOL)presentsWithTransaction
{
  WeakRetained = objc_loadWeakRetained(&self->_metalLayer);
  v3 = [WeakRetained presentsWithTransaction];

  return v3;
}

- (MTLClearColor)clearColor
{
  red = self->_clearColor.red;
  green = self->_clearColor.green;
  blue = self->_clearColor.blue;
  alpha = self->_clearColor.alpha;
  result.alpha = alpha;
  result.blue = blue;
  result.green = green;
  result.red = red;
  return result;
}

- (CGSize)preferredDrawableSize
{
  width = self->_preferredDrawableSize.width;
  height = self->_preferredDrawableSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end