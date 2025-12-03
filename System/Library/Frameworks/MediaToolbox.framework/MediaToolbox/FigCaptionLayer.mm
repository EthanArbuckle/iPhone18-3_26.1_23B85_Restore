@interface FigCaptionLayer
- (FigCaptionLayer)init;
- (void)dealloc;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)layoutSublayers;
- (void)resetCaptions;
- (void)setCaptionsAvoidanceMargins:(FigGeometryMargins *)margins;
- (void)setFontName:(const char *)name;
- (void)setOptions:(id)options forKeyPath:(id)path;
- (void)setVideoRelativeToViewport:(CGRect)viewport;
- (void)updateDisplay:(OpaqueFigCFCaptionRenderer *)display;
@end

@implementation FigCaptionLayer

- (FigCaptionLayer)init
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v16.receiver = self;
  v16.super_class = FigCaptionLayer;
  v3 = [(FigBaseCALayer *)&v16 init];
  if (v3)
  {
    if (getDisplayScale_onceToken != -1)
    {
      [FigCaptionLayer init];
    }

    v4 = *&sMaxDisplayScale;
    v3->_priv = objc_alloc_init(FigCaptionLayerPrivate);
    v3->_priv->renderMutex = FigSimpleMutexCreate();
    if (!v3->_priv->renderMutex)
    {
      goto LABEL_16;
    }

    v3->_priv->layoutSublayersMutex = FigReentrantMutexCreate();
    if (!v3->_priv->layoutSublayersMutex)
    {
      goto LABEL_16;
    }

    v3->_priv->renderer = FigCFCaptionRendererCreate();
    v3->_priv->captionElementLayers = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
    v3->_priv->options = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3->_priv->separated = 0;
    v3->_priv->separatedUpdated = 0;
    v3->_priv->enableBackdrop = +[FigCaptionBackdropLayer isSupported];
    priv = v3->_priv;
    if (priv->enableBackdrop)
    {
      v3->_priv->captionBackdropLayers = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
      priv = v3->_priv;
      if (!priv)
      {
        goto LABEL_16;
      }
    }

    if (!priv->renderer || !priv->captionElementLayers)
    {
      goto LABEL_16;
    }

    v6 = *(MEMORY[0x1E695F050] + 16);
    priv->videoRelativeToViewport.origin = *MEMORY[0x1E695F050];
    priv->videoRelativeToViewport.size = v6;
    v7 = v3->_priv;
    v8 = MEMORY[0x1E6962818];
    v9 = *(MEMORY[0x1E6962818] + 16);
    v7->captionsAvoidanceMargins.left = *MEMORY[0x1E6962818];
    v7->captionsAvoidanceMargins.right = v9;
    v10 = v8[3];
    v7->captionsAvoidanceMargins.top = v8[2];
    v7->captionsAvoidanceMargins.bottom = v10;
    v3->_priv->enableGMSpew = 1;
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v11 = 10;
    do
    {
      v12 = objc_alloc_init(FigCaptionRowLayer);
      [(FigCaptionRowLayer *)v12 setContentsScale:v4];
      [(FigCaptionRowLayer *)v12 setDelegate:v3];
      [(FigCaptionRowLayer *)v12 setNeedsDisplayOnBoundsChange:1];
      [(FigCaptionRowLayer *)v12 setClearsContext:1];
      [(FigCaptionRowLayer *)v12 setContents:0];
      [(FigBaseCALayer *)v3 addSublayer:v12];
      [(NSMutableArray *)v3->_priv->captionElementLayers addObject:v12];
      --v11;
    }

    while (v11);
    if (v3->_priv->enableBackdrop)
    {
      for (i = 0; i != 10; ++i)
      {
        v14 = objc_alloc_init(FigCaptionBackdropLayer);
        [(FigCaptionBackdropLayer *)v14 setHidden:1];
        [(FigCaptionBackdropLayer *)v14 insertBackdropAsSublayerToLayer:v3 below:[(NSMutableArray *)v3->_priv->captionElementLayers objectAtIndex:i]];
        [(NSMutableArray *)v3->_priv->captionBackdropLayers addObject:v14];
      }
    }

    [(FigCaptionLayer *)v3 setClearsContext:1];
    [(FigCaptionLayer *)v3 setNeedsLayout];
    [MEMORY[0x1E6979518] commit];
    CMNotificationCenterGetDefaultLocalCenter();
    if (FigNotificationCenterAddWeakListener())
    {
LABEL_16:

      return 0;
    }
  }

  return v3;
}

