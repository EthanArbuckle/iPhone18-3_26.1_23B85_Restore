@interface NTKKaleidoscopeFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (BOOL)_wantsStatusBarIconShadow;
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot;
- (NTKKaleidoscopeFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (double)_contentAlphaForEditMode:(int64_t)mode;
- (double)_handAlphaForEditMode:(int64_t)mode;
- (double)_verticalPaddingForStatusBar;
- (float)_crownTurnsForStyle:(unint64_t)style;
- (id)_imageForAsset:(unint64_t)asset;
- (id)_keylineViewForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_newComplicationFactoryForDevice:(id)device;
- (id)_pathfinderForAsset:(unint64_t)asset;
- (id)_quadWithStyle:(unint64_t)style asset:(unint64_t)asset;
- (id)_snapshotWithAsset:(unint64_t)asset style:(unint64_t)style size:(CGSize)size;
- (id)_swatchForAsset:(unint64_t)asset;
- (id)_swatchFromUserImage;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)_textureChromaForAsset:(unint64_t)asset;
- (id)_textureLumaForAsset:(unint64_t)asset;
- (id)_updatePathForQuadView:(id)view time:(double)time crownOffset:(double)offset;
- (id)provideAtlasBacking:(id)backing;
- (unint64_t)_layoutStyleForSlot:(id)slot;
- (void)_applyDataMode;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterTransitionComplicationSlot:(id)slot selectedComplication:(id)complication;
- (void)_cleanupAfterZoom;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_configureTimeView:(id)view;
- (void)_curvedComplicationCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot;
- (void)_disableCrown;
- (void)_enableCrown;
- (void)_loadCurrentQuad;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_prepareToZoom;
- (void)_unloadSnapshotContentViews;
- (void)_updateComplicationColors;
- (void)_updateDayDuration;
- (void)_updateForResourceDirectoryChange:(id)change;
- (void)_updateFramerate;
- (void)_updatePathForTime:(double)time;
- (void)_updateRotationForQuadView:(id)view time:(double)time crownOffset:(double)offset;
- (void)_updateUserContent;
- (void)_updateWithAsset:(unint64_t)asset;
- (void)dealloc;
- (void)quadViewWillDisplay:(id)display forTime:(double)time;
- (void)setCurrentAsset:(unint64_t)asset;
- (void)setCurrentStyle:(unint64_t)style;
@end

@implementation NTKKaleidoscopeFaceView

- (id)_newComplicationFactoryForDevice:(id)device
{
  deviceCopy = device;
  v5 = [[NTKColorCircularUtilitarianFaceViewComplicationFactory alloc] initForDevice:deviceCopy];

  [v5 setFaceView:self];
  return v5;
}

- (NTKKaleidoscopeFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  identifierCopy = identifier;
  v38.receiver = self;
  v38.super_class = NTKKaleidoscopeFaceView;
  v10 = [(NTKKaleidoscopeFaceView *)&v38 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifierCopy];
  if (v10)
  {
    v11 = objc_opt_new();
    loadedAssets = v10->_loadedAssets;
    v10->_loadedAssets = v11;

    v13 = [[NSMapTable alloc] initWithKeyOptions:5 valueOptions:0 capacity:2];
    quadPathfinderMapTable = v10->_quadPathfinderMapTable;
    v10->_quadPathfinderMapTable = v13;

    v10->_extendedSRGBcolorSpace = CGColorSpaceCreateWithName(kCGColorSpaceExtendedSRGB);
    v15 = objc_opt_new();
    resourceProviderKey = v10->_resourceProviderKey;
    v10->_resourceProviderKey = v15;

    v17 = [(NTKKaleidoscopeFaceView *)v10 _newComplicationFactoryForDevice:deviceCopy];
    faceViewComplicationFactory = v10->_faceViewComplicationFactory;
    v10->_faceViewComplicationFactory = v17;

    [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)v10->_faceViewComplicationFactory setDelegate:v10];
    objc_initWeak(&location, v10);
    v19 = v10->_faceViewComplicationFactory;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_E81C;
    v35[3] = &unk_24D78;
    objc_copyWeak(&v36, &location);
    [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)v19 setForegroundColorProviderBlock:v35];
    v20 = v10->_faceViewComplicationFactory;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_E884;
    v33[3] = &unk_24D78;
    objc_copyWeak(&v34, &location);
    [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)v20 setPlatterColorProviderBlock:v33];
    [(NTKKaleidoscopeFaceView *)v10 setComplicationFactory:v10->_faceViewComplicationFactory];
    v10->_currentAsset = 0x7FFFFFFFFFFFFFFFLL;
    v10->_currentStyle = 0x7FFFFFFFFFFFFFFFLL;
    v21 = +[UIColor whiteColor];
    [(NTKKaleidoscopeFaceView *)v10 setComplicationColor:v21];

    complicationColor = [(NTKKaleidoscopeFaceView *)v10 complicationColor];
    v23 = NTKColorByPremultiplyingAlpha();
    complicationPlatterColor = v10->_complicationPlatterColor;
    v10->_complicationPlatterColor = v23;

    v25 = NTKImageNamed();
    userImage = v10->_userImage;
    v10->_userImage = v25;

    v27 = [NSBundle bundleForClass:objc_opt_class()];
    v28 = NTKImageNamedFromBundle();
    userSwatch = v10->_userSwatch;
    v10->_userSwatch = v28;

    v30 = [CLKUITexture textureWithProviderDelegate:v10 uuid:@"Kaleidoscope-NoContent"];
    userTextureLuma = v10->_userTextureLuma;
    v10->_userTextureLuma = v30;

    objc_storeStrong(&v10->_userTextureChroma, v10->_userTextureLuma);
    v10->_interactiveModeAnimationInFlight = 0;
    [(NTKKaleidoscopeFaceView *)v10 _updateDayDuration];
    objc_destroyWeak(&v34);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (void)dealloc
{
  userTextureLuma = self->_userTextureLuma;
  self->_userTextureLuma = 0;

  userTextureChroma = self->_userTextureChroma;
  self->_userTextureChroma = 0;

  [(CLKUIQuadView *)self->_quadView removeAllQuads];
  [(NSMapTable *)self->_quadPathfinderMapTable removeAllObjects];
  v5 = +[CLKUIResourceManager sharedInstance];
  [v5 purgeAllUnused];

  CGColorSpaceRelease(self->_extendedSRGBcolorSpace);
  v6.receiver = self;
  v6.super_class = NTKKaleidoscopeFaceView;
  [(NTKKaleidoscopeFaceView *)&v6 dealloc];
}

