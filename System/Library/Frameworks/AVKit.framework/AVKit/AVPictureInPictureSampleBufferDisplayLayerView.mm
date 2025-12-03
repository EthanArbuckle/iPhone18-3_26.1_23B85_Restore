@interface AVPictureInPictureSampleBufferDisplayLayerView
- (AVPictureInPictureSampleBufferDisplayLayerView)initWithSourceLayer:(id)layer playerController:(id)controller;
- (CGSize)imageQueueSize;
- (CGSize)lastKnownRenderSize;
- (id)_makePictureInPicturePlatformAdapterContentPlaceholderLayer;
- (void)_updateGeometry;
- (void)_updateSourceLayerHost;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setLastKnownRenderSize:(CGSize)size;
- (void)setPIPModeEnabled:(BOOL)enabled;
@end

@implementation AVPictureInPictureSampleBufferDisplayLayerView

- (CGSize)imageQueueSize
{
  width = self->_imageQueueSize.width;
  height = self->_imageQueueSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)lastKnownRenderSize
{
  width = self->_lastKnownRenderSize.width;
  height = self->_lastKnownRenderSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)_makePictureInPicturePlatformAdapterContentPlaceholderLayer
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = MEMORY[0x1E69DCAD8];
  v5 = [MEMORY[0x1E69DB878] systemFontOfSize:100.0];
  v6 = [v4 configurationWithFont:v5];
  v7 = [v3 systemImageNamed:@"pip" withConfiguration:v6];
  aV_indicatorForegroundColor = [MEMORY[0x1E69DC888] AV_indicatorForegroundColor];
  v9 = [v7 _flatImageWithColor:aV_indicatorForegroundColor];

  v10 = [AVPictureInPictureIndicatorLayer alloc];
  sourceLayer = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayer];
  avkit_window = [sourceLayer avkit_window];
  traitCollection = [avkit_window traitCollection];
  [traitCollection displayScale];
  v15 = v14;
  cGImage = [v9 CGImage];
  v17 = *MEMORY[0x1E695EFF8];
  v18 = *(MEMORY[0x1E695EFF8] + 8);
  playerController = [(AVPictureInPictureSampleBufferDisplayLayerView *)self playerController];
  [playerController contentDimensions];
  v22 = [(AVPictureInPictureIndicatorLayer *)v10 initWithDisplayScale:cGImage placeholderImage:0 opaque:v15 videoRectWhenPIPBegan:v17, v18, v20, v21];

  return v22;
}

