@interface BroadwayCardView
- (BroadwayCardView)initWithCoder:(id)coder;
- (CGSize)videoSizePoints;
- (id)materialPropertyWithContents:(id)contents;
- (id)playerForMovieAtURL:(id)l pointsSize:(CGSize *)size nominalFrameRate:(float *)rate;
- (void)configureModelGeometry;
- (void)configureVideo;
- (void)configureVideoGeometry;
- (void)dealloc;
- (void)notifyObserversWithCommandBuffer:(id)buffer;
- (void)renderer:(id)renderer updateAtTime:(double)time;
- (void)renderer:(id)renderer willRenderScene:(id)scene atTime:(double)time;
- (void)setModelContents:(id)contents;
- (void)setPaused:(BOOL)paused;
- (void)setVideoURL:(id)l sceneURL:(id)rL;
@end

@implementation BroadwayCardView

- (CGSize)videoSizePoints
{
  width = self->_videoSizePoints.width;
  height = self->_videoSizePoints.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)materialPropertyWithContents:(id)contents
{
  v3 = [SCNMaterialProperty materialPropertyWithContents:contents];
  [v3 setMipFilter:2];
  [v3 setMinificationFilter:2];
  [v3 setMagnificationFilter:2];

  return v3;
}

- (id)playerForMovieAtURL:(id)l pointsSize:(CGSize *)size nominalFrameRate:(float *)rate
{
  v7 = [AVURLAsset URLAssetWithURL:l options:0];
  v8 = [AVPlayerItem playerItemWithAsset:v7];
  v9 = [AVPlayer playerWithPlayerItem:v8];
  [v9 setAllowsExternalPlayback:0];
  [v9 _setDisallowsAutoPauseOnRouteRemovalIfNoAudio:1];
  v10 = +[UIScreen mainScreen];
  [v10 scale];

  currentItem = [v9 currentItem];
  asset = [currentItem asset];
  v13 = [asset tracksWithMediaType:AVMediaTypeVideo];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        if (size)
        {
          [*(*(&v24 + 1) + 8 * i) naturalSize];
          [v19 naturalSize];
          UISizeRoundToScale();
          size->width = v20;
          size->height = v21;
        }

        if (rate)
        {
          [v19 nominalFrameRate];
          *rate = v22;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  return v9;
}

- (void)configureModelGeometry
{
  v3 = +[SCNMaterial material];
  modelMaterial = self->_modelMaterial;
  self->_modelMaterial = v3;

  [(SCNMaterial *)self->_modelMaterial setLightingModelName:SCNLightingModelConstant];
  modelContents = self->_modelContents;
  diffuse = [(SCNMaterial *)self->_modelMaterial diffuse];
  [diffuse setContents:modelContents];

  [(SCNMaterial *)self->_modelMaterial setTransparency:0.0];
  v8 = self->_modelMaterial;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [(SCNGeometry *)self->_modelGeometry setMaterials:v7];
}

- (void)configureVideoGeometry
{
  v3 = +[SCNProgram program];
  [v3 setLibrary:self->_library];
  [v3 setVertexFunctionName:@"broadway_video_vert"];
  [v3 setFragmentFunctionName:@"broadway_video_frag"];
  [v3 setOpaque:0];
  v4 = +[SCNMaterial material];
  [(SCNMaterial *)v4 setValue:self->_videoMaterialProperty forKey:@"videoTexture"];
  [(SCNMaterial *)v4 setProgram:v3];
  [(SCNMaterial *)v4 setBlendMode:0];
  [(SCNMaterial *)v4 setReadsFromDepthBuffer:0];
  [(SCNMaterial *)v4 setWritesToDepthBuffer:0];
  v5 = [SCNPlane planeWithWidth:1.0 height:1.0];
  v11 = v4;
  v6 = [NSArray arrayWithObjects:&v11 count:1];
  [(SCNGeometry *)v5 setMaterials:v6];

  v7 = [SCNNode nodeWithGeometry:v5];
  [v7 setName:@"Video mapping"];
  [v7 setRenderingOrder:-1];
  [(SCNNode *)self->_cameraNode addChildNode:v7];
  videoGeometry = self->_videoGeometry;
  self->_videoGeometry = v5;
  v9 = v5;

  videoMaterial = self->_videoMaterial;
  self->_videoMaterial = v4;
}

- (void)configureVideo
{
  v7[0] = kCVPixelBufferMetalCompatibilityKey;
  v7[1] = kCVPixelBufferPixelFormatTypeKey;
  v8[0] = &__kCFBooleanTrue;
  v8[1] = &off_10019B0F8;
  v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v4 = [[AVPlayerItemVideoOutput alloc] initWithPixelBufferAttributes:v3];
  videoOutput = self->_videoOutput;
  self->_videoOutput = v4;

  currentItem = [(AVPlayer *)self->_videoPlayer currentItem];
  [currentItem addOutput:self->_videoOutput];
}

- (void)notifyObserversWithCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  v5 = [(NSHashTable *)self->_animationObservers copy];
  if (!self->_didUpdateForFirstCommandBuffer)
  {
    self->_didUpdateForFirstCommandBuffer = 1;
    self->_firstFrameTimestamp = CACurrentMediaTime();
  }

  if (self->_didNotifyFirstFrameRendered || !self->_videoCurrentFrame)
  {
    v6 = 0;
  }

  else
  {
    v6 = 1;
    self->_didNotifyFirstFrameRendered = 1;
    if (dword_1001BE738 <= 50 && (dword_1001BE738 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  if (self->_videoCurrentFrame >= 0x31)
  {
    [(SCNMaterial *)self->_modelMaterial transparency];
    if (v7 == 0.0)
    {
      [(SCNMaterial *)self->_modelMaterial setTransparency:1.0];
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F795C;
  block[3] = &unk_100195780;
  v14 = v6;
  v8 = v5;
  v12 = v8;
  selfCopy = self;
  dispatch_async(&_dispatch_main_q, block);
  if (!self->_didNotifyLastFrameRendered && self->_videoCurrentFrame == self->_videoFrameCount - 1)
  {
    if (dword_1001BE738 <= 50 && (dword_1001BE738 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    self->_didNotifyLastFrameRendered = 1;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000F7AD8;
    v9[3] = &unk_100194EB0;
    v10 = v8;
    [bufferCopy addCompletedHandler:v9];
  }
}

- (void)renderer:(id)renderer willRenderScene:(id)scene atTime:(double)time
{
  rendererCopy = renderer;
  sceneCopy = scene;
  sceneView = self->_sceneView;
  if (sceneView == rendererCopy)
  {
    renderer = [(SCNView *)rendererCopy renderer];
  }

  else
  {
    renderer = rendererCopy;
  }

  v11 = renderer;
  currentCommandBuffer = [(SCNView *)renderer currentCommandBuffer];
  v13 = currentCommandBuffer;
  texture = self->_texture;
  if (texture)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000F7D80;
    v15[3] = &unk_100194E88;
    v15[4] = texture;
    [currentCommandBuffer addCompletedHandler:v15];
    self->_texture = 0;
  }

  if (sceneView == rendererCopy)
  {
    [(BroadwayCardView *)self notifyObserversWithCommandBuffer:v13];
  }
}

- (void)renderer:(id)renderer updateAtTime:(double)time
{
  rendererCopy = renderer;
  v6 = rendererCopy;
  if (!self->_textureCache)
  {
    device = [rendererCopy device];
    CVMetalTextureCacheCreate(0, 0, device, 0, &self->_textureCache);
  }

  currentItem = [(AVPlayer *)self->_videoPlayer currentItem];
  v9 = currentItem;
  memset(&v18[1], 0, sizeof(CMTime));
  if (currentItem)
  {
    [currentItem currentTime];
  }

  videoOutput = self->_videoOutput;
  v18[0] = v18[1];
  v11 = [(AVPlayerItemVideoOutput *)videoOutput hasNewPixelBufferForItemTime:v18];
  if (dword_1001BE738 <= 10 && (dword_1001BE738 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v11)
  {
    v18[0] = kCMTimeInvalid;
    v12 = self->_videoOutput;
    time = v18[1];
    v13 = [(AVPlayerItemVideoOutput *)v12 copyPixelBufferForItemTime:&time itemTimeForDisplay:v18];
    if (v13)
    {
      v14 = v13;
      self->_textureWidth = CVPixelBufferGetWidth(v13);
      Height = CVPixelBufferGetHeight(v14);
      self->_textureHeight = Height;
      if (!CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, self->_textureCache, v14, 0, MTLPixelFormatBGRA8Unorm_sRGB, self->_textureWidth, Height, 0, &self->_texture))
      {
        v16 = CVMetalTextureGetTexture(self->_texture);
        if (v16)
        {
          [(SCNMaterialProperty *)self->_videoMaterialProperty setContents:v16];
          time = v18[0];
          self->_videoCurrentFrame = (CMTimeGetSeconds(&time) * self->_videoFrameRate);
          [v6 setSceneTime:?];
        }
      }

      CFRelease(v14);
    }
  }
}

- (void)setPaused:(BOOL)paused
{
  self->_paused = paused;
  LODWORD(v3) = 1.0;
  if (paused)
  {
    *&v3 = 0.0;
  }

  [(AVPlayer *)self->_videoPlayer setRate:v3];
}

- (void)setModelContents:(id)contents
{
  objc_storeStrong(&self->_modelContents, contents);

  [(BroadwayCardView *)self configureModelGeometry];
}

- (void)setVideoURL:(id)l sceneURL:(id)rL
{
  rLCopy = rL;
  v7 = [(BroadwayCardView *)self playerForMovieAtURL:l pointsSize:&self->_videoSizePoints nominalFrameRate:&self->_videoFrameRate];
  videoPlayer = self->_videoPlayer;
  self->_videoPlayer = v7;

  currentItem = [(AVPlayer *)self->_videoPlayer currentItem];
  asset = [currentItem asset];
  v11 = asset;
  if (asset)
  {
    [asset duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  self->_videoDuration = CMTimeGetSeconds(&time);

  self->_videoFrameCount = (self->_videoDuration * self->_videoFrameRate);
  [(BroadwayCardView *)self configureVideo];
  +[SCNTransaction begin];
  [SCNTransaction setAnimationDuration:0.0];
  v22 = SCNSceneSourceAnimationImportPolicyKey;
  v23 = SCNSceneSourceAnimationImportPolicyPlayUsingSceneTimeBase;
  v12 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v20 = 0;
  v13 = [SCNScene sceneWithURL:rLCopy options:v12 error:&v20];
  v14 = v20;

  if (v13)
  {
    background = [v13 background];
    [background setContents:0];

    [v13 setAttribute:&off_10019B0E0 forKey:SCNSceneEndTimeAttributeKey];
    v16 = [NSNumber numberWithDouble:self->_videoDuration];
    [v13 setAttribute:v16 forKey:SCNSceneEndTimeAttributeKey];

    rootNode = [v13 rootNode];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000F83BC;
    v19[3] = &unk_100194E68;
    v19[4] = self;
    [rootNode enumerateChildNodesUsingBlock:v19];

    [(SCNView *)self->_sceneView setScene:v13];
    [(BroadwayCardView *)self configureVideoGeometry];
    +[SCNTransaction commit];
  }

  else if (dword_1001BE738 <= 90 && (dword_1001BE738 != -1 || _LogCategory_Initialize()))
  {
    path = [rLCopy path];
    LogPrintF();
  }
}

- (void)dealloc
{
  [(SCNView *)self->_sceneView setDelegate:0];
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
  }

  v4.receiver = self;
  v4.super_class = BroadwayCardView;
  [(BroadwayCardView *)&v4 dealloc];
}

- (BroadwayCardView)initWithCoder:(id)coder
{
  v43.receiver = self;
  v43.super_class = BroadwayCardView;
  v3 = [(BroadwayCardView *)&v43 initWithCoder:coder];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(BroadwayCardView *)v3 setBackgroundColor:v4];

    v5 = +[NSHashTable weakObjectsHashTable];
    animationObservers = v3->_animationObservers;
    v3->_animationObservers = v5;

    v7 = [[SCNView alloc] initWithFrame:0 options:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    sceneView = v3->_sceneView;
    v3->_sceneView = v7;

    v9 = +[UIColor clearColor];
    [(SCNView *)v3->_sceneView setBackgroundColor:v9];

    [(SCNView *)v3->_sceneView setAntialiasingMode:2];
    layer = [(SCNView *)v3->_sceneView layer];
    [layer setMinificationFilter:kCAFilterTrilinear];

    [(SCNView *)v3->_sceneView setLoops:0];
    [(SCNView *)v3->_sceneView setRendersContinuously:1];
    [(SCNView *)v3->_sceneView setPreferredFramesPerSecond:60];
    [(SCNView *)v3->_sceneView setDelegate:v3];
    [(BroadwayCardView *)v3 addSubview:v3->_sceneView];
    [(SCNView *)v3->_sceneView setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [(SCNView *)v3->_sceneView topAnchor];
    topAnchor2 = [(BroadwayCardView *)v3 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v13 setActive:1];

    bottomAnchor = [(SCNView *)v3->_sceneView bottomAnchor];
    bottomAnchor2 = [(BroadwayCardView *)v3 bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v16 setActive:1];

    leadingAnchor = [(SCNView *)v3->_sceneView leadingAnchor];
    leadingAnchor2 = [(BroadwayCardView *)v3 leadingAnchor];
    v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v19 setActive:1];

    trailingAnchor = [(SCNView *)v3->_sceneView trailingAnchor];
    trailingAnchor2 = [(BroadwayCardView *)v3 trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v22 setActive:1];

    device = [(SCNView *)v3->_sceneView device];
    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v42 = 0;
    v25 = [device newDefaultLibraryWithBundle:v24 error:&v42];
    v26 = v42;
    library = v3->_library;
    v3->_library = v25;

    if (!v3->_library && v26 && dword_1001BE738 <= 90 && (dword_1001BE738 != -1 || _LogCategory_Initialize()))
    {
      v36 = "[BroadwayCardView initWithCoder:]";
      v37 = v26;
      LogPrintF();
    }

    v41 = 0x1000000;
    v28 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:70 width:1 height:1 mipmapped:0, v36, v37];
    [v28 setUsage:1];
    device2 = [(SCNView *)v3->_sceneView device];
    v30 = [device2 newTextureWithDescriptor:v28];
    blackTexture = v3->_blackTexture;
    v3->_blackTexture = v30;

    v32 = v3->_blackTexture;
    memset(v38, 0, sizeof(v38));
    v39 = vdupq_n_s64(1uLL);
    v40 = 1;
    [(MTLTexture *)v32 replaceRegion:v38 mipmapLevel:0 withBytes:&v41 bytesPerRow:4];
    v33 = [SCNMaterialProperty materialPropertyWithContents:v3->_blackTexture];
    videoMaterialProperty = v3->_videoMaterialProperty;
    v3->_videoMaterialProperty = v33;
  }

  return v3;
}

@end