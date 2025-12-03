@interface NTKSnowglobeFaceView
+ (id)_sharedRenderTargetQueue;
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (BOOL)_isBlackColor;
- (NTKSnowglobeFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_finalizeForSnapshotting:(id)snapshotting;
- (void)_loadCornerOverlayView;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_setupScene;
- (void)_tappedWithSender:(id)sender;
- (void)_unloadCornerOverlayView;
- (void)_unloadSnapshotContentViews;
- (void)_updateMotionPauseState;
- (void)_updateScene;
- (void)dealloc;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setTimeOffset:(double)offset;
@end

@implementation NTKSnowglobeFaceView

+ (id)_sharedRenderTargetQueue
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v2 = qword_27E1EDDD0;
  if (!qword_27E1EDDD0)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.NanoTimeKit.NTKSnowglobeFaceView.targetRenderQueue", v3);
    v5 = qword_27E1EDDD0;
    qword_27E1EDDD0 = v4;

    v2 = qword_27E1EDDD0;
  }

  return v2;
}

- (NTKSnowglobeFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = NTKSnowglobeFaceView;
  v5 = [(NTKSnowglobeFaceView *)&v13 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
  if (v5)
  {
    v6 = +[NTKSnowglobeAssetLibrary sharedInstance];
    assetLibrary = v5->_assetLibrary;
    v5->_assetLibrary = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    _sharedRenderTargetQueue = [objc_opt_class() _sharedRenderTargetQueue];
    v10 = dispatch_queue_create_with_target_V2("com.apple.NanoTimeKit.NTKSnowglobeFaceView.asyncRenderQueue", v8, _sharedRenderTargetQueue);
    asyncRenderQueue = v5->_asyncRenderQueue;
    v5->_asyncRenderQueue = v10;
  }

  return v5;
}

- (void)dealloc
{
  [(NTKSnowglobeMotionToken *)self->_motionToken invalidate];
  v3.receiver = self;
  v3.super_class = NTKSnowglobeFaceView;
  [(NTKSnowglobeFaceView *)&v3 dealloc];
}

- (void)_setupScene
{
  dispatch_suspend(self->_asyncRenderQueue);
  v3 = [NTKSnowglobeMetalQuadView alloc];
  [(NTKSnowglobeFaceView *)self bounds];
  v4 = [(CLKUIMetalQuadView *)v3 initWithFrame:@"SnGl" identifier:8 options:2 colorSpace:self->_asyncRenderQueue asyncRenderQueue:?];
  v5 = [NTKSnowglobeSceneController alloc];
  [(NTKSnowglobeFaceView *)self bounds];
  v8 = [(NTKSnowglobeSceneController *)v5 initWithSceneSize:self->_asyncRenderQueue renderQueue:v6, v7];
  sceneController = self->_sceneController;
  self->_sceneController = v8;

  v10 = [NTKSnowglobeSceneQuad alloc];
  scene = [(NTKSnowglobeSceneController *)self->_sceneController scene];
  v12 = self->_sceneController;
  sharedDevice = [(NTKSnowglobeAssetLibrary *)self->_assetLibrary sharedDevice];
  device = [(NTKSnowglobeFaceView *)self device];
  [device screenScale];
  v15 = [(NTKSnowglobeSceneQuad *)v10 initWithScene:scene delegate:v12 device:sharedDevice screenScale:?];
  sceneQuad = self->_sceneQuad;
  self->_sceneQuad = v15;

  [(CLKUIQuadView *)v4 addQuad:self->_sceneQuad];
  renderer = [(NTKSnowglobeSceneQuad *)self->_sceneQuad renderer];
  [(NTKSnowglobeSceneController *)self->_sceneController setRenderer:renderer];

  [(NTKSnowglobeSceneController *)self->_sceneController setIdealizedState:1 editing:[(NTKSnowglobeFaceView *)self editing]];
  quadView = self->_quadView;
  self->_quadView = v4;
  v20 = v4;

  contentView = [(NTKSnowglobeFaceView *)self contentView];
  [contentView addSubview:self->_quadView];

  [(NTKSnowglobeFaceView *)self _applyFrozen];
  [(CLKUIQuadView *)v20 setPreferredFramesPerSecond:30];
  [(CLKUIQuadView *)v20 setPaused:0];
  dispatch_resume(self->_asyncRenderQueue);
}

- (void)_updateScene
{
  sceneController = self->_sceneController;
  v4 = ([(NTKSnowglobeFaceView *)self editing]& 1) != 0 || [(NTKSnowglobeFaceView *)self dataMode]!= 1;
  editing = [(NTKSnowglobeFaceView *)self editing];

  [(NTKSnowglobeSceneController *)sceneController setIdealizedState:v4 editing:editing];
}

- (void)_applyFrozen
{
  v4.receiver = self;
  v4.super_class = NTKSnowglobeFaceView;
  [(NTKSnowglobeFaceView *)&v4 _applyFrozen];
  isFrozen = [(NTKSnowglobeFaceView *)self isFrozen];
  [(NTKSnowglobeFaceView *)self _updateMotionPauseState];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setEnabled:isFrozen ^ 1u];
}