- (void)_updateGeometry
{
  playerController = [(AVPictureInPictureSampleBufferDisplayLayerView *)self playerController];
  [playerController contentDimensions];
  v5 = v4;
  v7 = v6;

  playerController2 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self playerController];
  [playerController2 contentDimensions];
  v11 = v10;
  v12 = v10 - 1;
  v13 = ((v10 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53;
  v16 = ((v9 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v9 >= 0 || (v9 - 1) < 0xFFFFFFFFFFFFFLL;

  [(AVPictureInPictureSampleBufferDisplayLayerView *)self imageQueueSize];
  v21 = ((v17 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v17 >= 0 || (v17 - 1) < 0xFFFFFFFFFFFFFLL;
  v24 = ((v18 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v18 >= 0 || (v18 - 1) < 0xFFFFFFFFFFFFFLL;
  v26 = (v11 < 0 || v13 > 0x3FE) && v12 > 0xFFFFFFFFFFFFELL;
  if (!v26 && v16 && v21 && v24 && [(AVPictureInPictureSampleBufferDisplayLayerView *)self isPIPModeEnabled])
  {
    sbdlHostView = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
    [sbdlHostView setHidden:0];

    sbdlHostView2 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
    [(AVPictureInPictureSampleBufferDisplayLayerView *)self bounds];
    [sbdlHostView2 setFrame:? contentDimensions:? imageQueueSize:?];

    [(AVPictureInPictureSampleBufferDisplayLayerView *)self frame];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v44.width = v5;
    v44.height = v7;
    v45.origin.x = v30;
    v45.origin.y = v32;
    v45.size.width = v34;
    v45.size.height = v36;
    AVMakeRectWithAspectRatioInsideRect(v44, v45);
    selfCopy = self;
    UIPointRoundToViewScale();
    UISizeRoundToViewScale();
    v39 = v38;
    v41 = v40;
  }

  else
  {
    sbdlHostView3 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
    [sbdlHostView3 setHidden:1];

    v39 = *MEMORY[0x1E695F060];
    v41 = *(MEMORY[0x1E695F060] + 8);
  }

  [(AVPictureInPictureSampleBufferDisplayLayerView *)self setLastKnownRenderSize:v39, v41];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVPictureInPictureSampleBufferDisplayLayerView;
  [(AVPictureInPictureSampleBufferDisplayLayerView *)&v3 layoutSubviews];
  [(AVPictureInPictureSampleBufferDisplayLayerView *)self _updateGeometry];
}

- (void)setLastKnownRenderSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (size.width != self->_lastKnownRenderSize.width || size.height != self->_lastKnownRenderSize.height)
  {
    self->_lastKnownRenderSize = size;
    playerController = [(AVPictureInPictureSampleBufferDisplayLayerView *)self playerController];
    pictureInPictureController = [playerController pictureInPictureController];
    contentSource = [pictureInPictureController contentSource];
    sampleBufferPlaybackDelegate = [contentSource sampleBufferPlaybackDelegate];

    playerController2 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self playerController];
    pictureInPictureController2 = [playerController2 pictureInPictureController];
    [sampleBufferPlaybackDelegate pictureInPictureController:pictureInPictureController2 didTransitionToRenderSize:width | (height << 32)];
  }
}

- (void)setPIPModeEnabled:(BOOL)enabled
{
  v68[1] = *MEMORY[0x1E69E9840];
  if (self->_PIPModeEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_PIPModeEnabled = enabled;
    observationController = [(AVPictureInPictureSampleBufferDisplayLayerView *)self observationController];
    [observationController stopAllObservation];

    sourceLayer = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayer];

    if (!sourceLayer)
    {
      v7 = _AVLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v67 = 0;
        _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Expected a source layer.", v67, 2u);
      }
    }

    playerController = [(AVPictureInPictureSampleBufferDisplayLayerView *)self playerController];

    if (playerController)
    {
      if (!enabledCopy)
      {
LABEL_16:
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        sbdlHostView = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
        [sbdlHostView setHidden:1];

        sbdlHostView2 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
        [sbdlHostView2 removeFromSuperview];

        [(AVPictureInPictureSampleBufferDisplayLayerView *)self setSbdlHostView:0];
        sourceContextId = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceContextId];
        sourceLayerHost = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayerHost];
        [sourceLayerHost setContextId:sourceContextId];

        sbdlHostView3 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
        [sbdlHostView3 setContextId:0];

        [(AVPictureInPictureSampleBufferDisplayLayerView *)self setSourceContextId:0];
        [(AVPictureInPictureSampleBufferDisplayLayerView *)self setSourceLayerHost:0];
        [MEMORY[0x1E6979518] commit];
        placeholderLayer = [(AVPictureInPictureSampleBufferDisplayLayerView *)self placeholderLayer];
        [placeholderLayer removeFromSuperlayer];

        [(AVPictureInPictureSampleBufferDisplayLayerView *)self setPlaceholderLayer:0];
        return;
      }
    }

    else
    {
      v9 = _AVLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v67 = 0;
        _os_log_error_impl(&dword_18B49C000, v9, OS_LOG_TYPE_ERROR, "Expected a player controller.", v67, 2u);
      }

      if (!enabledCopy)
      {
        goto LABEL_16;
      }
    }

    sourceLayer2 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayer];
    if (!sourceLayer2)
    {
      goto LABEL_16;
    }

    v11 = sourceLayer2;
    playerController2 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self playerController];

    if (!playerController2)
    {
      goto LABEL_16;
    }

    observationController2 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self observationController];
    if (observationController2)
    {
      [(AVPictureInPictureSampleBufferDisplayLayerView *)self setObservationController:observationController2];
    }

    else
    {
      v20 = [[AVObservationController alloc] initWithOwner:self];
      [(AVPictureInPictureSampleBufferDisplayLayerView *)self setObservationController:v20];
    }

    placeholderLayer2 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self placeholderLayer];
    if (placeholderLayer2)
    {
      [(AVPictureInPictureSampleBufferDisplayLayerView *)self setPlaceholderLayer:placeholderLayer2];
    }

    else
    {
      _makePictureInPicturePlatformAdapterContentPlaceholderLayer = [(AVPictureInPictureSampleBufferDisplayLayerView *)self _makePictureInPicturePlatformAdapterContentPlaceholderLayer];
      [(AVPictureInPictureSampleBufferDisplayLayerView *)self setPlaceholderLayer:_makePictureInPicturePlatformAdapterContentPlaceholderLayer];
    }

    sourceLayerHost2 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayerHost];

    if (!sourceLayerHost2)
    {
      sourceLayer3 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayer];
      avkit_sbdlpip_findFirstCALayerHost = [sourceLayer3 avkit_sbdlpip_findFirstCALayerHost];
      [(AVPictureInPictureSampleBufferDisplayLayerView *)self setSourceLayerHost:avkit_sbdlpip_findFirstCALayerHost];

      sourceLayerHost3 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayerHost];
      -[AVPictureInPictureSampleBufferDisplayLayerView setSourceContextId:](self, "setSourceContextId:", [sourceLayerHost3 contextId]);

      sourceLayerHost4 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayerHost];
      [sourceLayerHost4 setContextId:0];
    }

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    sbdlHostView4 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
    if (sbdlHostView4)
    {
      [(AVPictureInPictureSampleBufferDisplayLayerView *)self setSbdlHostView:sbdlHostView4];
    }

    else
    {
      v29 = [AVPictureInPictureSampleBufferDisplayLayerHostView alloc];
      [(AVPictureInPictureSampleBufferDisplayLayerView *)self bounds];
      v30 = [(AVPictureInPictureSampleBufferDisplayLayerHostView *)v29 initWithFrame:?];
      [(AVPictureInPictureSampleBufferDisplayLayerView *)self setSbdlHostView:v30];
    }

    sourceLayerHost5 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayerHost];
    [sourceLayerHost5 beginTime];
    v33 = v32;
    sbdlHostView5 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
    [sbdlHostView5 setBeginTime:v33];

    sourceContextId2 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceContextId];
    sbdlHostView6 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
    [sbdlHostView6 setContextId:sourceContextId2];

    sbdlHostView7 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
    [(AVPictureInPictureSampleBufferDisplayLayerView *)self addSubview:sbdlHostView7];

    sourceLayer4 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayer];
    placeholderLayer3 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self placeholderLayer];
    [sourceLayer4 addSublayer:placeholderLayer3];

    sourceLayer5 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayer];
    [sourceLayer5 bounds];
    [(AVPictureInPictureSampleBufferDisplayLayerView *)self setImageQueueSize:v41, v42];

    sourceLayer6 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayer];
    [sourceLayer6 bounds];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    placeholderLayer4 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self placeholderLayer];
    [placeholderLayer4 setBounds:{v45, v47, v49, v51}];

    sourceLayer7 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayer];
    [sourceLayer7 bounds];
    UIRectGetCenter();
    v55 = v54;
    v57 = v56;
    placeholderLayer5 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self placeholderLayer];
    [placeholderLayer5 setPosition:{v55, v57}];

    [(AVPictureInPictureSampleBufferDisplayLayerView *)self _updateGeometry];
    [MEMORY[0x1E6979518] commit];
    observationController3 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self observationController];
    playerController3 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self playerController];
    v68[0] = @"contentDimensions";
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:1];
    v62 = [observationController3 startObserving:playerController3 keyPaths:v61 includeInitialValue:0 observationHandler:&__block_literal_global_16_30313];

    observationController4 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self observationController];
    sourceLayer8 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayer];
    v65 = [observationController4 startObserving:sourceLayer8 keyPath:@"bounds" includeInitialValue:0 observationHandler:&__block_literal_global_21_30315];

    observationController5 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self observationController];
    [observationController5 startObservingNotificationForName:@"VideoQueue_CAContextIDDidChange" object:0 notificationCenter:0 observationHandler:&__block_literal_global_27_30317];
  }
}

