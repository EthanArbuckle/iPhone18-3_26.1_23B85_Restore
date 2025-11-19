@interface AVPictureInPictureSampleBufferDisplayLayerView
- (AVPictureInPictureSampleBufferDisplayLayerView)initWithSourceLayer:(id)a3 playerController:(id)a4;
- (CGSize)imageQueueSize;
- (CGSize)lastKnownRenderSize;
- (id)_makePictureInPicturePlatformAdapterContentPlaceholderLayer;
- (void)_updateGeometry;
- (void)_updateSourceLayerHost;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setLastKnownRenderSize:(CGSize)a3;
- (void)setPIPModeEnabled:(BOOL)a3;
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
  v8 = [MEMORY[0x1E69DC888] AV_indicatorForegroundColor];
  v9 = [v7 _flatImageWithColor:v8];

  v10 = [AVPictureInPictureIndicatorLayer alloc];
  v11 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayer];
  v12 = [v11 avkit_window];
  v13 = [v12 traitCollection];
  [v13 displayScale];
  v15 = v14;
  v16 = [v9 CGImage];
  v17 = *MEMORY[0x1E695EFF8];
  v18 = *(MEMORY[0x1E695EFF8] + 8);
  v19 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self playerController];
  [v19 contentDimensions];
  v22 = [(AVPictureInPictureIndicatorLayer *)v10 initWithDisplayScale:v16 placeholderImage:0 opaque:v15 videoRectWhenPIPBegan:v17, v18, v20, v21];

  return v22;
}

- (void)_updateGeometry
{
  v3 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self playerController];
  [v3 contentDimensions];
  v5 = v4;
  v7 = v6;

  v8 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self playerController];
  [v8 contentDimensions];
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
    v27 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
    [v27 setHidden:0];

    v28 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
    [(AVPictureInPictureSampleBufferDisplayLayerView *)self bounds];
    [v28 setFrame:? contentDimensions:? imageQueueSize:?];

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
    v37 = self;
    UIPointRoundToViewScale();
    UISizeRoundToViewScale();
    v39 = v38;
    v41 = v40;
  }

  else
  {
    v42 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
    [v42 setHidden:1];

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

- (void)setLastKnownRenderSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (a3.width != self->_lastKnownRenderSize.width || a3.height != self->_lastKnownRenderSize.height)
  {
    self->_lastKnownRenderSize = a3;
    v7 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self playerController];
    v8 = [v7 pictureInPictureController];
    v9 = [v8 contentSource];
    v12 = [v9 sampleBufferPlaybackDelegate];

    v10 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self playerController];
    v11 = [v10 pictureInPictureController];
    [v12 pictureInPictureController:v11 didTransitionToRenderSize:width | (height << 32)];
  }
}