- (void)setCurrentAsset:(unint64_t)asset
{
  if (self->_currentAsset != asset)
  {
    self->_currentAsset = asset;
    [(NTKKaleidoscopeFaceView *)self _updateWithAsset:?];
  }
}

- (void)setCurrentStyle:(unint64_t)style
{
  if (self->_currentStyle != style)
  {
    self->_currentStyle = style;
    [(NTKKaleidoscopeFaceView *)self _crownTurnsForStyle:?];
    self->_crownTurnsPerRotation = v5;

    [(NTKKaleidoscopeFaceView *)self _loadCurrentQuad];
  }
}

- (void)_loadCurrentQuad
{
  if (self->_currentAsset != 0x7FFFFFFFFFFFFFFFLL && self->_currentStyle != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(CLKUIQuadView *)self->_quadView removeAllQuads];
    v3 = [(NTKKaleidoscopeFaceView *)self _quadWithStyle:self->_currentStyle asset:self->_currentAsset];
    [v3 setOpaque:1];
    [(CLKUIQuadView *)self->_quadView addQuad:v3];
    [(NTKKaleidoscopeFaceView *)self _kaleidoscopeTime];
    [(NTKKaleidoscopeFaceView *)self _updatePathForTime:?];
    [(NTKKaleidoscopeFaceView *)self _updateComplicationColors];
  }
}

- (void)_updateWithAsset:(unint64_t)asset
{
  if (asset == 1000 && (!self->_userTextureLuma || !self->_userTextureChroma))
  {
    [(NTKKaleidoscopeFaceView *)self _updateUserContent];
  }

  [(NTKKaleidoscopeFaceView *)self _loadCurrentQuad];
}

