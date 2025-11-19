@interface BroadwayCardView
- (BroadwayCardView)initWithCoder:(id)a3;
- (CGSize)videoSizePoints;
- (id)materialPropertyWithContents:(id)a3;
- (id)playerForMovieAtURL:(id)a3 pointsSize:(CGSize *)a4 nominalFrameRate:(float *)a5;
- (void)configureModelGeometry;
- (void)configureVideo;
- (void)configureVideoGeometry;
- (void)dealloc;
- (void)notifyObserversWithCommandBuffer:(id)a3;
- (void)renderer:(id)a3 updateAtTime:(double)a4;
- (void)renderer:(id)a3 willRenderScene:(id)a4 atTime:(double)a5;
- (void)setModelContents:(id)a3;
- (void)setPaused:(BOOL)a3;
- (void)setVideoURL:(id)a3 sceneURL:(id)a4;
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

- (id)materialPropertyWithContents:(id)a3
{
  v3 = [SCNMaterialProperty materialPropertyWithContents:a3];
  [v3 setMipFilter:2];
  [v3 setMinificationFilter:2];
  [v3 setMagnificationFilter:2];

  return v3;
}

- (id)playerForMovieAtURL:(id)a3 pointsSize:(CGSize *)a4 nominalFrameRate:(float *)a5
{
  v7 = [AVURLAsset URLAssetWithURL:a3 options:0];
  v8 = [AVPlayerItem playerItemWithAsset:v7];
  v9 = [AVPlayer playerWithPlayerItem:v8];
  [v9 setAllowsExternalPlayback:0];
  [v9 _setDisallowsAutoPauseOnRouteRemovalIfNoAudio:1];
  v10 = +[UIScreen mainScreen];
  [v10 scale];

  v11 = [v9 currentItem];
  v12 = [v11 asset];
  v13 = [v12 tracksWithMediaType:AVMediaTypeVideo];

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
        if (a4)
        {
          [*(*(&v24 + 1) + 8 * i) naturalSize];
          [v19 naturalSize];
          UISizeRoundToScale();
          a4->width = v20;
          a4->height = v21;
        }

        if (a5)
        {
          [v19 nominalFrameRate];
          *a5 = v22;
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
  v6 = [(SCNMaterial *)self->_modelMaterial diffuse];
  [v6 setContents:modelContents];

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

  v6 = [(AVPlayer *)self->_videoPlayer currentItem];
  [v6 addOutput:self->_videoOutput];
}

- (void)notifyObserversWithCommandBuffer:(id)a3
{
  v4 = a3;
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
  v13 = self;
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
    [v4 addCompletedHandler:v9];
  }
}

- (void)renderer:(id)a3 willRenderScene:(id)a4 atTime:(double)a5
{
  v7 = a3;
  v8 = a4;
  sceneView = self->_sceneView;
  if (sceneView == v7)
  {
    v10 = [(SCNView *)v7 renderer];
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;
  v12 = [(SCNView *)v10 currentCommandBuffer];
  v13 = v12;
  texture = self->_texture;
  if (texture)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000F7D80;
    v15[3] = &unk_100194E88;
    v15[4] = texture;
    [v12 addCompletedHandler:v15];
    self->_texture = 0;
  }

  if (sceneView == v7)
  {
    [(BroadwayCardView *)self notifyObserversWithCommandBuffer:v13];
  }
}

- (void)renderer:(id)a3 updateAtTime:(double)a4
{
  v5 = a3;
  v6 = v5;
  if (!self->_textureCache)
  {
    v7 = [v5 device];
    CVMetalTextureCacheCreate(0, 0, v7, 0, &self->_textureCache);
  }

  v8 = [(AVPlayer *)self->_videoPlayer currentItem];
  v9 = v8;
  memset(&v18[1], 0, sizeof(CMTime));
  if (v8)
  {
    [v8 currentTime];
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

- (void)setPaused:(BOOL)a3
{
  self->_paused = a3;
  LODWORD(v3) = 1.0;
  if (a3)
  {
    *&v3 = 0.0;
  }

  [(AVPlayer *)self->_videoPlayer setRate:v3];
}

- (void)setModelContents:(id)a3
{
  objc_storeStrong(&self->_modelContents, a3);

  [(BroadwayCardView *)self configureModelGeometry];
}

- (void)setVideoURL:(id)a3 sceneURL:(id)a4
{
  v6 = a4;
  v7 = [(BroadwayCardView *)self playerForMovieAtURL:a3 pointsSize:&self->_videoSizePoints nominalFrameRate:&self->_videoFrameRate];
  videoPlayer = self->_videoPlayer;
  self->_videoPlayer = v7;

  v9 = [(AVPlayer *)self->_videoPlayer currentItem];
  v10 = [v9 asset];
  v11 = v10;
  if (v10)
  {
    [v10 duration];
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
  v13 = [SCNScene sceneWithURL:v6 options:v12 error:&v20];
  v14 = v20;

  if (v13)
  {
    v15 = [v13 background];
    [v15 setContents:0];

    [v13 setAttribute:&off_10019B0E0 forKey:SCNSceneEndTimeAttributeKey];
    v16 = [NSNumber numberWithDouble:self->_videoDuration];
    [v13 setAttribute:v16 forKey:SCNSceneEndTimeAttributeKey];

    v17 = [v13 rootNode];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000F83BC;
    v19[3] = &unk_100194E68;
    v19[4] = self;
    [v17 enumerateChildNodesUsingBlock:v19];

    [(SCNView *)self->_sceneView setScene:v13];
    [(BroadwayCardView *)self configureVideoGeometry];
    +[SCNTransaction commit];
  }

  else if (dword_1001BE738 <= 90 && (dword_1001BE738 != -1 || _LogCategory_Initialize()))
  {
    v18 = [v6 path];
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

- (BroadwayCardView)initWithCoder:(id)a3
{
  v43.receiver = self;
  v43.super_class = BroadwayCardView;
  v3 = [(BroadwayCardView *)&v43 initWithCoder:a3];
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
    v10 = [(SCNView *)v3->_sceneView layer];
    [v10 setMinificationFilter:kCAFilterTrilinear];

    [(SCNView *)v3->_sceneView setLoops:0];
    [(SCNView *)v3->_sceneView setRendersContinuously:1];
    [(SCNView *)v3->_sceneView setPreferredFramesPerSecond:60];
    [(SCNView *)v3->_sceneView setDelegate:v3];
    [(BroadwayCardView *)v3 addSubview:v3->_sceneView];
    [(SCNView *)v3->_sceneView setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [(SCNView *)v3->_sceneView topAnchor];
    v12 = [(BroadwayCardView *)v3 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [v13 setActive:1];

    v14 = [(SCNView *)v3->_sceneView bottomAnchor];
    v15 = [(BroadwayCardView *)v3 bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v16 setActive:1];

    v17 = [(SCNView *)v3->_sceneView leadingAnchor];
    v18 = [(BroadwayCardView *)v3 leadingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v19 setActive:1];

    v20 = [(SCNView *)v3->_sceneView trailingAnchor];
    v21 = [(BroadwayCardView *)v3 trailingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [v22 setActive:1];

    v23 = [(SCNView *)v3->_sceneView device];
    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v42 = 0;
    v25 = [v23 newDefaultLibraryWithBundle:v24 error:&v42];
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
    v29 = [(SCNView *)v3->_sceneView device];
    v30 = [v29 newTextureWithDescriptor:v28];
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