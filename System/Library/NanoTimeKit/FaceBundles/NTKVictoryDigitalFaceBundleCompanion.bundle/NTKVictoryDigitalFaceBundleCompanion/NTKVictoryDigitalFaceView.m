@interface NTKVictoryDigitalFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
+ (int64_t)uiSensitivity;
- (BOOL)_wantsStatusBarIconShadow;
- (CGRect)_keylineFrameForComplicationSlot:(id)a3 selected:(BOOL)a4;
- (CGRect)_timeViewFrame;
- (NTKVictoryDigitalFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_bottomComplicationAlphaForEditMode:(int64_t)a3;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_keylineEdgeGapForState:(int64_t)a3;
- (double)_keylinePaddingForState:(int64_t)a3;
- (double)_logoPlatterAlphaForEditMode:(int64_t)a3;
- (double)_logoPlatterXOffsetForEditMode:(int64_t)a3;
- (double)_timeAlphaForEditMode:(int64_t)a3;
- (id)_additionalPrelaunchApplicationIdentifiers;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (int64_t)_keylineStyleForComplicationSlot:(id)a3;
- (int64_t)_utilitySlotForSlot:(id)a3;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyColor:(id)a3 platterColor:(id)a4 toComplicationView:(id)a5 slot:(id)a6;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyPopAnimationWithFraction:(double)a3;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_logoTapped;
- (void)_positionLogoPlatterView;
- (void)_prepareForEditing;
- (void)_setupLogoViews;
- (void)_unloadSnapshotContentViews;
- (void)layoutSubviews;
- (void)updateComplicationWithPalette:(id)a3;
@end

@implementation NTKVictoryDigitalFaceView

+ (int64_t)uiSensitivity
{
  v2 = +[CLKRenderingContext sharedRenderingContext];
  v3 = [v2 device];
  v4 = NTKSensitivityForVictoryFaces();

  return v4;
}

- (NTKVictoryDigitalFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v28.receiver = self;
  v28.super_class = NTKVictoryDigitalFaceView;
  v9 = [(NTKVictoryDigitalFaceView *)&v28 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  v10 = v9;
  if (v9)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    v11 = [(NTKVictoryDigitalFaceView *)v9 device];
    sub_4444(v11, &v19);

    v12 = [[NTKUtilityComplicationFactory alloc] initForDevice:v8];
    utilityComplicationFactory = v10->_utilityComplicationFactory;
    v10->_utilityComplicationFactory = v12;

    [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setSelectedKeylineHeight:*&v23];
    [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setBottomCenterLayout:3];
    [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setMaxNormalLongWidth:*(&v23 + 1)];
    [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setScreenEdgeInsets:0.0, 0.0, *&v24, 0.0];
    v14 = [(NTKVictoryDigitalFaceView *)v10 device];
    NTKCircularMediumComplicationDiameter();
    v16 = v15 * 0.5;

    v17 = v16 + *&v20;
    v10->_logoPlatterCenter.x = v16 + *&v19;
    v10->_logoPlatterCenter.y = v17;
  }

  return v10;
}

- (id)createFaceColorPalette
{
  v2 = [[NTKVictoryDigitalColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)_loadSnapshotContentViews
{
  v3 = [UIView alloc];
  v4 = [(NTKVictoryDigitalFaceView *)self device];
  [v4 screenBounds];
  v5 = [v3 initWithFrame:?];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v5;

  v7 = [(NTKVictoryDigitalFaceView *)self contentView];
  [v7 addSubview:self->_backgroundView];

  v8 = [NTKVictoryDigitalTimeView alloc];
  v9 = [(NTKVictoryDigitalFaceView *)self device];
  v10 = [(NTKVictoryDigitalTimeView *)v8 initForDevice:v9];
  [(NTKVictoryDigitalFaceView *)self setTimeView:v10];

  v11 = [(NTKVictoryDigitalFaceView *)self timeView];
  [v11 setDelegate:self];

  v12 = [(NTKVictoryDigitalFaceView *)self contentView];
  v13 = [(NTKVictoryDigitalFaceView *)self timeView];
  [v12 addSubview:v13];

  [(NTKVictoryDigitalFaceView *)self _setupLogoViews];
  [(NTKVictoryDigitalFaceView *)self _updateImageToBlur];

  [(NTKVictoryDigitalFaceView *)self setNeedsLayout];
}

- (void)_unloadSnapshotContentViews
{
  [(UIView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  v4 = [(NTKVictoryDigitalFaceView *)self timeView];
  [v4 setDelegate:0];

  v5 = [(NTKVictoryDigitalFaceView *)self timeView];
  [v5 removeFromSuperview];

  [(NTKVictoryDigitalFaceView *)self setTimeView:0];
  [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView removeFromSuperview];
  logoWrapperView = self->_logoWrapperView;
  self->_logoWrapperView = 0;
}

- (void)_setupLogoViews
{
  v3 = [NTKComplicationDisplayWrapperView alloc];
  v4 = [v3 initWithFamily:CLKComplicationFamilyCircularMedium];
  logoWrapperView = self->_logoWrapperView;
  self->_logoWrapperView = v4;

  v6 = [(NTKVictoryDigitalFaceView *)self device];
  NTKCircularMediumComplicationDiameter();
  v8 = v7;

  [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView setBounds:0.0, 0.0, v8, v8];
  v9 = [NTKVictoryDigitalFaceBundle imageWithName:@"victoryNTK-complication-logo"];
  v13 = [CLKImageProvider imageProviderWithOnePieceImage:v9];

  v10 = [CLKComplicationTemplateCircularMediumSimpleImage templateWithImageProvider:v13];
  [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView setComplicationTemplate:v10 reason:0 animation:0];
  v11 = [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView display];
  [(NTKVictoryDigitalFaceView *)self _configureComplicationView:v11 forSlot:0];

  [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView setTapEnabled:1];
  [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView addTarget:self action:"_logoTapped" forControlEvents:64];
  v12 = [(NTKVictoryDigitalFaceView *)self foregroundContainerView];
  [v12 addSubview:self->_logoWrapperView];
}

- (void)_logoTapped
{
  v3 = [(NTKVictoryDigitalFaceView *)self delegate];
  [NTKVictoryAppLauncher attemptLaunchWithDelegate:v3];

  logoWrapperView = self->_logoWrapperView;
  [(NTKComplicationDisplayWrapperView *)logoWrapperView bounds];
  [(NTKComplicationDisplayWrapperView *)logoWrapperView convertRect:self toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(NTKVictoryDigitalFaceView *)self delegate];
  [v13 faceViewRequestedLaunchFromRect:{v6, v8, v10, v12}];
}

- (id)_additionalPrelaunchApplicationIdentifiers
{
  v2 = +[NTKVictoryAppLauncher prelaunchApplicationIdentifiers];
  v3 = [NSOrderedSet orderedSetWithSet:v2];

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKVictoryDigitalFaceView;
  [(NTKVictoryDigitalFaceView *)&v4 layoutSubviews];
  v3 = [(NTKVictoryDigitalFaceView *)self timeView];
  [(NTKVictoryDigitalFaceView *)self _timeViewFrame];
  [v3 ntk_setBoundsAndPositionFromFrame:?];

  [(NTKVictoryDigitalFaceView *)self _positionLogoPlatterView];
}

- (void)_positionLogoPlatterView
{
  [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView setCenter:self->_logoPlatterCenter.x + self->_currentLogoPlatterXOffset, self->_logoPlatterCenter.y];
  v3 = [(NTKVictoryDigitalFaceView *)self device];
  sub_4444(v3, v5);
  v4[0] = v5[6];
  v4[1] = v5[7];
  v4[2] = v5[8];
  [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView setContentTransform:v4];
}

- (BOOL)_wantsStatusBarIconShadow
{
  v2 = [(NTKVictoryDigitalFaceView *)self palette];
  v3 = [v2 background];
  v4 = CLKIsBlackColor();

  return v4 ^ 1;
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v14 = a3;
  v7 = [(NTKVictoryDigitalFaceView *)self timeView];
  if (a4 == 10)
  {
    v8 = [(NTKVictoryDigitalFaceView *)self palette];
    v9 = [v8 background];
    [(UIView *)self->_backgroundView setBackgroundColor:v9];

    v10 = [(NTKVictoryDigitalFaceView *)self palette];
    [v7 setColorPalette:v10];

    v11 = [(NTKVictoryDigitalFaceView *)self palette];
    [(NTKVictoryDigitalFaceView *)self updateComplicationWithPalette:v11];

    v12 = [(NTKVictoryDigitalFaceView *)self delegate];
    [v12 faceViewDidChangeWantsStatusBarIconShadow];
  }

  else if (a4 == 13)
  {
    [v7 setStyle:{objc_msgSend(v14, "style")}];
  }

  v13 = [(NTKVictoryDigitalFaceView *)self timeView];
  [(NTKVictoryDigitalFaceView *)self _timeViewFrame];
  [v13 ntk_setBoundsAndPositionFromFrame:?];
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v17 = a4;
  v11 = a5;
  v12 = [(NTKVictoryDigitalFaceView *)self timeView];
  if (a6 == 10)
  {
    v13 = [(NTKVictoryDigitalFaceView *)self interpolatedColorPalette];
    v14 = [v13 background];
    [(UIView *)self->_backgroundView setBackgroundColor:v14];

    v15 = [(NTKVictoryDigitalFaceView *)self interpolatedColorPalette];
    [v12 setColorPalette:v15];

    v16 = [(NTKVictoryDigitalFaceView *)self interpolatedColorPalette];
    [(NTKVictoryDigitalFaceView *)self updateComplicationWithPalette:v16];

    [(NTKVictoryDigitalFaceView *)self _applyPopAnimationWithFraction:a3];
  }

  else if (a6 == 13)
  {
    [v12 applyTransitionFraction:objc_msgSend(v17 fromStyle:"style") toStyle:{objc_msgSend(v11, "style"), a3}];
  }
}

- (void)_applyPopAnimationWithFraction:(double)a3
{
  v13 = [(NTKVictoryDigitalFaceView *)self timeView];
  [v13 applyPopAnimationTransitionFraction:a3];
  v19[0] = NTKComplicationSlot1;
  v19[1] = NTKComplicationSlot2;
  v19[2] = NTKComplicationSlotBottom;
  v5 = [NSArray arrayWithObjects:v19 count:3];
  NTKVictoryTransitionTimingFunction();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_25E8;
  v12 = v16[3] = &unk_10420;
  v17 = v12;
  v18 = a3;
  v6 = objc_retainBlock(v16);
  for (i = 0; i != 4; ++i)
  {
    v8 = (v6[2])(v6, flt_EB70[i]);
    if (i)
    {
      v9 = [v5 objectAtIndex:i - 1];
      v10 = [(NTKVictoryDigitalFaceView *)self normalComplicationDisplayWrapperForSlot:v9];
      v11 = [v10 display];
    }

    else
    {
      v11 = [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView display];
    }

    CGAffineTransformMakeScale(&v15, v8 * 0.15 + 0.85, v8 * 0.15 + 0.85);
    v14 = v15;
    [v11 setTransform:&v14];
  }
}

- (void)updateComplicationWithPalette:(id)a3
{
  v4 = a3;
  v5 = [v4 complication];
  v6 = [v4 complicationPlatter];
  v7 = [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView display];
  [(NTKVictoryDigitalFaceView *)self _applyColor:v5 platterColor:v6 toComplicationView:v7 slot:0];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_2720;
  v9[3] = &unk_10448;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [(NTKVictoryDigitalFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v9];
}

- (void)_applyColor:(id)a3 platterColor:(id)a4 toComplicationView:(id)a5 slot:(id)a6
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = v9;
    [v10 setForegroundColor:v11];
    [v10 setPlatterColor:v8];
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v16.receiver = self;
  v16.super_class = NTKVictoryDigitalFaceView;
  [(NTKVictoryDigitalFaceView *)&v16 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4)
  {
    NTKScaleForRubberBandingFraction();
    v8 = v7;
    NTKAlphaForRubberBandingFraction();
    v10 = v9;
    memset(&v15, 0, sizeof(v15));
    CGAffineTransformMakeScale(&v15, v8, v8);
    if (a4 == 10)
    {
      v13 = v15;
      [(NTKVictoryDigitalFaceView *)self setTransform:&v13];
      [(NTKVictoryDigitalFaceView *)self setAlpha:v10];
    }

    else if (a4 == 13)
    {
      v14 = v15;
      v11 = [(NTKVictoryDigitalFaceView *)self timeView];
      v13 = v14;
      [v11 setTransform:&v13];

      v12 = [(NTKVictoryDigitalFaceView *)self timeView];
      [v12 setAlpha:v10];
    }
  }
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v15.receiver = self;
  v15.super_class = NTKVictoryDigitalFaceView;
  [(NTKVictoryDigitalFaceView *)&v15 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 13)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v14, 0, sizeof(v14));
    CGAffineTransformMakeScale(&v14, v11, v11);
    v10 = [(NTKVictoryDigitalFaceView *)self timeView];
  }

  else
  {
    if (a4 != 10)
    {
      return;
    }

    NTKLargeElementScaleForBreathingFraction();
    memset(&v14, 0, sizeof(v14));
    CGAffineTransformMakeScale(&v14, v7, v7);
    v8 = [(NTKVictoryDigitalFaceView *)self foregroundContainerView];
    v13 = v14;
    [v8 setTransform:&v13];

    v9 = [(NTKVictoryDigitalFaceView *)self timeView];
    v13 = v14;
    [v9 setTransform:&v13];

    v10 = [(NTKVictoryDigitalFaceView *)self complicationContainerView];
  }

  v12 = v10;
  v13 = v14;
  [v10 setTransform:&v13];
}

- (void)_prepareForEditing
{
  v4.receiver = self;
  v4.super_class = NTKVictoryDigitalFaceView;
  [(NTKVictoryDigitalFaceView *)&v4 _prepareForEditing];
  v3 = [(NTKVictoryDigitalFaceView *)self timeView];
  [v3 willBeginEditing];
}

- (void)_cleanupAfterEditing
{
  v13.receiver = self;
  v13.super_class = NTKVictoryDigitalFaceView;
  [(NTKVictoryDigitalFaceView *)&v13 _cleanupAfterEditing];
  v3 = [(NTKVictoryDigitalFaceView *)self foregroundContainerView];
  v8 = *&CGAffineTransformIdentity.c;
  v10 = *&CGAffineTransformIdentity.a;
  v9 = v10;
  v11 = v8;
  v12 = *&CGAffineTransformIdentity.tx;
  v7 = v12;
  [v3 setTransform:&v10];

  v4 = [(NTKVictoryDigitalFaceView *)self foregroundContainerView];
  [v4 setAlpha:1.0];

  v5 = [(NTKVictoryDigitalFaceView *)self timeView];
  v10 = v9;
  v11 = v8;
  v12 = v7;
  [v5 setTransform:&v10];

  v6 = [(NTKVictoryDigitalFaceView *)self timeView];
  [v6 setAlpha:1.0];
}

- (CGRect)_timeViewFrame
{
  v3 = [(NTKVictoryDigitalFaceView *)self foregroundContainerView];
  [v3 bounds];
  v5 = v4;

  v6 = [(NTKVictoryDigitalFaceView *)self timeView];
  [v6 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
  v8 = v7;
  v10 = v9;

  v11 = [(NTKVictoryDigitalFaceView *)self device];
  sub_4444(v11, v17);
  v12 = v18;

  v13 = v5 - v8;
  v14 = v12;
  v15 = v8;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v22.receiver = self;
  v22.super_class = NTKVictoryDigitalFaceView;
  [NTKVictoryDigitalFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKVictoryDigitalFaceView *)self _timeAlphaForEditMode:a4];
  [(NTKVictoryDigitalFaceView *)self _timeAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  v10 = [(NTKVictoryDigitalFaceView *)self timeView];
  [v10 setAlpha:v9];

  [(NTKVictoryDigitalFaceView *)self _complicationAlphaForEditMode:a4];
  [(NTKVictoryDigitalFaceView *)self _complicationAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  v13 = [(NTKVictoryDigitalFaceView *)self foregroundContainerView];
  [v13 setAlpha:v12];

  v14 = [(NTKVictoryDigitalFaceView *)self device];
  v15 = [v14 deviceCategory];

  if (v15 == &dword_0 + 1)
  {
    [(NTKVictoryDigitalFaceView *)self _bottomComplicationAlphaForEditMode:a4];
    [(NTKVictoryDigitalFaceView *)self _bottomComplicationAlphaForEditMode:a5];
    CLKInterpolateBetweenFloatsClipped();
    v17 = v16;
    v18 = [(NTKVictoryDigitalFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBottom];
    v19 = [v18 display];
    [v19 setAlpha:v17];
  }

  [(NTKVictoryDigitalFaceView *)self _logoPlatterAlphaForEditMode:a4];
  [(NTKVictoryDigitalFaceView *)self _logoPlatterAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView setAlpha:?];
  [(NTKVictoryDigitalFaceView *)self _logoPlatterXOffsetForEditMode:a4];
  [(NTKVictoryDigitalFaceView *)self _logoPlatterXOffsetForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  self->_currentLogoPlatterXOffset = v20;
  [(NTKVictoryDigitalFaceView *)self _positionLogoPlatterView];
  v21 = [(NTKVictoryDigitalFaceView *)self timeView];
  [v21 clearEditingTransitions];
}

- (double)_timeAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_bottomComplicationAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 10)
  {
    return 1.0;
  }

  return result;
}

- (double)_logoPlatterXOffsetForEditMode:(int64_t)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v3 = [(NTKVictoryDigitalFaceView *)self device];
  sub_4444(v3, &v6);
  v4 = *(&v6 + 1);

  return v4;
}

- (double)_logoPlatterAlphaForEditMode:(int64_t)a3
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
  if (a3 != 13)
  {
    return 1.0;
  }

  return result;
}

- (CGRect)_keylineFrameForComplicationSlot:(id)a3 selected:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = NTKVictoryDigitalFaceView;
  [(NTKVictoryDigitalFaceView *)&v8 _keylineFrameForComplicationSlot:a3 selected:0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (int64_t)_keylineStyleForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKVictoryDigitalFaceView *)self device];
  if ([v5 deviceCategory] != &dword_0 + 1)
  {
    if ([v4 isEqualToString:NTKComplicationSlot1])
    {
    }

    else
    {
      v7 = [v4 isEqualToString:NTKComplicationSlot2];

      if ((v7 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v6 = &dword_0 + 1;
    goto LABEL_8;
  }

LABEL_3:
  v9.receiver = self;
  v9.super_class = NTKVictoryDigitalFaceView;
  v6 = [(NTKVictoryDigitalFaceView *)&v9 _keylineStyleForComplicationSlot:v4];
LABEL_8:

  return v6;
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v9 = NTKComplicationSlotBottom;
  v10 = a5;
  if ([v10 isEqual:v9])
  {
    v11 = [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory newViewForComplication:v8 family:a4 forSlot:[(NTKVictoryDigitalFaceView *)self _utilitySlotForSlot:v10]];
  }

  else
  {
    v11 = +[NTKCircularComplicationView mediumViewForComplicationType:](NTKCircularComplicationView, "mediumViewForComplicationType:", [v8 complicationType]);
  }

  v12 = v11;
  [(NTKVictoryDigitalFaceView *)self _configureComplicationView:v11 forSlot:v10];

  return v12;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:NTKComplicationSlotBottom])
  {
    v21.receiver = self;
    v21.super_class = NTKVictoryDigitalFaceView;
    [(NTKVictoryDigitalFaceView *)&v21 _configureComplicationView:v6 forSlot:v7];
    v8 = v6;
    v9 = [(NTKVictoryDigitalFaceView *)self palette];
    v10 = [v9 complication];
    [v8 setForegroundColor:v10];

    v11 = [(NTKVictoryDigitalFaceView *)self palette];
    v12 = [v11 complicationPlatter];
    [v8 setPlatterColor:v12];

    [v8 setForegroundAlpha:1.0];
    [v8 setForegroundImageAlpha:1.0];
    v13 = [(NTKVictoryDigitalFaceView *)self device];
    [v8 setShouldUseBackgroundPlatter:{objc_msgSend(v13, "deviceCategory") == &dword_0 + 1}];

    [v8 setAlwaysEnforcePlatterInset:1];
    [v8 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", -[NTKVictoryDigitalFaceView _utilitySlotForSlot:](self, "_utilitySlotForSlot:", v7))}];
    v14 = [(NTKVictoryDigitalFaceView *)self device];
    v15 = [v14 sizeClass];

    if (v15 == &dword_0 + 3)
    {
      [v8 setFontSize:14.5];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v6;
      [v16 setUsesMediumLayout:1];
      v17 = [(NTKVictoryDigitalFaceView *)self palette];
      v18 = [v17 complication];
      [v16 setForegroundColor:v18];

      v19 = [(NTKVictoryDigitalFaceView *)self palette];
      v20 = [v19 complicationPlatter];
      [v16 setPlatterColor:v20];
    }
  }
}

- (int64_t)_utilitySlotForSlot:(id)a3
{
  if ([a3 isEqualToString:NTKComplicationSlotBottom])
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

- (void)_loadLayoutRules
{
  [(NTKVictoryDigitalFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v15[0] = NTKComplicationSlot1;
  v15[1] = NTKComplicationSlot2;
  v14 = [NSArray arrayWithObjects:v15 count:2];
  v11 = v14;
  NTKEnumerateComplicationStates();
  v12 = NTKComplicationSlotBottom;
  v13 = [(NTKVictoryDigitalFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBottom];
  [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory configureComplicationLayout:v13 forSlot:[(NTKVictoryDigitalFaceView *)self _utilitySlotForSlot:v12] withBounds:v4, v6, v8, v10];
}

- (double)_keylineEdgeGapForState:(int64_t)a3
{
  v3 = 0.0;
  if ((a3 - 2) >= 2)
  {
    if (a3 == 1)
    {
      v4 = [(NTKVictoryDigitalFaceView *)self device];
      sub_4444(v4, &v6);
      v3 = *(&v6 + 1);
    }

    else
    {
      v4 = [(NTKVictoryDigitalFaceView *)self device];
      sub_4444(v4, v7);
      v3 = v7[0];
    }
  }

  return v3;
}

- (double)_keylinePaddingForState:(int64_t)a3
{
  result = 0.0;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    NTKKeylineWidth();
    return v4 + 2.0;
  }

  return result;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 13)
  {
    return &off_11070;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = v8;
  if (a4 == 13)
  {
    v10 = v8;
    v11 = [a5 objectForKeyedSubscript:&off_10B70];
    if (!qword_16DC8)
    {
      v12 = objc_opt_new();
      v13 = qword_16DC8;
      qword_16DC8 = v12;
    }

    v14 = [NSString stringWithFormat:@"%@-%@", v10, v11];
    v15 = [qword_16DC8 objectForKey:v14];
    if (!v15)
    {
      v16 = [v10 style];
      v17 = &stru_107B0;
      v18 = @"Italic-Fill";
      v19 = @"Italic-Fill";
      v20 = 1;
      if (v16 == (&dword_0 + 3))
      {
        v17 = @"Italic-Fill";
      }

      if (v16 == &dword_4)
      {
        v20 = 0;
        v17 = @"Italic-HalfFill";
      }

      else
      {
        v19 = 0;
      }

      if (v16 == (&dword_4 + 1))
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }

      if (v16 != (&dword_4 + 1))
      {
        v18 = v19;
      }

      v41 = v18;
      if (v16 == (&dword_4 + 1))
      {
        v22 = @"Italic-Outline";
      }

      else
      {
        v22 = v17;
      }

      v23 = [@"Swatch-VictoryDigital-" stringByAppendingString:v22];
      v24 = [(NTKVictoryDigitalFaceView *)self faceColorPalette];
      v25 = [v24 copy];

      v26 = [v11 pigmentEditOption];
      [v25 setPigmentEditOption:v26];

      v27 = [v25 digits];
      v43 = v23;
      v28 = [NTKVictoryDigitalFaceBundle imageWithName:v23];
      v42 = v27;
      v29 = [v28 _flatImageWithColor:v27];

      if (v21)
      {
        v30 = 0;
        v31 = 0;
      }

      else
      {
        v32 = [@"Swatch-VictoryDigital-" stringByAppendingString:v41];
        v33 = [v25 digitsOutlineBackground];
        v31 = v32;
        v34 = [NTKVictoryDigitalFaceBundle imageWithName:v32];
        v30 = [v34 _flatImageWithColor:v33];
      }

      v35 = [UIGraphicsImageRenderer alloc];
      [v29 size];
      v36 = [v35 initWithSize:?];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_3CDC;
      v45[3] = &unk_10498;
      v46 = v25;
      v47 = v30;
      v48 = v29;
      v37 = v29;
      v38 = v30;
      v39 = v25;
      v15 = [v36 imageWithActions:v45];
      [qword_16DC8 setObject:v15 forKey:v14];
    }
  }

  else
  {
    v44.receiver = self;
    v44.super_class = NTKVictoryDigitalFaceView;
    v15 = [(NTKVictoryDigitalFaceView *)&v44 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:a5];
  }

  return v15;
}

@end