- (void)_loadSnapshotContentViews
{
  v23.receiver = self;
  v23.super_class = NTKKaleidoscopeFaceView;
  [(NTKKaleidoscopeFaceView *)&v23 _loadSnapshotContentViews];
  [(NTKKaleidoscopeFaceView *)self bounds];
  v3 = [CLKUIQuadView quadViewWithFrame:@"Klei" identifier:?];
  quadView = self->_quadView;
  self->_quadView = v3;

  [(CLKUIQuadView *)self->_quadView setOpaque:1];
  v5 = self->_quadView;
  v6 = +[UIColor blackColor];
  [(CLKUIQuadView *)v5 setBackgroundColor:v6];

  contentView = [(NTKKaleidoscopeFaceView *)self contentView];
  [contentView addSubview:self->_quadView];

  [(NTKKaleidoscopeFaceView *)self _updateWithAsset:self->_currentAsset];
  device = [(NTKKaleidoscopeFaceView *)self device];
  deviceCategory = [device deviceCategory];

  if (deviceCategory != &dword_0 + 1)
  {
    v10 = [NTKRoundedCornerOverlayView alloc];
    [(NTKKaleidoscopeFaceView *)self bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    device2 = [(NTKKaleidoscopeFaceView *)self device];
    v20 = [v10 initWithFrame:device2 forDeviceCornerRadius:{v12, v14, v16, v18}];
    cornerView = self->_cornerView;
    self->_cornerView = v20;

    contentView2 = [(NTKKaleidoscopeFaceView *)self contentView];
    [contentView2 insertSubview:self->_cornerView aboveSubview:self->_quadView];
  }
}

- (void)_unloadSnapshotContentViews
{
  v5.receiver = self;
  v5.super_class = NTKKaleidoscopeFaceView;
  [(NTKKaleidoscopeFaceView *)&v5 _unloadSnapshotContentViews];
  [(CLKUIQuadView *)self->_quadView removeFromSuperview];
  quadView = self->_quadView;
  self->_quadView = 0;

  [(NTKRoundedCornerOverlayView *)self->_cornerView removeFromSuperview];
  cornerView = self->_cornerView;
  self->_cornerView = 0;
}

- (void)_applyFrozen
{
  v3.receiver = self;
  v3.super_class = NTKKaleidoscopeFaceView;
  [(NTKKaleidoscopeFaceView *)&v3 _applyFrozen];
  [(CLKUIQuadView *)self->_quadView setPaused:[(NTKKaleidoscopeFaceView *)self isFrozen]];
}

- (void)_applyDataMode
{
  v5.receiver = self;
  v5.super_class = NTKKaleidoscopeFaceView;
  [(NTKKaleidoscopeFaceView *)&v5 _applyDataMode];
  [(NTKKaleidoscopeFaceView *)self _kaleidoscopeTime];
  v4 = v3;
  [(NTKKaleidoscopeFaceView *)self _updatePathForTime:?];
  [(NTKKaleidoscopeFaceView *)self _updateRotationForQuadView:self->_quadView time:v4 crownOffset:self->_crownOffset];
  [(NTKKaleidoscopeFaceView *)self _updateComplicationColors];
  [(NTKKaleidoscopeFaceView *)self dataMode];
}

- (void)_enableCrown
{
  v2.receiver = self;
  v2.super_class = NTKKaleidoscopeFaceView;
  [(NTKKaleidoscopeFaceView *)&v2 _enableCrown];
}

- (void)_disableCrown
{
  v2.receiver = self;
  v2.super_class = NTKKaleidoscopeFaceView;
  [(NTKKaleidoscopeFaceView *)&v2 _disableCrown];
}

- (void)quadViewWillDisplay:(id)display forTime:(double)time
{
  ++self->_frameCounter;
  [(NTKKaleidoscopeFaceView *)self _kaleidoscopeTime:display];
  v6 = v5;
  [(NTKKaleidoscopeFaceView *)self _updatePathForTime:?];
  [(NTKKaleidoscopeFaceView *)self _updateRotationForQuadView:self->_quadView time:v6 crownOffset:self->_crownOffset];
  if (v6 - self->_lastComplicationUpdateTime > 300.0 && -858993459 * self->_frameCounter <= 0x33333333)
  {
    self->_lastComplicationUpdateTime = v6;

    [(NTKKaleidoscopeFaceView *)self _updateComplicationColors];
  }
}

- (void)_configureTimeView:(id)view
{
  v5.receiver = self;
  v5.super_class = NTKKaleidoscopeFaceView;
  viewCopy = view;
  [(NTKKaleidoscopeFaceView *)&v5 _configureTimeView:viewCopy];
  secondHandView = [viewCopy secondHandView];

  if (qword_2CF80 != -1)
  {
    sub_150F0();
  }

  [secondHandView setColor:qword_2CF78];
}

- (unint64_t)_layoutStyleForSlot:(id)slot
{
  slotCopy = slot;
  device = [(NTKKaleidoscopeFaceView *)self device];
  if ([device deviceCategory] == &dword_0 + 1)
  {

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = [slotCopy isEqualToString:NTKComplicationSlotBottomCenter];

  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = 1;
LABEL_6:

  return v7;
}

- (void)_curvedComplicationCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot
{
  slotCopy = slot;
  if ([(NTKKaleidoscopeFaceView *)self _layoutStyleForSlot:?]== &dword_0 + 1)
  {
    [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory curvedCircleRadius:radius centerAngle:angle maxAngularWidth:width circleCenter:center interior:interior forSlot:slotCopy];
  }
}

- (double)_verticalPaddingForStatusBar
{
  device = [(NTKKaleidoscopeFaceView *)self device];
  sub_11B74(device, device);
  v3 = *&qword_2CF40;

  return v3;
}

- (BOOL)_wantsStatusBarIconShadow
{
  v2 = [(NTKKaleidoscopeFaceView *)self optionForCustomEditMode:15 slot:0];
  v3 = [v2 style] == &dword_0 + 3;

  return v3;
}

- (void)_prepareForEditing
{
  v3.receiver = self;
  v3.super_class = NTKKaleidoscopeFaceView;
  [(NTKKaleidoscopeFaceView *)&v3 _prepareForEditing];
  [(NSMutableSet *)self->_loadedAssets removeAllObjects];
}

- (void)_cleanupAfterEditing
{
  v3.receiver = self;
  v3.super_class = NTKKaleidoscopeFaceView;
  [(NTKKaleidoscopeFaceView *)&v3 _cleanupAfterEditing];
  v2 = +[CLKUIResourceManager sharedInstance];
  [v2 purgeAllUnused];
}

- (void)_cleanupAfterTransitionComplicationSlot:(id)slot selectedComplication:(id)complication
{
  if ([slot isEqualToString:{NTKComplicationSlotBottomCenter, complication}])
  {
    delegate = [(NTKKaleidoscopeFaceView *)self delegate];
    [delegate faceViewWantsCustomKeylineFramesReloadedForEditMode:12];

    delegate2 = [(NTKKaleidoscopeFaceView *)self delegate];
    [delegate2 faceViewWantsCustomKeylineFramesReloadedForEditMode:15];
  }
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 15)
  {
    -[NTKKaleidoscopeFaceView setCurrentStyle:](self, "setCurrentStyle:", [optionCopy style]);
    delegate = [(NTKKaleidoscopeFaceView *)self delegate];
    [delegate faceViewDidChangeWantsStatusBarIconShadow];
  }

  else if (mode == 12)
  {
    -[NTKKaleidoscopeFaceView setCurrentAsset:](self, "setCurrentAsset:", [optionCopy asset]);
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  if (mode == 15)
  {
    p_quadView = &self->_quadView;
    [(CLKUIQuadView *)self->_quadView removeAllQuads];
    [(NSMapTable *)self->_quadPathfinderMapTable removeAllObjects];
    v17 = -[NTKKaleidoscopeFaceView _quadWithStyle:asset:](self, "_quadWithStyle:asset:", [optionCopy style], self->_currentAsset);
    v20 = -[NTKKaleidoscopeFaceView _quadWithStyle:asset:](self, "_quadWithStyle:asset:", [toOptionCopy style], self->_currentAsset);
    v21 = [(NTKKaleidoscopeFaceView *)self _isEditOptionFullscreen:optionCopy];
    v22 = 1.0 - fraction;
    if (v21)
    {
      fraction = 1.0 - fraction;
      v18 = v17;
    }

    else
    {
      v18 = v20;
    }

    if (v21)
    {
      v23 = v20;
    }

    else
    {
      v23 = v17;
    }

    *&v22 = fraction;
    [v18 setAlpha:v22];
    [v18 setOpaque:fraction >= 1.0];
    [v23 setOpaque:1];
    [(CLKUIQuadView *)*p_quadView addQuad:v23];
  }

  else
  {
    if (mode != 12)
    {
      goto LABEL_12;
    }

    asset = [optionCopy asset];
    asset2 = [toOptionCopy asset];
    p_quadView = &self->_quadView;
    [(CLKUIQuadView *)self->_quadView removeAllQuads];
    [(NSMapTable *)self->_quadPathfinderMapTable removeAllObjects];
    v17 = [(NTKKaleidoscopeFaceView *)self _quadWithStyle:self->_currentStyle asset:asset];
    [v17 setOpaque:1];
    [(CLKUIQuadView *)self->_quadView addQuad:v17];
    v18 = [(NTKKaleidoscopeFaceView *)self _quadWithStyle:self->_currentStyle asset:asset2];
    *&v19 = fraction;
    [v18 setAlpha:v19];
    v20 = v18;
  }

  [(CLKUIQuadView *)*p_quadView addQuad:v18];

LABEL_12:
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  timeView = [(NTKKaleidoscopeFaceView *)self timeView];
  [(NTKKaleidoscopeFaceView *)self _handAlphaForEditMode:mode];
  [(NTKKaleidoscopeFaceView *)self _handAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [timeView setAlpha:?];

  contentView = [(NTKKaleidoscopeFaceView *)self contentView];
  [(NTKKaleidoscopeFaceView *)self _contentAlphaForEditMode:mode];
  [(NTKKaleidoscopeFaceView *)self _contentAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [contentView setAlpha:?];

  contentView2 = [(NTKKaleidoscopeFaceView *)self contentView];
  v11 = *&CGAffineTransformIdentity.c;
  v13[0] = *&CGAffineTransformIdentity.a;
  v13[1] = v11;
  v13[2] = *&CGAffineTransformIdentity.tx;
  [contentView2 setTransform:v13];

  foregroundContainerView = [(NTKKaleidoscopeFaceView *)self foregroundContainerView];
  [(NTKKaleidoscopeFaceView *)self _complicationAlphaForEditMode:mode];
  [(NTKKaleidoscopeFaceView *)self _complicationAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [foregroundContainerView setAlpha:?];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v10.receiver = self;
  v10.super_class = NTKKaleidoscopeFaceView;
  [(NTKKaleidoscopeFaceView *)&v10 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 15 || mode == 12)
  {
    contentView = [(NTKKaleidoscopeFaceView *)self contentView];
    NTKAlphaForRubberBandingFraction();
    [contentView setAlpha:?];
    NTKScaleForRubberBandingFraction();
    CGAffineTransformMakeScale(&v9, v8, v8);
    [contentView setTransform:&v9];
  }
}

- (id)_keylineViewForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 15 || mode == 12)
  {
    device = [(NTKKaleidoscopeFaceView *)self device];
    if ([device deviceCategory] == &dword_0 + 1)
    {
      sub_11B74([(NTKKaleidoscopeFaceView *)self _faceEditingScaleForEditMode:mode slot:slotCopy], device);
      v8 = NTKKeylineViewWithCircle();
    }

    else
    {
      v11.receiver = self;
      v11.super_class = NTKKaleidoscopeFaceView;
      v8 = [(NTKKaleidoscopeFaceView *)&v11 _keylineViewForCustomEditMode:mode slot:slotCopy];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  device = [(NTKKaleidoscopeFaceView *)self device];
  deviceCategory = [device deviceCategory];

  if (deviceCategory == &dword_0 + 1 && (mode == 15 || mode == 12))
  {
    device2 = [(NTKKaleidoscopeFaceView *)self device];
    sub_11B74(device2, device2);

    timeView = [(NTKKaleidoscopeFaceView *)self timeView];
    [timeView center];
    device3 = [(NTKKaleidoscopeFaceView *)self device];
    CLKRectCenteredAboutPointForDevice();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = NTKKaleidoscopeFaceView;
    [(NTKKaleidoscopeFaceView *)&v28 _relativeKeylineFrameForCustomEditMode:mode slot:slotCopy];
    v13 = v20;
    v15 = v21;
    v17 = v22;
    v19 = v23;
  }

  v24 = v13;
  v25 = v15;
  v26 = v17;
  v27 = v19;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)_updateForResourceDirectoryChange:(id)change
{
  v4.receiver = self;
  v4.super_class = NTKKaleidoscopeFaceView;
  [(NTKKaleidoscopeFaceView *)&v4 _updateForResourceDirectoryChange:change];
  [(NTKKaleidoscopeFaceView *)self _updateUserContent];
  [(NTKKaleidoscopeFaceView *)self reloadSnapshotContentViews];
}

- (id)provideAtlasBacking:(id)backing
{
  backingCopy = backing;
  v25 = [NSBundle bundleForClass:objc_opt_class()];
  if (![backingCopy isEqualToString:@"Kaleidoscope-RosetteMask"])
  {
    if (self->_userUuidLuma && self->_userUuidChroma)
    {
      if ([backingCopy isEqualToString:?])
      {
        v16 = +[NTKKaleidoscopeCoordinatorCache sharedCache];
        v17 = v16;
        userImage = self->_userImage;
        userUuidLuma = self->_userUuidLuma;
        userUuidChroma = self->_userUuidChroma;
        v21 = userUuidLuma;
LABEL_20:
        v15 = [v16 provideAtlasBacking:userImage uuid:userUuidLuma uuidLuma:v21 uuidChroma:userUuidChroma];

        goto LABEL_27;
      }

      if ([backingCopy isEqualToString:self->_userUuidChroma])
      {
        v16 = +[NTKKaleidoscopeCoordinatorCache sharedCache];
        v17 = v16;
        userImage = self->_userImage;
        userUuidLuma = self->_userUuidChroma;
        v21 = self->_userUuidLuma;
        userUuidChroma = userUuidLuma;
        goto LABEL_20;
      }
    }

    v6 = [v25 pathForResource:backingCopy ofType:@"art"];
    if (v6)
    {
      v22 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v31 = backingCopy;
        v32 = 2112;
        v33 = v6;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "[kaleidoscope] using artwork for %@ at %@", buf, 0x16u);
      }

      v15 = [CLKUIAtlasBacking atlasBackingWithArt:v6 uuid:backingCopy];
    }

    else
    {
      v23 = NTKImageNamed();
      v15 = [CLKUIAtlasBacking atlasBackingWithImage:v23 uuid:backingCopy];
    }

LABEL_26:

    goto LABEL_27;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  device = [(NTKKaleidoscopeFaceView *)self device];
  v6 = CLKUIOrderedSuffixesForDevice();

  v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = backingCopy;
        v12 = [NSString stringWithFormat:@"%@%@@2x", backingCopy, *(*(&v26 + 1) + 8 * i)];
        v13 = [v25 pathForResource:v12 ofType:@"art"];

        if (v13)
        {
          backingCopy = v11;
          v15 = [CLKUIAtlasBacking atlasBackingWithArt:v13 uuid:v11];

          goto LABEL_26;
        }

        v14 = _NTKLoggingObjectForDomain();
        backingCopy = v11;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v31 = v11;
          _os_log_error_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "[kaleidoscope] missing artwork: %@", buf, 0xCu);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_27:

  return v15;
}

- (void)_updateDayDuration
{
  v6 = NTKIdealizedDate();
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 dateByAddingUnit:16 value:1 toDate:v6 options:0];

  [v4 timeIntervalSinceDate:v6];
  self->_dayDuration = v5;
}

- (double)_handAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (!mode)
  {
    return 1.0;
  }

  return result;
}

- (double)_contentAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_complicationAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode < 2)
  {
    return 1.0;
  }

  return result;
}