- (void)_updateMotionPauseState
{
  if (([(NTKSnowglobeFaceView *)self isFrozen]& 1) != 0 || [(NTKSnowglobeFaceView *)self editing])
  {
    [(NTKSnowglobeMotionToken *)self->_motionToken invalidate];
    motionToken = self->_motionToken;
    self->_motionToken = 0;
  }

  else
  {
    if (self->_motionToken)
    {
      return;
    }

    v6 = +[NTKSnowglobeMotionManager sharedInstance];
    acquireToken = [(NTKSnowglobeMotionToken *)v6 acquireToken];
    v5 = self->_motionToken;
    self->_motionToken = acquireToken;

    motionToken = v6;
  }
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = NTKSnowglobeFaceView;
  dateCopy = date;
  [(NTKSnowglobeFaceView *)&v7 setOverrideDate:dateCopy duration:duration];
  [(NTKSnowglobeSceneController *)self->_sceneController setOverrideDate:dateCopy duration:duration, v7.receiver, v7.super_class];
}

- (void)setTimeOffset:(double)offset
{
  v5.receiver = self;
  v5.super_class = NTKSnowglobeFaceView;
  [(NTKSnowglobeFaceView *)&v5 setTimeOffset:?];
  [(NTKSnowglobeSceneController *)self->_sceneController setTimeOffset:offset];
}

- (BOOL)_isBlackColor
{
  faceColorPalette = [(NTKSnowglobeFaceView *)self faceColorPalette];
  pigmentEditOption = [faceColorPalette pigmentEditOption];

  identifier = [pigmentEditOption identifier];
  v5 = [identifier isEqualToString:0];

  return v5;
}

- (void)_loadSnapshotContentViews
{
  v5.receiver = self;
  v5.super_class = NTKSnowglobeFaceView;
  [(NTKSnowglobeFaceView *)&v5 _loadSnapshotContentViews];
  if (!self->_quadView)
  {
    [(NTKSnowglobeFaceView *)self _setupScene];
  }

  if (!self->_tapGestureRecognizer)
  {
    v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__tappedWithSender_];
    tapGestureRecognizer = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v3;

    [(UITapGestureRecognizer *)self->_tapGestureRecognizer setEnabled:1];
    [(NTKSnowglobeFaceView *)self setUserInteractionEnabled:1];
    [(NTKSnowglobeFaceView *)self addGestureRecognizer:self->_tapGestureRecognizer];
  }

  [(NTKSnowglobeFaceView *)self _loadCornerOverlayView];
}

- (void)_unloadSnapshotContentViews
{
  v6.receiver = self;
  v6.super_class = NTKSnowglobeFaceView;
  [(NTKSnowglobeFaceView *)&v6 _unloadSnapshotContentViews];
  [(CLKUIQuadView *)self->_quadView removeFromSuperview];
  quadView = self->_quadView;
  self->_quadView = 0;

  sceneQuad = self->_sceneQuad;
  self->_sceneQuad = 0;

  sceneController = self->_sceneController;
  self->_sceneController = 0;

  [(NTKSnowglobeFaceView *)self _unloadCornerOverlayView];
}