- (void)setFontName:(const char *)name
{
  v4 = [MEMORY[0x1E696AEC0] stringWithCString:name encoding:4];
  if (v4)
  {
    v5 = v4;
    renderer = self->_priv->renderer;

    FigCFCaptionRendererSetFontName(renderer, v5);
  }
}

- (void)setVideoRelativeToViewport:(CGRect)viewport
{
  self->_priv->videoRelativeToViewport = viewport;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(FigCaptionLayer *)self setNeedsLayout];
  v4 = MEMORY[0x1E6979518];

  [v4 commit];
}

- (void)setCaptionsAvoidanceMargins:(FigGeometryMargins *)margins
{
  priv = self->_priv;
  bottom = margins->bottom;
  left = margins->left;
  right = margins->right;
  priv->captionsAvoidanceMargins.top = margins->top;
  priv->captionsAvoidanceMargins.bottom = bottom;
  priv->captionsAvoidanceMargins.left = left;
  priv->captionsAvoidanceMargins.right = right;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(FigCaptionLayer *)self setNeedsLayout];
  v8 = MEMORY[0x1E6979518];

  [v8 commit];
}

- (void)setOptions:(id)options forKeyPath:(id)path
{
  if ([path isEqualToString:@"separatedOptions"])
  {
    null = [MEMORY[0x1E695DFB0] null];
    options = self->_priv->options;
    if (null == options)
    {

      [(NSMutableDictionary *)options removeObjectForKey:path];
    }

    else
    {

      [(NSMutableDictionary *)options setValue:options forKey:path];
    }
  }

  else if ([path isEqualToString:@"styleOptions"])
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    renderer = self->_priv->renderer;
    if (null2 == options)
    {
      optionsCopy = 0;
    }

    else
    {
      optionsCopy = options;
    }

    FigCFCaptionRendererSetStyleOptions(renderer, optionsCopy);
  }
}

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {
    if (priv->renderer)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      priv = self->_priv;
      renderer = priv->renderer;
      if (renderer)
      {
        CFRelease(renderer);
        self->_priv->renderer = 0;
        priv = self->_priv;
      }
    }

    FigSimpleMutexDestroy();
    self->_priv->renderMutex = 0;
    FigSimpleMutexDestroy();
    self->_priv->layoutSublayersMutex = 0;
  }

  v5.receiver = self;
  v5.super_class = FigCaptionLayer;
  [(FigBaseCALayer *)&v5 dealloc];
}

- (void)resetCaptions
{
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  FigCFCaptionRendererResetCaptions();
  v3 = [(NSMutableArray *)self->_priv->captionElementLayers count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      [-[NSMutableArray objectAtIndex:](self->_priv->captionElementLayers objectAtIndex:{i), "setContents:", 0}];
      priv = self->_priv;
      if (priv->enableBackdrop)
      {
        [-[NSMutableArray objectAtIndex:](priv->captionBackdropLayers objectAtIndex:{i), "setHidden:", 1}];
      }
    }
  }

  v7 = MEMORY[0x1E6979518];

  [v7 commit];
}