- (float)_crownTurnsForStyle:(unint64_t)style
{
  v3 = style == 3 || style == 0;
  result = 5.0;
  if (v3)
  {
    return 1.0;
  }

  return result;
}

- (id)_swatchFromUserImage
{
  if (self->_userImage)
  {
    device = [(NTKKaleidoscopeFaceView *)self device];
    v4 = [(NTKKaleidoscopeAssetOption *)NTKKaleidoscopeCustomAssetOption optionWithAsset:1000 forDevice:device];

    +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [v4 swatchStyle]);
    userImage = self->_userImage;
    v6 = NTKPhotosAspectFilledImageFromImage();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateUserContent
{
  resourceDirectory = [(NTKKaleidoscopeFaceView *)self resourceDirectory];
  if (resourceDirectory)
  {
    v4 = [NTKPhotosReader readerForResourceDirectory:resourceDirectory];
    firstObject = [v4 firstObject];
    if (firstObject)
    {
      v6 = firstObject;
      if (([(NTKPhoto *)self->_userPhoto isEqualToPhoto:firstObject]& 1) != 0)
      {
LABEL_16:

        goto LABEL_17;
      }

      v7 = [[NTKCachedPhoto alloc] initWithPhoto:v6];
      [v7 load];
      objc_storeStrong(&self->_userPhoto, v6);
      image = [v7 image];
      userImage = self->_userImage;
      self->_userImage = image;

      uuidFromLocalIdentifierAndModificationDate = [(NTKPhoto *)self->_userPhoto uuidFromLocalIdentifierAndModificationDate];
      v11 = [uuidFromLocalIdentifierAndModificationDate stringByAppendingString:@"-l"];
      userUuidLuma = self->_userUuidLuma;
      self->_userUuidLuma = v11;

      v13 = [uuidFromLocalIdentifierAndModificationDate stringByAppendingString:@"-c"];
      userUuidChroma = self->_userUuidChroma;
      self->_userUuidChroma = v13;

      v15 = self->_userImage;
      CLKUIComputePow2SubRect();
      v44 = v16;
      v17 = [CLKUITexture textureWithProviderDelegate:self uuid:self->_userUuidLuma rect:?];
      userTextureLuma = self->_userTextureLuma;
      self->_userTextureLuma = v17;

      v19 = [CLKUITexture textureWithProviderDelegate:self uuid:self->_userUuidChroma rect:v44];
      userTextureChroma = self->_userTextureChroma;
      self->_userTextureChroma = v19;

      v21 = [NTKKaleidoscopePathfinder pathfinderFromDirectory:resourceDirectory];
      userPathfinder = self->_userPathfinder;
      self->_userPathfinder = v21;

      if (self->_userPathfinder)
      {
LABEL_15:
        _swatchFromUserImage = [(NTKKaleidoscopeFaceView *)self _swatchFromUserImage];
        userSwatch = self->_userSwatch;
        self->_userSwatch = _swatchFromUserImage;

        goto LABEL_16;
      }

      v45 = v7;
      v23 = NTKNewUniqueTeporaryResourceDirectory();
      v24 = +[NSFileManager defaultManager];
      v46 = 0;
      v25 = [v24 copyItemAtPath:resourceDirectory toPath:v23 error:&v46];
      v43 = v46;

      if (v25)
      {
        v26 = [NTKKaleidoscopePathfinder pathfinderWithImage:self->_userImage];
        v27 = self->_userPathfinder;
        self->_userPathfinder = v26;

        v28 = v43;
        if (![(NTKKaleidoscopePathfinder *)self->_userPathfinder writeToDirectory:v23])
        {
LABEL_14:
          v40 = +[NSFileManager defaultManager];
          [v40 removeItemAtPath:v23 error:0];

          v7 = v45;
          goto LABEL_15;
        }

        delegate = [(NTKKaleidoscopeFaceView *)self delegate];
        [delegate faceViewUpdatedResourceDirectory:v23 wantsToTransferOwnership:1];
      }

      else
      {
        delegate = _NTKLoggingObjectForDomain();
        v28 = v43;
        if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
        {
          sub_15118(v43, delegate);
        }
      }

      goto LABEL_14;
    }
  }

  userPhoto = self->_userPhoto;
  if (userPhoto)
  {
    self->_userPhoto = 0;

    v31 = self->_userImage;
    self->_userImage = 0;

    v32 = self->_userUuidLuma;
    self->_userUuidLuma = 0;

    v33 = self->_userUuidChroma;
    self->_userUuidChroma = 0;

    v34 = self->_userTextureLuma;
    self->_userTextureLuma = 0;

    v35 = self->_userTextureChroma;
    self->_userTextureChroma = 0;

    v36 = self->_userPathfinder;
    self->_userPathfinder = 0;

    v37 = [NSBundle bundleForClass:objc_opt_class()];
    v38 = NTKImageNamedFromBundle();
    v39 = self->_userSwatch;
    self->_userSwatch = v38;
  }

LABEL_17:
}

- (void)_updateFramerate
{
  if (([(NTKKaleidoscopeFaceView *)self editing]& 1) != 0)
  {
    p_quadView = &self->_quadView;
    [(CLKUIQuadView *)self->_quadView setPaused:0];
LABEL_10:
    v5 = 0;
    goto LABEL_12;
  }

  if (([(NTKKaleidoscopeFaceView *)self isFrozen]& 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = [(NTKKaleidoscopeFaceView *)self dataMode]!= &dword_0 + 1 && [(NTKKaleidoscopeFaceView *)self dataMode]!= &dword_4 + 1 && [(NTKKaleidoscopeFaceView *)self dataMode]!= &dword_0 + 3;
  }

  p_quadView = &self->_quadView;
  [(CLKUIQuadView *)self->_quadView setPaused:v4];
  if (self->_interactiveModeAnimationInFlight)
  {
    goto LABEL_10;
  }

  device = [(NTKKaleidoscopeFaceView *)self device];
  sub_11B74(device, device);
  v5 = qword_2CF50;

LABEL_12:
  v7 = *p_quadView;

  [(CLKUIQuadView *)v7 setPreferredFramesPerSecond:v5];
}

- (void)_updateRotationForQuadView:(id)view time:(double)time crownOffset:(double)offset
{
  v7 = fmod(offset * 60.0 / self->_crownTurnsPerRotation + time, 120.0);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  quads = [view quads];
  v9 = [quads countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v12 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(quads);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [(NSMapTable *)self->_quadPathfinderMapTable objectForKey:v14];
        [v15 startRotation];
        v11 = v7 / 120.0;
        *v17.i32 = v16 + v11;
        *v18.i32 = *v17.i32 - truncf(*v17.i32);
        v19.i64[0] = 0x8000000080000000;
        v19.i64[1] = 0x8000000080000000;
        [v14 setRotation:{*vbslq_s8(v19, v18, v17).i64}];
      }

      v10 = [quads countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }
}

- (id)_updatePathForQuadView:(id)view time:(double)time crownOffset:(double)offset
{
  viewCopy = view;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  quads = [viewCopy quads];
  v10 = [quads countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v10)
  {

LABEL_13:
    v12 = +[UIColor whiteColor];
    v21 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_15190(v21);
    }

    goto LABEL_16;
  }

  v11 = v10;
  v23 = viewCopy;
  v12 = 0;
  v13 = *v26;
  v14 = (time + offset * 1800.0 + floor((time + offset * 1800.0) / 43200.0) * -43200.0) / 43200.0;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v26 != v13)
      {
        objc_enumerationMutation(quads);
      }

      v16 = *(*(&v25 + 1) + 8 * i);
      v17 = [(NSMapTable *)self->_quadPathfinderMapTable objectForKey:v16];
      v18 = v17;
      if (v17)
      {
        memset(v24, 0, sizeof(v24));
        [v17 pointForTime:COERCE_DOUBLE(LODWORD(v14))];
        v19 = CGColorCreate(self->_extendedSRGBcolorSpace, v24);
        v20 = [UIColor colorWithCGColor:v19];

        CGColorRelease(v19);
        [v16 setSampleRadius:0.0];
        [v16 setSampleCenter:0.0];
        v12 = v20;
      }
    }

    v11 = [quads countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v11);

  viewCopy = v23;
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_16:

  return v12;
}

