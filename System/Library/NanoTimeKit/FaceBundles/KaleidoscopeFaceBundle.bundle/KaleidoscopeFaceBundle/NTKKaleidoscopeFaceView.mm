@interface NTKKaleidoscopeFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (BOOL)_wantsStatusBarIconShadow;
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (NTKKaleidoscopeFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_contentAlphaForEditMode:(int64_t)a3;
- (double)_handAlphaForEditMode:(int64_t)a3;
- (double)_verticalPaddingForStatusBar;
- (float)_crownTurnsForStyle:(unint64_t)a3;
- (id)_imageForAsset:(unint64_t)a3;
- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_newComplicationFactoryForDevice:(id)a3;
- (id)_pathfinderForAsset:(unint64_t)a3;
- (id)_quadWithStyle:(unint64_t)a3 asset:(unint64_t)a4;
- (id)_snapshotWithAsset:(unint64_t)a3 style:(unint64_t)a4 size:(CGSize)a5;
- (id)_swatchForAsset:(unint64_t)a3;
- (id)_swatchFromUserImage;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)_textureChromaForAsset:(unint64_t)a3;
- (id)_textureLumaForAsset:(unint64_t)a3;
- (id)_updatePathForQuadView:(id)a3 time:(double)a4 crownOffset:(double)a5;
- (id)provideAtlasBacking:(id)a3;
- (unint64_t)_layoutStyleForSlot:(id)a3;
- (void)_applyDataMode;
- (void)_applyFrozen;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterTransitionComplicationSlot:(id)a3 selectedComplication:(id)a4;
- (void)_cleanupAfterZoom;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_configureTimeView:(id)a3;
- (void)_curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8;
- (void)_disableCrown;
- (void)_enableCrown;
- (void)_loadCurrentQuad;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_prepareToZoom;
- (void)_unloadSnapshotContentViews;
- (void)_updateComplicationColors;
- (void)_updateDayDuration;
- (void)_updateForResourceDirectoryChange:(id)a3;
- (void)_updateFramerate;
- (void)_updatePathForTime:(double)a3;
- (void)_updateRotationForQuadView:(id)a3 time:(double)a4 crownOffset:(double)a5;
- (void)_updateUserContent;
- (void)_updateWithAsset:(unint64_t)a3;
- (void)dealloc;
- (void)quadViewWillDisplay:(id)a3 forTime:(double)a4;
- (void)setCurrentAsset:(unint64_t)a3;
- (void)setCurrentStyle:(unint64_t)a3;
@end

@implementation NTKKaleidoscopeFaceView

- (id)_newComplicationFactoryForDevice:(id)a3
{
  v4 = a3;
  v5 = [[NTKColorCircularUtilitarianFaceViewComplicationFactory alloc] initForDevice:v4];

  [v5 setFaceView:self];
  return v5;
}