- (void)_loadCornerOverlayView
{
  v3 = objc_alloc(MEMORY[0x277D2C0E0]);
  contentView = [(NTKSnowglobeFaceView *)self contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  device = [(NTKSnowglobeFaceView *)self device];
  v14 = [v3 initWithFrame:device forDeviceCornerRadius:{v6, v8, v10, v12}];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = v14;

  contentView2 = [(NTKSnowglobeFaceView *)self contentView];
  [contentView2 addSubview:self->_cornerOverlayView];
}

- (void)_unloadCornerOverlayView
{
  [(NTKRoundedCornerOverlayView *)self->_cornerOverlayView removeFromSuperview];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = 0;
}

- (void)_finalizeForSnapshotting:(id)snapshotting
{
  snapshottingCopy = snapshotting;
  sceneController = self->_sceneController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23C081E00;
  v7[3] = &unk_278BAC5C8;
  v7[4] = self;
  v8 = snapshottingCopy;
  v6 = snapshottingCopy;
  [(NTKSnowglobeSceneController *)sceneController flushWithCompletion:v7];
}

- (void)_tappedWithSender:(id)sender
{
  [sender locationInView:self];
  sceneController = self->_sceneController;

  MEMORY[0x2821F9670](sceneController, sel_tapAtPoint_);
}

- (id)createFaceColorPalette
{
  v2 = [(NTKFaceColorPalette *)[NTKSnowglobeColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 15)
  {
    background = [optionCopy background];
    sceneController = self->_sceneController;
    v13 = 0.0;
    if (!background)
    {
      v13 = 1.0;
    }

    [(NTKSnowglobeSceneController *)self->_sceneController setBackgroundObjectOpacity:v13];
  }

  else if (mode == 10)
  {
    colorPalette = [(NTKSnowglobeFaceView *)self colorPalette];
    [(NTKSnowglobeFaceView *)self _updateViewColorsWithPalette:colorPalette];

    delegate = [(NTKSnowglobeFaceView *)self delegate];
    [delegate faceViewDidChangeWantsStatusBarIconShadow];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  if (mode == 15)
  {
    background = [optionCopy background];
    background2 = [toOptionCopy background];
    v17 = 1.0;
    if (background2 == 1)
    {
      v17 = 1.0 - fraction;
    }

    fractionCopy = 0.0;
    if (!background2)
    {
      fractionCopy = fraction;
    }

    if (background == 1)
    {
      v17 = fractionCopy;
    }

    [(NTKSnowglobeSceneController *)self->_sceneController setBackgroundObjectOpacity:v17];
  }

  else if (mode == 10)
  {
    interpolatedColorPalette = [(NTKSnowglobeFaceView *)self interpolatedColorPalette];
    [(NTKSnowglobeFaceView *)self _updateViewColorsWithPalette:interpolatedColorPalette];
  }
}

- (void)_prepareForEditing
{
  [(NTKSnowglobeFaceView *)self _updateMotionPauseState];

  MEMORY[0x2821F9670](self, sel__updateScene);
}

- (void)_cleanupAfterEditing
{
  [(NTKSnowglobeFaceView *)self _updateMotionPauseState];

  MEMORY[0x2821F9670](self, sel__updateScene);
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 15)
  {
    return &unk_284EDC7F0;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  if (mode == 15)
  {
    if (qword_27E1EDDE0 != -1)
    {
      sub_23C08ED50();
    }

    v10 = optionCopy;
    v11 = [optionsCopy objectForKeyedSubscript:&unk_284EDC748];
    background = [v10 background];
    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "background")}];
    identifier = [v11 identifier];
    v16 = [v13 stringWithFormat:@"%@-%@", v14, identifier];

    v17 = [qword_27E1EDDD8 objectForKey:v16];
    if (!v17)
    {
      [(NTKSnowglobeSceneController *)self->_sceneController backgroundObjectOpacity];
      v19 = v18;
      v20 = 0.0;
      if (!background)
      {
        v20 = 1.0;
      }

      [(NTKSnowglobeSceneController *)self->_sceneController setBackgroundObjectOpacity:v20];
      [MEMORY[0x277D2BFE8] sizeForSwatchStyle:{objc_msgSend(v10, "swatchStyle")}];
      v22 = v21;
      v24 = v23;
      [(NTKSnowglobeFaceView *)self bounds];
      v25 = CGRectGetHeight(v31) / v24;
      device = [(NTKSnowglobeFaceView *)self device];
      [device screenScale];
      v28 = v25 * v27;

      v17 = [(CLKUIQuadView *)self->_quadView snapshotInRect:0.0 scale:0.0 time:v22, v24, v28, CACurrentMediaTime()];
      [qword_27E1EDDD8 setObject:v17 forKey:v16];
      [(NTKSnowglobeSceneController *)self->_sceneController setBackgroundObjectOpacity:v19];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end