- (void)_updatePathForTime:(double)time
{
  v6 = [(NTKKaleidoscopeFaceView *)self _updatePathForQuadView:self->_quadView time:time crownOffset:self->_crownOffset];
  [(NTKKaleidoscopeFaceView *)self setComplicationColor:v6];
  v4 = NTKColorByPremultiplyingAlpha();
  complicationPlatterColor = self->_complicationPlatterColor;
  self->_complicationPlatterColor = v4;
}

- (void)_updateComplicationColors
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10B28;
  v2[3] = &unk_24DA0;
  v2[4] = self;
  [(NTKKaleidoscopeFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v2];
}

- (id)_imageForAsset:(unint64_t)asset
{
  if (asset == 1000)
  {
    v3 = self->_userImage;
  }

  else
  {
    v4 = [NSString stringWithFormat:@"Kaleidoscope-Asset%02d", (asset + 1)];
    v3 = NTKImageNamed();
  }

  return v3;
}

- (id)_pathfinderForAsset:(unint64_t)asset
{
  if (asset != 1000)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [NSString stringWithFormat:@"Kaleidoscope-Asset%02d", (asset + 1)];
    v8 = [v6 pathForResource:v7 ofType:@"pathfinder"];
    if (!v8)
    {
      v11 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_151D4(v7, v11);
      }

      v5 = 0;
LABEL_38:

      if (v5)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    v9 = [NTKKaleidoscopePathfinder pathfinderFromFile:v8];
    v5 = v9;
    if (asset > 13)
    {
      if (asset > 23)
      {
        switch(asset)
        {
          case 0x18uLL:
            LODWORD(v10) = 1013008293;
            goto LABEL_35;
          case 0x19uLL:
            LODWORD(v10) = 1034800000;
            goto LABEL_35;
          case 0x1AuLL:
            LODWORD(v10) = -1084462872;
            goto LABEL_35;
        }

        goto LABEL_43;
      }

      switch(asset)
      {
        case 0xEuLL:
          LODWORD(v10) = 1072344365;
          break;
        case 0xFuLL:
          LODWORD(v10) = 1071251596;
          break;
        case 0x17uLL:
          LODWORD(v10) = -1101792568;
          goto LABEL_35;
        default:
LABEL_43:
          [(NTKKaleidoscopePathfinder *)v9 adjustRotationStart:0.0];
          if (asset - 27 < 6)
          {
            LODWORD(v12) = *"ff&?";
            goto LABEL_37;
          }

          goto LABEL_36;
      }
    }

    else
    {
      if (asset <= 10)
      {
        switch(asset)
        {
          case 8uLL:
            LODWORD(v10) = 1062269566;
            goto LABEL_35;
          case 9uLL:
            LODWORD(v10) = 1050609104;
            goto LABEL_35;
          case 0xAuLL:
            LODWORD(v10) = 1060939122;
LABEL_35:
            [(NTKKaleidoscopePathfinder *)v9 adjustRotationStart:v10];
LABEL_36:
            LODWORD(v12) = 1.0;
            goto LABEL_37;
        }

        goto LABEL_43;
      }

      if (asset == 11)
      {
        LODWORD(v10) = 1057069931;
        goto LABEL_35;
      }

      if (asset == 12)
      {
        LODWORD(v10) = 1048576045;
      }

      else
      {
        LODWORD(v10) = 1050513605;
      }
    }

    [(NTKKaleidoscopePathfinder *)v9 adjustRotationStart:v10];
    LODWORD(v12) = 0.5;
LABEL_37:
    [(NTKKaleidoscopePathfinder *)v5 adjustSampleRadius:v12];
    goto LABEL_38;
  }

  v5 = self->_userPathfinder;
  if (v5)
  {
    goto LABEL_40;
  }