- (NTKKaleidoscopeFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v38.receiver = self;
  v38.super_class = NTKKaleidoscopeFaceView;
  v10 = [(NTKKaleidoscopeFaceView *)&v38 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:v9];
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

    v17 = [(NTKKaleidoscopeFaceView *)v10 _newComplicationFactoryForDevice:v8];
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

    v22 = [(NTKKaleidoscopeFaceView *)v10 complicationColor];
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

- (void)setCurrentAsset:(unint64_t)a3
{
  if (self->_currentAsset != a3)
  {
    self->_currentAsset = a3;
    [(NTKKaleidoscopeFaceView *)self _updateWithAsset:?];
  }
}

- (void)setCurrentStyle:(unint64_t)a3
{
  if (self->_currentStyle != a3)
  {
    self->_currentStyle = a3;
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

- (void)_updateWithAsset:(unint64_t)a3
{
  if (a3 == 1000 && (!self->_userTextureLuma || !self->_userTextureChroma))
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

  v7 = [(NTKKaleidoscopeFaceView *)self contentView];
  [v7 addSubview:self->_quadView];

  [(NTKKaleidoscopeFaceView *)self _updateWithAsset:self->_currentAsset];
  v8 = [(NTKKaleidoscopeFaceView *)self device];
  v9 = [v8 deviceCategory];

  if (v9 != &dword_0 + 1)
  {
    v10 = [NTKRoundedCornerOverlayView alloc];
    [(NTKKaleidoscopeFaceView *)self bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(NTKKaleidoscopeFaceView *)self device];
    v20 = [v10 initWithFrame:v19 forDeviceCornerRadius:{v12, v14, v16, v18}];
    cornerView = self->_cornerView;
    self->_cornerView = v20;

    v22 = [(NTKKaleidoscopeFaceView *)self contentView];
    [v22 insertSubview:self->_cornerView aboveSubview:self->_quadView];
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

- (void)quadViewWillDisplay:(id)a3 forTime:(double)a4
{
  ++self->_frameCounter;
  [(NTKKaleidoscopeFaceView *)self _kaleidoscopeTime:a3];
  v6 = v5;
  [(NTKKaleidoscopeFaceView *)self _updatePathForTime:?];
  [(NTKKaleidoscopeFaceView *)self _updateRotationForQuadView:self->_quadView time:v6 crownOffset:self->_crownOffset];
  if (v6 - self->_lastComplicationUpdateTime > 300.0 && -858993459 * self->_frameCounter <= 0x33333333)
  {
    self->_lastComplicationUpdateTime = v6;

    [(NTKKaleidoscopeFaceView *)self _updateComplicationColors];
  }
}

- (void)_configureTimeView:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKKaleidoscopeFaceView;
  v3 = a3;
  [(NTKKaleidoscopeFaceView *)&v5 _configureTimeView:v3];
  v4 = [v3 secondHandView];

  if (qword_2CF80 != -1)
  {
    sub_150F0();
  }

  [v4 setColor:qword_2CF78];
}

- (unint64_t)_layoutStyleForSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKKaleidoscopeFaceView *)self device];
  if ([v5 deviceCategory] == &dword_0 + 1)
  {

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = [v4 isEqualToString:NTKComplicationSlotBottomCenter];

  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = 1;
LABEL_6:

  return v7;
}

- (void)_curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8
{
  v14 = a8;
  if ([(NTKKaleidoscopeFaceView *)self _layoutStyleForSlot:?]== &dword_0 + 1)
  {
    [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory curvedCircleRadius:a3 centerAngle:a4 maxAngularWidth:a5 circleCenter:a6 interior:a7 forSlot:v14];
  }
}

- (double)_verticalPaddingForStatusBar
{
  v2 = [(NTKKaleidoscopeFaceView *)self device];
  sub_11B74(v2, v2);
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

- (void)_cleanupAfterTransitionComplicationSlot:(id)a3 selectedComplication:(id)a4
{
  if ([a3 isEqualToString:{NTKComplicationSlotBottomCenter, a4}])
  {
    v5 = [(NTKKaleidoscopeFaceView *)self delegate];
    [v5 faceViewWantsCustomKeylineFramesReloadedForEditMode:12];

    v6 = [(NTKKaleidoscopeFaceView *)self delegate];
    [v6 faceViewWantsCustomKeylineFramesReloadedForEditMode:15];
  }
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v10 = a3;
  v8 = a5;
  if (a4 == 15)
  {
    -[NTKKaleidoscopeFaceView setCurrentStyle:](self, "setCurrentStyle:", [v10 style]);
    v9 = [(NTKKaleidoscopeFaceView *)self delegate];
    [v9 faceViewDidChangeWantsStatusBarIconShadow];
  }

  else if (a4 == 12)
  {
    -[NTKKaleidoscopeFaceView setCurrentAsset:](self, "setCurrentAsset:", [v10 asset]);
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v24 = a4;
  v12 = a5;
  v13 = a7;
  if (a6 == 15)
  {
    p_quadView = &self->_quadView;
    [(CLKUIQuadView *)self->_quadView removeAllQuads];
    [(NSMapTable *)self->_quadPathfinderMapTable removeAllObjects];
    v17 = -[NTKKaleidoscopeFaceView _quadWithStyle:asset:](self, "_quadWithStyle:asset:", [v24 style], self->_currentAsset);
    v20 = -[NTKKaleidoscopeFaceView _quadWithStyle:asset:](self, "_quadWithStyle:asset:", [v12 style], self->_currentAsset);
    v21 = [(NTKKaleidoscopeFaceView *)self _isEditOptionFullscreen:v24];
    v22 = 1.0 - a3;
    if (v21)
    {
      a3 = 1.0 - a3;
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

    *&v22 = a3;
    [v18 setAlpha:v22];
    [v18 setOpaque:a3 >= 1.0];
    [v23 setOpaque:1];
    [(CLKUIQuadView *)*p_quadView addQuad:v23];
  }

  else
  {
    if (a6 != 12)
    {
      goto LABEL_12;
    }

    v14 = [v24 asset];
    v15 = [v12 asset];
    p_quadView = &self->_quadView;
    [(CLKUIQuadView *)self->_quadView removeAllQuads];
    [(NSMapTable *)self->_quadPathfinderMapTable removeAllObjects];
    v17 = [(NTKKaleidoscopeFaceView *)self _quadWithStyle:self->_currentStyle asset:v14];
    [v17 setOpaque:1];
    [(CLKUIQuadView *)self->_quadView addQuad:v17];
    v18 = [(NTKKaleidoscopeFaceView *)self _quadWithStyle:self->_currentStyle asset:v15];
    *&v19 = a3;
    [v18 setAlpha:v19];
    v20 = v18;
  }

  [(CLKUIQuadView *)*p_quadView addQuad:v18];

LABEL_12:
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v8 = [(NTKKaleidoscopeFaceView *)self timeView];
  [(NTKKaleidoscopeFaceView *)self _handAlphaForEditMode:a4];
  [(NTKKaleidoscopeFaceView *)self _handAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v8 setAlpha:?];

  v9 = [(NTKKaleidoscopeFaceView *)self contentView];
  [(NTKKaleidoscopeFaceView *)self _contentAlphaForEditMode:a4];
  [(NTKKaleidoscopeFaceView *)self _contentAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v9 setAlpha:?];

  v10 = [(NTKKaleidoscopeFaceView *)self contentView];
  v11 = *&CGAffineTransformIdentity.c;
  v13[0] = *&CGAffineTransformIdentity.a;
  v13[1] = v11;
  v13[2] = *&CGAffineTransformIdentity.tx;
  [v10 setTransform:v13];

  v12 = [(NTKKaleidoscopeFaceView *)self foregroundContainerView];
  [(NTKKaleidoscopeFaceView *)self _complicationAlphaForEditMode:a4];
  [(NTKKaleidoscopeFaceView *)self _complicationAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v12 setAlpha:?];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v10.receiver = self;
  v10.super_class = NTKKaleidoscopeFaceView;
  [(NTKKaleidoscopeFaceView *)&v10 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 15 || a4 == 12)
  {
    v7 = [(NTKKaleidoscopeFaceView *)self contentView];
    NTKAlphaForRubberBandingFraction();
    [v7 setAlpha:?];
    NTKScaleForRubberBandingFraction();
    CGAffineTransformMakeScale(&v9, v8, v8);
    [v7 setTransform:&v9];
  }
}

- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 15 || a3 == 12)
  {
    v7 = [(NTKKaleidoscopeFaceView *)self device];
    if ([v7 deviceCategory] == &dword_0 + 1)
    {
      sub_11B74([(NTKKaleidoscopeFaceView *)self _faceEditingScaleForEditMode:a3 slot:v6], v7);
      v8 = NTKKeylineViewWithCircle();
    }

    else
    {
      v11.receiver = self;
      v11.super_class = NTKKaleidoscopeFaceView;
      v8 = [(NTKKaleidoscopeFaceView *)&v11 _keylineViewForCustomEditMode:a3 slot:v6];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  v7 = [(NTKKaleidoscopeFaceView *)self device];
  v8 = [v7 deviceCategory];

  if (v8 == &dword_0 + 1 && (a3 == 15 || a3 == 12))
  {
    v9 = [(NTKKaleidoscopeFaceView *)self device];
    sub_11B74(v9, v9);

    v10 = [(NTKKaleidoscopeFaceView *)self timeView];
    [v10 center];
    v11 = [(NTKKaleidoscopeFaceView *)self device];
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
    [(NTKKaleidoscopeFaceView *)&v28 _relativeKeylineFrameForCustomEditMode:a3 slot:v6];
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

- (void)_updateForResourceDirectoryChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKKaleidoscopeFaceView;
  [(NTKKaleidoscopeFaceView *)&v4 _updateForResourceDirectoryChange:a3];
  [(NTKKaleidoscopeFaceView *)self _updateUserContent];
  [(NTKKaleidoscopeFaceView *)self reloadSnapshotContentViews];
}

- (id)provideAtlasBacking:(id)a3
{
  v4 = a3;
  v25 = [NSBundle bundleForClass:objc_opt_class()];
  if (![v4 isEqualToString:@"Kaleidoscope-RosetteMask"])
  {
    if (self->_userUuidLuma && self->_userUuidChroma)
    {
      if ([v4 isEqualToString:?])
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

      if ([v4 isEqualToString:self->_userUuidChroma])
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

    v6 = [v25 pathForResource:v4 ofType:@"art"];
    if (v6)
    {
      v22 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v31 = v4;
        v32 = 2112;
        v33 = v6;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "[kaleidoscope] using artwork for %@ at %@", buf, 0x16u);
      }

      v15 = [CLKUIAtlasBacking atlasBackingWithArt:v6 uuid:v4];
    }

    else
    {
      v23 = NTKImageNamed();
      v15 = [CLKUIAtlasBacking atlasBackingWithImage:v23 uuid:v4];
    }

LABEL_26:

    goto LABEL_27;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [(NTKKaleidoscopeFaceView *)self device];
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

        v11 = v4;
        v12 = [NSString stringWithFormat:@"%@%@@2x", v4, *(*(&v26 + 1) + 8 * i)];
        v13 = [v25 pathForResource:v12 ofType:@"art"];

        if (v13)
        {
          v4 = v11;
          v15 = [CLKUIAtlasBacking atlasBackingWithArt:v13 uuid:v11];

          goto LABEL_26;
        }

        v14 = _NTKLoggingObjectForDomain();
        v4 = v11;
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

- (double)_handAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (!a3)
  {
    return 1.0;
  }

  return result;
}

- (double)_contentAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_complicationAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 < 2)
  {
    return 1.0;
  }

  return result;
}

- (float)_crownTurnsForStyle:(unint64_t)a3
{
  v3 = a3 == 3 || a3 == 0;
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
    v3 = [(NTKKaleidoscopeFaceView *)self device];
    v4 = [(NTKKaleidoscopeAssetOption *)NTKKaleidoscopeCustomAssetOption optionWithAsset:1000 forDevice:v3];

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
  v3 = [(NTKKaleidoscopeFaceView *)self resourceDirectory];
  if (v3)
  {
    v4 = [NTKPhotosReader readerForResourceDirectory:v3];
    v5 = [v4 firstObject];
    if (v5)
    {
      v6 = v5;
      if (([(NTKPhoto *)self->_userPhoto isEqualToPhoto:v5]& 1) != 0)
      {
LABEL_16:

        goto LABEL_17;
      }

      v7 = [[NTKCachedPhoto alloc] initWithPhoto:v6];
      [v7 load];
      objc_storeStrong(&self->_userPhoto, v6);
      v8 = [v7 image];
      userImage = self->_userImage;
      self->_userImage = v8;

      v10 = [(NTKPhoto *)self->_userPhoto uuidFromLocalIdentifierAndModificationDate];
      v11 = [v10 stringByAppendingString:@"-l"];
      userUuidLuma = self->_userUuidLuma;
      self->_userUuidLuma = v11;

      v13 = [v10 stringByAppendingString:@"-c"];
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

      v21 = [NTKKaleidoscopePathfinder pathfinderFromDirectory:v3];
      userPathfinder = self->_userPathfinder;
      self->_userPathfinder = v21;

      if (self->_userPathfinder)
      {
LABEL_15:
        v41 = [(NTKKaleidoscopeFaceView *)self _swatchFromUserImage];
        userSwatch = self->_userSwatch;
        self->_userSwatch = v41;

        goto LABEL_16;
      }

      v45 = v7;
      v23 = NTKNewUniqueTeporaryResourceDirectory();
      v24 = +[NSFileManager defaultManager];
      v46 = 0;
      v25 = [v24 copyItemAtPath:v3 toPath:v23 error:&v46];
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

        v29 = [(NTKKaleidoscopeFaceView *)self delegate];
        [v29 faceViewUpdatedResourceDirectory:v23 wantsToTransferOwnership:1];
      }

      else
      {
        v29 = _NTKLoggingObjectForDomain();
        v28 = v43;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_15118(v43, v29);
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

  v6 = [(NTKKaleidoscopeFaceView *)self device];
  sub_11B74(v6, v6);
  v5 = qword_2CF50;

LABEL_12:
  v7 = *p_quadView;

  [(CLKUIQuadView *)v7 setPreferredFramesPerSecond:v5];
}

- (void)_updateRotationForQuadView:(id)a3 time:(double)a4 crownOffset:(double)a5
{
  v7 = fmod(a5 * 60.0 / self->_crownTurnsPerRotation + a4, 120.0);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [a3 quads];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v8);
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

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }
}

- (id)_updatePathForQuadView:(id)a3 time:(double)a4 crownOffset:(double)a5
{
  v8 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = [v8 quads];
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
  v23 = v8;
  v12 = 0;
  v13 = *v26;
  v14 = (a4 + a5 * 1800.0 + floor((a4 + a5 * 1800.0) / 43200.0) * -43200.0) / 43200.0;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v26 != v13)
      {
        objc_enumerationMutation(v9);
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

    v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v11);

  v8 = v23;
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_16:

  return v12;
}

- (void)_updatePathForTime:(double)a3
{
  v6 = [(NTKKaleidoscopeFaceView *)self _updatePathForQuadView:self->_quadView time:a3 crownOffset:self->_crownOffset];
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

- (id)_imageForAsset:(unint64_t)a3
{
  if (a3 == 1000)
  {
    v3 = self->_userImage;
  }

  else
  {
    v4 = [NSString stringWithFormat:@"Kaleidoscope-Asset%02d", (a3 + 1)];
    v3 = NTKImageNamed();
  }

  return v3;
}

- (id)_pathfinderForAsset:(unint64_t)a3
{
  if (a3 != 1000)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [NSString stringWithFormat:@"Kaleidoscope-Asset%02d", (a3 + 1)];
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
    if (a3 > 13)
    {
      if (a3 > 23)
      {
        switch(a3)
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

      switch(a3)
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
          if (a3 - 27 < 6)
          {
            LODWORD(v12) = *"ff&?";
            goto LABEL_37;
          }

          goto LABEL_36;
      }
    }

    else
    {
      if (a3 <= 10)
      {
        switch(a3)
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

      if (a3 == 11)
      {
        LODWORD(v10) = 1057069931;
        goto LABEL_35;
      }

      if (a3 == 12)
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
  v13 = [(NTKKaleidoscopeFaceView *)self _imageForAsset:a3];
  v5 = [NTKKaleidoscopePathfinder pathfinderWithImage:v13];

LABEL_40:

  return v5;
}

- (id)_textureLumaForAsset:(unint64_t)a3
{
  if (a3 == 1000)
  {
    v4 = self->_userTextureLuma;
  }

  else
  {
    v6 = [NSString stringWithFormat:@"Kaleidoscope-Asset%02d-l", (a3 + 1)];
    v7.i64[0] = 8;
    v8.i64[0] = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v4 = [CLKUITexture textureWithProviderDelegate:self uuid:v6 rect:*vbslq_s8(vdupq_lane_s64(vceqq_s64(v8, v7).i64[0], 0), xmmword_1B5B0, xmmword_1B5A0).i64];
  }

  return v4;
}

- (id)_textureChromaForAsset:(unint64_t)a3
{
  if (a3 == 1000)
  {
    v4 = self->_userTextureChroma;
  }

  else
  {
    v6 = [NSString stringWithFormat:@"Kaleidoscope-Asset%02d-c", (a3 + 1)];
    v7.i64[0] = 8;
    v8.i64[0] = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v4 = [CLKUITexture textureWithProviderDelegate:self uuid:v6 rect:*vbslq_s8(vdupq_lane_s64(vceqq_s64(v8, v7).i64[0], 0), xmmword_1B5B0, xmmword_1B5A0).i64];
  }

  return v4;
}

- (id)_quadWithStyle:(unint64_t)a3 asset:(unint64_t)a4
{
  v7 = [NSNumber numberWithInteger:a4];
  [(NSMutableSet *)self->_loadedAssets addObject:v7];
  v8 = [NTKKaleidoscopeQuad quadWithShaderType:qword_1B5C0[a3]];
  v9 = [(NTKKaleidoscopeFaceView *)self _textureLumaForAsset:a4];
  [v8 setPrimaryLumaTexture:v9];

  v10 = [(NTKKaleidoscopeFaceView *)self _textureChromaForAsset:a4];
  [v8 setPrimaryChromaTexture:v10];

  if (a3 == 2)
  {
    v11 = [CLKUITexture textureWithProviderDelegate:self uuid:@"Kaleidoscope-RosetteMask"];
    [v8 setSecondaryTexture:v11];
  }

  v12 = [(NTKKaleidoscopeFaceView *)self device];
  sub_11B74(v12, v12);
  LODWORD(v13) = dword_2CF48;
  [v8 setDialRadius:v13];

  v14 = [(NTKKaleidoscopeFaceView *)self _pathfinderForAsset:a4];
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

- (id)_swatchForAsset:(unint64_t)a3
{
  if (a3 == 1000)
  {
    v3 = self->_userSwatch;
  }

  else
  {
    v4 = a3;
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [NSString stringWithFormat:@"Swatch-Kaleidoscope-Asset%02d", (v4 + 1)];
    v3 = NTKImageNamedFromBundle();
  }

  return v3;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 15)
  {
    return &off_26760;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[NTKKaleidoscopeSwatchMappedImageCache sharedCache];
  if (a4 == 15)
  {
    v12 = v8;
    v13 = [v9 objectForKeyedSubscript:&off_26218];
    v14 = [(NTKKaleidoscopeFaceView *)self resourceDirectory];
    v15 = [NTKKaleidoscopeSwatchMappedImageCache keyForAsset:v13 style:v12 resourceDirectory:v14];
    v16 = [v10 imageForKey:v15];
    if (!v16)
    {
      v19 = [v13 asset];
      v17 = [v12 style];
      +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [v12 swatchStyle]);
      v16 = [(NTKKaleidoscopeFaceView *)self _snapshotWithAsset:v19 style:v17 size:?];
      [v10 setImage:v16 forKey:v15];
    }
  }

  else
  {
    if (a4 == 12)
    {
      v11 = -[NTKKaleidoscopeFaceView _swatchForAsset:](self, "_swatchForAsset:", [v8 asset]);
    }

    else
    {
      v20.receiver = self;
      v20.super_class = NTKKaleidoscopeFaceView;
      v11 = [(NTKKaleidoscopeFaceView *)&v20 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
    }

    v16 = v11;
  }

  return v16;
}

- (id)_snapshotWithAsset:(unint64_t)a3 style:(unint64_t)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  y = CGPointZero.y;
  v11 = [CLKUIQuadView quadViewWithFrame:@"Klei" identifier:CGPointZero.x, y, a5.width, a5.height];
  v12 = [(NTKKaleidoscopeFaceView *)self _quadWithStyle:a4 asset:a3];
  [v12 setOpaque:1];
  [v11 addQuad:v12];
  [(NTKKaleidoscopeFaceView *)self _kaleidoscopeTime];
  v14 = v13;
  [(NTKKaleidoscopeFaceView *)self _updateWithAsset:a3];
  v15 = [(NTKKaleidoscopeFaceView *)self _updatePathForQuadView:v11 time:v14 crownOffset:0.0];
  [(NTKKaleidoscopeFaceView *)self _updateRotationForQuadView:v11 time:v14 crownOffset:0.0];
  v16 = +[UIScreen mainScreen];
  [v16 nativeScale];
  v18 = [v11 snapshotInRect:CGPointZero.x scale:y time:{width, height, v17, v14}];

  return v18;
}

@end