- (void)layoutSublayers
{
  v41 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  [(FigCaptionLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(NSMutableArray *)self->_priv->captionElementLayers count];
  contentsAreFlipped = [(FigCaptionLayer *)self contentsAreFlipped];
  v37 = 0;
  v36 = 0;
  if (v8 != 0.0 && v10 != 0.0)
  {
    v13 = contentsAreFlipped;
    priv = self->_priv;
    renderer = priv->renderer;
    x = priv->videoRelativeToViewport.origin.x;
    y = priv->videoRelativeToViewport.origin.y;
    right = priv->captionsAvoidanceMargins.right;
    v35[0] = priv->captionsAvoidanceMargins.left;
    v35[1] = right;
    bottom = priv->captionsAvoidanceMargins.bottom;
    v35[2] = priv->captionsAvoidanceMargins.top;
    v35[3] = bottom;
    FigCFCaptionRendererGetCaptionElementWindowProperties(v4, v6, v8, v10, x, y, renderer, v35, v13, 10, &v37, v40, v39, v38, &v36);
  }

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  if (v11)
  {
    v20 = 0;
    v21 = *MEMORY[0x1E695F058];
    v22 = *(MEMORY[0x1E695F058] + 8);
    v23 = *(MEMORY[0x1E695F058] + 16);
    v24 = *(MEMORY[0x1E695F058] + 24);
    v25 = v40;
    do
    {
      v26 = [(NSMutableArray *)self->_priv->captionElementLayers objectAtIndex:v20];
      v27 = v26;
      if (v20 > 9 || v20 >= v37)
      {
        [v26 setBounds:{v21, v22, v23, v24}];
        [v27 setContents:0];
      }

      else
      {
        [v26 setAnchorPoint:{0.0, 0.0}];
        [v27 setPosition:{v25->origin.x, v25->origin.y}];
        [v27 setBounds:{v25->origin.x, v25->origin.y, v25->size.width, v25->size.height}];
      }

      v28 = self->_priv;
      if (v28->enableBackdrop)
      {
        v29 = v36 == 0;
      }

      else
      {
        v29 = 1;
      }

      if (!v29)
      {
        v30 = [(NSMutableArray *)v28->captionBackdropLayers objectAtIndex:v20];
        if (v30)
        {
          v31 = v30;
          if (v20 > 9 || v20 >= v37)
          {
            [v30 setHidden:1];
          }

          else
          {
            [v30 setAnchorPoint:{0.0, 0.0}];
            [v31 setPosition:{v25->origin.x, v25->origin.y}];
            [v31 setBounds:{v25->origin.x, v25->origin.y, v25->size.width, v25->size.height}];
            [v31 setHidden:!v39[v20]];
            if (v39[v20])
            {
              if (v38[v20] == 0.0)
              {
                [v31 setCornerRadius:0.0];
                v32 = v31;
                v33 = 0;
              }

              else
              {
                [v31 setCornerRadius:?];
                v32 = v31;
                v33 = 1;
              }

              [v32 setMasksToBounds:v33];
            }
          }
        }
      }

      ++v20;
      ++v25;
    }

    while (v11 != v20);
  }

  v34.receiver = self;
  v34.super_class = FigCaptionLayer;
  [(FigBaseCALayer *)&v34 layoutSublayers];
  [MEMORY[0x1E6979518] commit];
  FigSimpleMutexUnlock();
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  v23 = *MEMORY[0x1E69E9840];
  v22 = 0;
  FigSimpleMutexLock();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  v7 = [(NSMutableArray *)self->_priv->captionElementLayers indexOfObject:layer];
  priv = self->_priv;
  if (priv->enableGMSpew)
  {
    priv->enableGMSpew = 0;
    if (dword_1EAF16B10)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EAF16B10)
      {
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  renderer = self->_priv->renderer;
  [layer bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [layer position];
  FigCFCaptionRendererDrawCaptionElementInContextForRectOrientation(v13, v15, v17, v19, renderer, v7, context, [layer contentsAreFlipped], &v22);
  [MEMORY[0x1E6979518] commit];
  FigSimpleMutexUnlock();
}

- (void)updateDisplay:(OpaqueFigCFCaptionRenderer *)display
{
  if (self->_priv->renderer == display)
  {
    FigSimpleMutexLock();
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
    [(FigCaptionLayer *)self setNeedsLayout];
    if ([(NSMutableArray *)self->_priv->captionElementLayers count])
    {
      v4 = 0;
      do
      {
        [-[NSMutableArray objectAtIndex:](self->_priv->captionElementLayers objectAtIndex:{v4++), "setNeedsDisplay"}];
      }

      while (v4 < [(NSMutableArray *)self->_priv->captionElementLayers count]);
    }

    [MEMORY[0x1E6979518] commit];

    FigSimpleMutexUnlock();
  }
}

@end