LABEL_39:
  v13 = [(NTKKaleidoscopeFaceView *)self _imageForAsset:asset];
  v5 = [NTKKaleidoscopePathfinder pathfinderWithImage:v13];

LABEL_40:

  return v5;
}

- (id)_textureLumaForAsset:(unint64_t)asset
{
  if (asset == 1000)
  {
    v4 = self->_userTextureLuma;
  }

  else
  {
    v6 = [NSString stringWithFormat:@"Kaleidoscope-Asset%02d-l", (asset + 1)];
    v7.i64[0] = 8;
    v8.i64[0] = asset & 0xFFFFFFFFFFFFFFFCLL;
    v4 = [CLKUITexture textureWithProviderDelegate:self uuid:v6 rect:*vbslq_s8(vdupq_lane_s64(vceqq_s64(v8, v7).i64[0], 0), xmmword_1B5B0, xmmword_1B5A0).i64];
  }

  return v4;
}

- (id)_textureChromaForAsset:(unint64_t)asset
{
  if (asset == 1000)
  {
    v4 = self->_userTextureChroma;
  }

  else
  {
    v6 = [NSString stringWithFormat:@"Kaleidoscope-Asset%02d-c", (asset + 1)];
    v7.i64[0] = 8;
    v8.i64[0] = asset & 0xFFFFFFFFFFFFFFFCLL;
    v4 = [CLKUITexture textureWithProviderDelegate:self uuid:v6 rect:*vbslq_s8(vdupq_lane_s64(vceqq_s64(v8, v7).i64[0], 0), xmmword_1B5B0, xmmword_1B5A0).i64];
  }

  return v4;
}