void __68__AVPictureInPictureSampleBufferDisplayLayerView_setPIPModeEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = a2;
  v2 = [v21 sourceLayer];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [v21 placeholderLayer];
  [v11 setBounds:{v4, v6, v8, v10}];

  v12 = [v21 sourceLayer];
  [v12 bounds];
  UIRectGetCenter();
  v14 = v13;
  v16 = v15;
  v17 = [v21 placeholderLayer];
  [v17 setPosition:{v14, v16}];

  v18 = [v21 sourceLayer];
  [v18 bounds];
  [v21 setImageQueueSize:{v19, v20}];

  [v21 _updateGeometry];
}

- (void)_updateSourceLayerHost
{
  sourceLayer = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayer];
  avkit_sbdlpip_findFirstCALayerHost = [sourceLayer avkit_sbdlpip_findFirstCALayerHost];

  contextId = [avkit_sbdlpip_findFirstCALayerHost contextId];
  sourceLayerHost = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayerHost];
  if (sourceLayerHost != avkit_sbdlpip_findFirstCALayerHost)
  {

LABEL_3:
    sourceLayerHost2 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayerHost];

    if (sourceLayerHost2)
    {
      observationController = [(AVPictureInPictureSampleBufferDisplayLayerView *)self observationController];
      sourceLayerHost3 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayerHost];
      [observationController stopObserving:sourceLayerHost3];
    }

    [(AVPictureInPictureSampleBufferDisplayLayerView *)self setSourceLayerHost:avkit_sbdlpip_findFirstCALayerHost];
    sourceLayerHost4 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayerHost];
    -[AVPictureInPictureSampleBufferDisplayLayerView setSourceContextId:](self, "setSourceContextId:", [sourceLayerHost4 contextId]);

    observationController2 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self observationController];
    sourceLayerHost5 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayerHost];
    v12 = [observationController2 startObserving:sourceLayerHost5 keyPath:@"beginTime" includeInitialValue:1 observationHandler:&__block_literal_global_30330];

    sourceContextId = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceContextId];
    sbdlHostView = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
    [sbdlHostView setContextId:sourceContextId];

    [avkit_sbdlpip_findFirstCALayerHost setContextId:0];
    goto LABEL_6;
  }

  if (!contextId)
  {

    goto LABEL_6;
  }

  sourceContextId2 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceContextId];
  contextId2 = [avkit_sbdlpip_findFirstCALayerHost contextId];

  if (sourceContextId2 != contextId2)
  {
    goto LABEL_3;
  }

LABEL_6:
}

void __72__AVPictureInPictureSampleBufferDisplayLayerView__updateSourceLayerHost__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 beginTime];
  v6 = v5;
  v7 = [v4 sbdlHostView];

  [v7 setBeginTime:v6];
}

- (void)dealloc
{
  observationController = [(AVPictureInPictureSampleBufferDisplayLayerView *)self observationController];
  [observationController stopAllObservation];

  v4.receiver = self;
  v4.super_class = AVPictureInPictureSampleBufferDisplayLayerView;
  [(AVPictureInPictureSampleBufferDisplayLayerView *)&v4 dealloc];
}

- (AVPictureInPictureSampleBufferDisplayLayerView)initWithSourceLayer:(id)layer playerController:(id)controller
{
  layerCopy = layer;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = AVPictureInPictureSampleBufferDisplayLayerView;
  v9 = [(AVPictureInPictureSampleBufferDisplayLayerView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceLayer, layer);
    objc_storeStrong(&v10->_playerController, controller);
  }

  return v10;
}

@end