- (void)setPIPModeEnabled:(BOOL)a3
{
  v68[1] = *MEMORY[0x1E69E9840];
  if (self->_PIPModeEnabled != a3)
  {
    v3 = a3;
    self->_PIPModeEnabled = a3;
    v5 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self observationController];
    [v5 stopAllObservation];

    v6 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayer];

    if (!v6)
    {
      v7 = _AVLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v67 = 0;
        _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Expected a source layer.", v67, 2u);
      }
    }

    v8 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self playerController];

    if (v8)
    {
      if (!v3)
      {
LABEL_16:
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        v14 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
        [v14 setHidden:1];

        v15 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
        [v15 removeFromSuperview];

        [(AVPictureInPictureSampleBufferDisplayLayerView *)self setSbdlHostView:0];
        v16 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceContextId];
        v17 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayerHost];
        [v17 setContextId:v16];

        v18 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
        [v18 setContextId:0];

        [(AVPictureInPictureSampleBufferDisplayLayerView *)self setSourceContextId:0];
        [(AVPictureInPictureSampleBufferDisplayLayerView *)self setSourceLayerHost:0];
        [MEMORY[0x1E6979518] commit];
        v19 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self placeholderLayer];
        [v19 removeFromSuperlayer];

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

      if (!v3)
      {
        goto LABEL_16;
      }
    }

    v10 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayer];
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = v10;
    v12 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self playerController];

    if (!v12)
    {
      goto LABEL_16;
    }

    v13 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self observationController];
    if (v13)
    {
      [(AVPictureInPictureSampleBufferDisplayLayerView *)self setObservationController:v13];
    }

    else
    {
      v20 = [[AVObservationController alloc] initWithOwner:self];
      [(AVPictureInPictureSampleBufferDisplayLayerView *)self setObservationController:v20];
    }

    v21 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self placeholderLayer];
    if (v21)
    {
      [(AVPictureInPictureSampleBufferDisplayLayerView *)self setPlaceholderLayer:v21];
    }

    else
    {
      v22 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self _makePictureInPicturePlatformAdapterContentPlaceholderLayer];
      [(AVPictureInPictureSampleBufferDisplayLayerView *)self setPlaceholderLayer:v22];
    }

    v23 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayerHost];

    if (!v23)
    {
      v24 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayer];
      v25 = [v24 avkit_sbdlpip_findFirstCALayerHost];
      [(AVPictureInPictureSampleBufferDisplayLayerView *)self setSourceLayerHost:v25];

      v26 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayerHost];
      -[AVPictureInPictureSampleBufferDisplayLayerView setSourceContextId:](self, "setSourceContextId:", [v26 contextId]);

      v27 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayerHost];
      [v27 setContextId:0];
    }

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v28 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
    if (v28)
    {
      [(AVPictureInPictureSampleBufferDisplayLayerView *)self setSbdlHostView:v28];
    }

    else
    {
      v29 = [AVPictureInPictureSampleBufferDisplayLayerHostView alloc];
      [(AVPictureInPictureSampleBufferDisplayLayerView *)self bounds];
      v30 = [(AVPictureInPictureSampleBufferDisplayLayerHostView *)v29 initWithFrame:?];
      [(AVPictureInPictureSampleBufferDisplayLayerView *)self setSbdlHostView:v30];
    }

    v31 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayerHost];
    [v31 beginTime];
    v33 = v32;
    v34 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
    [v34 setBeginTime:v33];

    v35 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceContextId];
    v36 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
    [v36 setContextId:v35];

    v37 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
    [(AVPictureInPictureSampleBufferDisplayLayerView *)self addSubview:v37];

    v38 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayer];
    v39 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self placeholderLayer];
    [v38 addSublayer:v39];

    v40 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayer];
    [v40 bounds];
    [(AVPictureInPictureSampleBufferDisplayLayerView *)self setImageQueueSize:v41, v42];

    v43 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayer];
    [v43 bounds];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self placeholderLayer];
    [v52 setBounds:{v45, v47, v49, v51}];

    v53 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayer];
    [v53 bounds];
    UIRectGetCenter();
    v55 = v54;
    v57 = v56;
    v58 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self placeholderLayer];
    [v58 setPosition:{v55, v57}];

    [(AVPictureInPictureSampleBufferDisplayLayerView *)self _updateGeometry];
    [MEMORY[0x1E6979518] commit];
    v59 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self observationController];
    v60 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self playerController];
    v68[0] = @"contentDimensions";
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:1];
    v62 = [v59 startObserving:v60 keyPaths:v61 includeInitialValue:0 observationHandler:&__block_literal_global_16_30313];

    v63 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self observationController];
    v64 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayer];
    v65 = [v63 startObserving:v64 keyPath:@"bounds" includeInitialValue:0 observationHandler:&__block_literal_global_21_30315];

    v66 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self observationController];
    [v66 startObservingNotificationForName:@"VideoQueue_CAContextIDDidChange" object:0 notificationCenter:0 observationHandler:&__block_literal_global_27_30317];
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
  v3 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayer];
  v17 = [v3 avkit_sbdlpip_findFirstCALayerHost];

  v4 = [v17 contextId];
  v5 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayerHost];
  if (v5 != v17)
  {

LABEL_3:
    v6 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayerHost];

    if (v6)
    {
      v7 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self observationController];
      v8 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayerHost];
      [v7 stopObserving:v8];
    }

    [(AVPictureInPictureSampleBufferDisplayLayerView *)self setSourceLayerHost:v17];
    v9 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayerHost];
    -[AVPictureInPictureSampleBufferDisplayLayerView setSourceContextId:](self, "setSourceContextId:", [v9 contextId]);

    v10 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self observationController];
    v11 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceLayerHost];
    v12 = [v10 startObserving:v11 keyPath:@"beginTime" includeInitialValue:1 observationHandler:&__block_literal_global_30330];

    v13 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceContextId];
    v14 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sbdlHostView];
    [v14 setContextId:v13];

    [v17 setContextId:0];
    goto LABEL_6;
  }

  if (!v4)
  {

    goto LABEL_6;
  }

  v15 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self sourceContextId];
  v16 = [v17 contextId];

  if (v15 != v16)
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
  v3 = [(AVPictureInPictureSampleBufferDisplayLayerView *)self observationController];
  [v3 stopAllObservation];

  v4.receiver = self;
  v4.super_class = AVPictureInPictureSampleBufferDisplayLayerView;
  [(AVPictureInPictureSampleBufferDisplayLayerView *)&v4 dealloc];
}

- (AVPictureInPictureSampleBufferDisplayLayerView)initWithSourceLayer:(id)a3 playerController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AVPictureInPictureSampleBufferDisplayLayerView;
  v9 = [(AVPictureInPictureSampleBufferDisplayLayerView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceLayer, a3);
    objc_storeStrong(&v10->_playerController, a4);
  }

  return v10;
}

@end