- (id)_quadWithStyle:(unint64_t)style asset:(unint64_t)asset
{
  v7 = [NSNumber numberWithInteger:asset];
  [(NSMutableSet *)self->_loadedAssets addObject:v7];
  v8 = [NTKKaleidoscopeQuad quadWithShaderType:qword_1B5C0[style]];
  v9 = [(NTKKaleidoscopeFaceView *)self _textureLumaForAsset:asset];
  [v8 setPrimaryLumaTexture:v9];

  v10 = [(NTKKaleidoscopeFaceView *)self _textureChromaForAsset:asset];
  [v8 setPrimaryChromaTexture:v10];

  if (style == 2)
  {
    v11 = [CLKUITexture textureWithProviderDelegate:self uuid:@"Kaleidoscope-RosetteMask"];
    [v8 setSecondaryTexture:v11];
  }

  device = [(NTKKaleidoscopeFaceView *)self device];
  sub_11B74(device, device);
  LODWORD(v13) = dword_2CF48;
  [v8 setDialRadius:v13];

  v14 = [(NTKKaleidoscopeFaceView *)self _pathfinderForAsset:asset];
  [(NSMapTable *)self->_quadPathfinderMapTable setObject:v14 forKey:v8];

  return v8;
}

- (void)_prepareToZoom
{
  v3.receiver = self;
  v3.super_class = NTKKaleidoscopeFaceView;
  [(NTKKaleidoscopeFaceView *)&v3 _prepareToZoom];
  [(CLKUIQuadView *)self->_quadView setPaused:1];
}

- (void)_cleanupAfterZoom
{
  v3.receiver = self;
  v3.super_class = NTKKaleidoscopeFaceView;
  [(NTKKaleidoscopeFaceView *)&v3 _cleanupAfterZoom];
  [(NTKKaleidoscopeFaceView *)self _updateFramerate];
}

- (id)_swatchForAsset:(unint64_t)asset
{
  if (asset == 1000)
  {
    v3 = self->_userSwatch;
  }

  else
  {
    assetCopy = asset;
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [NSString stringWithFormat:@"Swatch-Kaleidoscope-Asset%02d", (assetCopy + 1)];
    v3 = NTKImageNamedFromBundle();
  }

  return v3;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 15)
  {
    return &off_26760;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  v10 = +[NTKKaleidoscopeSwatchMappedImageCache sharedCache];
  if (mode == 15)
  {
    v12 = optionCopy;
    v13 = [optionsCopy objectForKeyedSubscript:&off_26218];
    resourceDirectory = [(NTKKaleidoscopeFaceView *)self resourceDirectory];
    v15 = [NTKKaleidoscopeSwatchMappedImageCache keyForAsset:v13 style:v12 resourceDirectory:resourceDirectory];
    v16 = [v10 imageForKey:v15];
    if (!v16)
    {
      asset = [v13 asset];
      style = [v12 style];
      +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [v12 swatchStyle]);
      v16 = [(NTKKaleidoscopeFaceView *)self _snapshotWithAsset:asset style:style size:?];
      [v10 setImage:v16 forKey:v15];
    }
  }

  else
  {
    if (mode == 12)
    {
      v11 = -[NTKKaleidoscopeFaceView _swatchForAsset:](self, "_swatchForAsset:", [optionCopy asset]);
    }

    else
    {
      v20.receiver = self;
      v20.super_class = NTKKaleidoscopeFaceView;
      v11 = [(NTKKaleidoscopeFaceView *)&v20 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
    }

    v16 = v11;
  }

  return v16;
}

- (id)_snapshotWithAsset:(unint64_t)asset style:(unint64_t)style size:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = CGPointZero.y;
  v11 = [CLKUIQuadView quadViewWithFrame:@"Klei" identifier:CGPointZero.x, y, size.width, size.height];
  v12 = [(NTKKaleidoscopeFaceView *)self _quadWithStyle:style asset:asset];
  [v12 setOpaque:1];
  [v11 addQuad:v12];
  [(NTKKaleidoscopeFaceView *)self _kaleidoscopeTime];
  v14 = v13;
  [(NTKKaleidoscopeFaceView *)self _updateWithAsset:asset];
  v15 = [(NTKKaleidoscopeFaceView *)self _updatePathForQuadView:v11 time:v14 crownOffset:0.0];
  [(NTKKaleidoscopeFaceView *)self _updateRotationForQuadView:v11 time:v14 crownOffset:0.0];
  v16 = +[UIScreen mainScreen];
  [v16 nativeScale];
  v18 = [v11 snapshotInRect:CGPointZero.x scale:y time:{width, height, v17, v14}];

  return v18;
}

@end