@interface NTKZeusAnalogFaceView
+ (id)_supportedComplicationSlots;
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (BOOL)_fadesComplicationSlot:(id)a3 inEditMode:(int64_t)a4;
- (CGRect)_frameForComplicationDisplayWrapper:(id)a3 inSlot:(id)a4;
- (CGRect)_lowerComplicationFrameForStyle:(unint64_t)a3;
- (CGRect)_upperComplicationFrameForStyle:(unint64_t)a3;
- (NTKZeusAnalogFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_backgroundAlphaForEditMode:(int64_t)a3;
- (double)_handAlphaForEditing:(BOOL)a3;
- (double)_lowerComplicationVerticalOffsetForStyle:(unint64_t)a3;
- (double)_numbersAlphaForEditMode:(int64_t)a3;
- (double)_secondHandAlphaForDensity:(unint64_t)a3 isEditing:(BOOL)a4;
- (double)_verticalPaddingForStatusBar;
- (id)_blancNumeralsColorForEditMode:(int64_t)a3;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_numeralsCompositingFilterForPalette:(id)a3;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)complicationColorForBlancEditMode:(int64_t)a3;
- (id)createFaceColorPalette;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyPaletteToNumerals:(id)a3;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_numeralsPaletteTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5;
- (void)_setStatusBarIconShadowNeeded:(BOOL)a3;
- (void)_unloadSnapshotContentViews;
- (void)_updateDateComplicationPositionIfNecessary;
- (void)nominalAnimationEndForHandView:(id)a3;
- (void)nominalAnimationStart:(id)a3 forHandView:(id)a4;
- (void)overrideAnimationApplier:(double)a3 zRotation:(double)a4 forHandView:(id)a5;
- (void)overrideZRotation:(double)a3 forHandView:(id)a4;
@end

@implementation NTKZeusAnalogFaceView

- (NTKZeusAnalogFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v14.receiver = self;
  v14.super_class = NTKZeusAnalogFaceView;
  v5 = [(NTKZeusAnalogFaceView *)&v14 initWithFaceStyle:a3 forDevice:a4 clientIdentifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(NTKZeusAnalogFaceView *)v5 device];
    v8 = [v7 deviceCategory];

    v9 = [(NTKZeusAnalogFaceView *)v6 device];
    v10 = [v9 isExplorer];

    if ((v10 & 1) != 0 || v8 != &dword_0 + 1)
    {
      v6->_isHandsVisibleInColorEditing = 1;
    }

    origin = CGRectNull.origin;
    size = CGRectNull.size;
    v6->_upperComplicationOverrideFrame.origin = CGRectNull.origin;
    v6->_upperComplicationOverrideFrame.size = size;
    v6->_lowerComplicationOverrideFrame.origin = origin;
    v6->_lowerComplicationOverrideFrame.size = size;
  }

  return v6;
}

- (id)createFaceColorPalette
{
  v2 = objc_alloc_init(NTKZeusAnalogColorPalette);

  return v2;
}

- (void)_loadSnapshotContentViews
{
  v59.receiver = self;
  v59.super_class = NTKZeusAnalogFaceView;
  [(NTKZeusAnalogFaceView *)&v59 _loadSnapshotContentViews];
  v58 = 0.0;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v3 = [(NTKZeusAnalogFaceView *)self device:0];
  sub_14DA4(v3, &v54);

  if (!self->_backgroundView)
  {
    v4 = [NTKZeusAnalogBackgroundView alloc];
    v5 = [(NTKZeusAnalogFaceView *)self device];
    v6 = [(NTKZeusAnalogBackgroundView *)v4 initWithDevice:v5];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v6;

    v8 = [(NTKZeusAnalogFaceView *)self contentView];
    [v8 insertSubview:self->_backgroundView atIndex:0];
  }

  if (!self->_numeralsView)
  {
    [(NTKZeusAnalogFaceView *)self bounds];
    [(NTKZeusAnalogFaceView *)self bounds];
    v9 = [NTKZeusAnalogNumeralsView alloc];
    v10 = [(NTKZeusAnalogFaceView *)self device];
    v11 = [(NTKZeusAnalogFaceView *)self palette];
    v12 = [(NTKZeusAnalogNumeralsView *)v9 initWithDevice:v10 palette:v11 style:self->_style density:self->_density];
    numeralsView = self->_numeralsView;
    self->_numeralsView = v12;

    v14 = sub_11BC0();
    v15 = [(NTKZeusAnalogNumeralsView *)self->_numeralsView layer];
    [v15 setActions:v14];

    v16 = [(NTKZeusAnalogFaceView *)self contentView];
    [v16 addSubview:self->_numeralsView];

    v17 = [NTKZeusAnalogNumeralsView alloc];
    v18 = [(NTKZeusAnalogFaceView *)self device];
    v19 = [(NTKZeusAnalogFaceView *)self palette];
    v20 = [(NTKZeusAnalogNumeralsView *)v17 initWithDevice:v18 palette:v19 style:self->_style density:self->_density];
    numeralsTransitionView = self->_numeralsTransitionView;
    self->_numeralsTransitionView = v20;

    v22 = sub_11BC0();
    v23 = [(NTKZeusAnalogNumeralsView *)self->_numeralsTransitionView layer];
    [v23 setActions:v22];

    [(NTKZeusAnalogNumeralsView *)self->_numeralsTransitionView setAlpha:0.0];
    v24 = [(NTKZeusAnalogFaceView *)self contentView];
    [v24 addSubview:self->_numeralsTransitionView];
  }

  if (!self->_logoUpperView)
  {
    v25 = objc_opt_new();
    logoUpperView = self->_logoUpperView;
    self->_logoUpperView = v25;

    v27 = [NTKZeusAnalogFaceBundle imageWithName:@"ZeusAnalogLogo1"];
    [(UIImageView *)self->_logoUpperView setImage:v27];

    [(NTKZeusAnalogFaceView *)self bounds];
    v28 = *(&v55 + 1);
    v30 = (v29 - *(&v55 + 1)) * 0.5;
    [(NTKZeusAnalogFaceView *)self bounds];
    [(UIImageView *)self->_logoUpperView setFrame:v30, *(&v57 + 1) + v31 * 0.5 - *&v56, v28];
    v32 = [(NTKZeusAnalogFaceView *)self contentView];
    [v32 addSubview:self->_logoUpperView];
  }

  if (!self->_logoLowerView)
  {
    v33 = objc_opt_new();
    logoLowerView = self->_logoLowerView;
    self->_logoLowerView = v33;

    v35 = [NTKZeusAnalogFaceBundle imageWithName:@"ZeusAnalogLogo2"];
    [(UIImageView *)self->_logoLowerView setImage:v35];

    [(NTKZeusAnalogFaceView *)self bounds];
    v36 = *(&v56 + 1);
    v38 = (v37 - *(&v56 + 1)) * 0.5;
    [(UIImageView *)self->_logoUpperView frame];
    [(UIImageView *)self->_logoLowerView setFrame:v38, CGRectGetMaxY(v60) + v58, v36, *&v57];
    v39 = [(NTKZeusAnalogFaceView *)self contentView];
    [v39 addSubview:self->_logoLowerView];
  }

  if (!self->_cornerView)
  {
    v40 = [NTKRoundedCornerOverlayView alloc];
    [(NTKZeusAnalogFaceView *)self bounds];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = [(NTKZeusAnalogFaceView *)self device];
    v50 = [v40 initWithFrame:v49 forDeviceCornerRadius:{v42, v44, v46, v48}];
    cornerView = self->_cornerView;
    self->_cornerView = v50;

    v52 = self->_cornerView;
    v53 = [(NTKZeusAnalogFaceView *)self contentView];
    [(NTKZeusAnalogFaceView *)self insertSubview:v52 aboveSubview:v53];
  }
}

- (void)_unloadSnapshotContentViews
{
  v8.receiver = self;
  v8.super_class = NTKZeusAnalogFaceView;
  [(NTKZeusAnalogFaceView *)&v8 _unloadSnapshotContentViews];
  [(NTKZeusAnalogBackgroundView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  [(UIView *)self->_cornerView removeFromSuperview];
  cornerView = self->_cornerView;
  self->_cornerView = 0;

  [(NTKZeusAnalogNumeralsView *)self->_numeralsView removeFromSuperview];
  numeralsView = self->_numeralsView;
  self->_numeralsView = 0;

  [(UIImageView *)self->_logoUpperView removeFromSuperview];
  logoUpperView = self->_logoUpperView;
  self->_logoUpperView = 0;

  [(UIImageView *)self->_logoLowerView removeFromSuperview];
  logoLowerView = self->_logoLowerView;
  self->_logoLowerView = 0;
}

- (id)_numeralsCompositingFilterForPalette:(id)a3
{
  if (([a3 bleed] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v3 = kCAFilterMultiplyBlendMode;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_applyPaletteToNumerals:(id)a3
{
  v4 = a3;
  v5 = [(NTKZeusAnalogFaceView *)self _numeralsCompositingFilterForPalette:v4];
  numeralsView = self->_numeralsView;
  v7 = *&CGAffineTransformIdentity.c;
  v9[0] = *&CGAffineTransformIdentity.a;
  v9[1] = v7;
  v9[2] = *&CGAffineTransformIdentity.tx;
  [(NTKZeusAnalogNumeralsView *)numeralsView setTransform:v9];
  v8 = [(NTKZeusAnalogNumeralsView *)self->_numeralsView layer];
  [v8 setCompositingFilter:v5];

  [(NTKZeusAnalogNumeralsView *)self->_numeralsView setAlpha:1.0];
  [(NTKZeusAnalogNumeralsView *)self->_numeralsView setPalette:v4];

  [(NTKZeusAnalogNumeralsView *)self->_numeralsView setDensity:self->_density];
  [(NTKZeusAnalogNumeralsView *)self->_numeralsView setStyle:self->_style];
  [(NTKZeusAnalogNumeralsView *)self->_numeralsView setStatusIndicatorVisible:self->_showingStatus];
  [(NTKZeusAnalogNumeralsView *)self->_numeralsTransitionView setAlpha:0.0];
}

- (void)_numeralsPaletteTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(NTKZeusAnalogFaceView *)self _numeralsCompositingFilterForPalette:v9];
  v11 = [(NTKZeusAnalogFaceView *)self _numeralsCompositingFilterForPalette:v8];
  if (a3 >= 0.5)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  if (a3 >= 0.5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  [(NTKZeusAnalogNumeralsView *)self->_numeralsView setPalette:v12];

  v14 = [(NTKZeusAnalogNumeralsView *)self->_numeralsView layer];
  [v14 setCompositingFilter:v13];

  CLKMapFractionIntoRange();
  v16 = v15;
  CLKCompressFraction();
  if (a3 >= 0.5)
  {
    [(NTKZeusAnalogNumeralsView *)self->_numeralsView setAlpha:?];
    CGAffineTransformMakeScale(&v20, v16, v16);
    numeralsView = self->_numeralsView;
    v21 = *&v20.a;
    v22 = *&v20.c;
    v19 = *&v20.tx;
  }

  else
  {
    [(NTKZeusAnalogNumeralsView *)self->_numeralsView setAlpha:1.0 - v17];
    CGAffineTransformMakeScale(&v24, v16, v16);
    numeralsView = self->_numeralsView;
    v21 = *&v24.a;
    v22 = *&v24.c;
    v19 = *&v24.tx;
  }

  v23 = v19;
  [(NTKZeusAnalogNumeralsView *)numeralsView setTransform:&v21];
}

- (double)_lowerComplicationVerticalOffsetForStyle:(unint64_t)a3
{
  v4 = [(NTKZeusAnalogFaceView *)self device];
  sub_14DA4(v4, v7);
  v5 = *&v7[a3 + 9];

  return v5;
}

- (CGRect)_lowerComplicationFrameForStyle:(unint64_t)a3
{
  [(NTKZeusAnalogFaceView *)self _lowerComplicationVerticalOffsetForStyle:a3];
  v5 = v4;
  [(NTKZeusAnalogFaceView *)self bounds];
  v7 = v6 * 0.5;
  [(NTKZeusAnalogFaceView *)self bounds];
  v9 = v5 + v8 * 0.5;
  v10 = [(NTKZeusAnalogFaceView *)self device];
  sub_14DA4(v10, v17);
  v11 = v18;
  v12 = v19;

  v13 = v7 - v11 * 0.5;
  v14 = v9 - v12 * 0.5;
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_upperComplicationFrameForStyle:(unint64_t)a3
{
  v4 = [(NTKZeusAnalogFaceView *)self device];
  [(NTKZeusAnalogFaceView *)self bounds];
  v5 = [(NTKZeusAnalogFaceView *)self device];
  sub_14DA4(v5, v18);

  CLKSizeCenteredAboutPointForDevice();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)_loadLayoutRules
{
  v3 = [(NTKZeusAnalogFaceView *)self device];
  v4 = [(NTKZeusAnalogFaceView *)self optionForCustomEditMode:13 slot:0];
  -[NTKZeusAnalogFaceView _lowerComplicationFrameForStyle:](self, "_lowerComplicationFrameForStyle:", [v4 style]);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  -[NTKZeusAnalogFaceView _upperComplicationFrameForStyle:](self, "_upperComplicationFrameForStyle:", [v4 style]);
  v13 = [NTKComplicationLayoutRule layoutRuleForDevice:v3 withReferenceFrame:1 horizontalLayout:1 verticalLayout:?];
  v14 = [NTKComplicationLayoutRule layoutRuleForDevice:v3 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v6, v8, v10, v12];
  v15 = [(NTKZeusAnalogFaceView *)self complicationLayoutforSlot:NTKComplicationSlotTop];
  [(NTKZeusAnalogFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBottom];
  v20 = v15;
  v22 = v21 = v13;
  v23 = v14;
  v16 = v14;
  v17 = v22;
  v18 = v13;
  v19 = v15;
  NTKEnumerateComplicationStates();
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = NTKComplicationSlotBottom;
  if (([v8 isEqualToString:NTKComplicationSlotBottom] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", NTKComplicationSlotTop))
  {
    if ([v8 isEqualToString:v9])
    {
      v10 = [NTKZeusComplicationBackgroundView alloc];
      v11 = [(NTKZeusAnalogFaceView *)self device];
      v12 = [(NTKZeusComplicationBackgroundView *)v10 initWithDevice:v11];
    }

    else
    {
      v12 = 0;
    }

    v13 = +[NTKZeusComplicationView viewForComplicationType:backgroundView:](NTKZeusComplicationView, "viewForComplicationType:backgroundView:", [v7 complicationType], v12);
    if (![v13 conformsToProtocol:&OBJC_PROTOCOL___NTKZeudleComplicationDisplay])
    {
      goto LABEL_14;
    }

    v14 = v13;
    v21 = [(NTKZeusAnalogFaceView *)self optionForCustomEditMode:13 slot:0];
    [v14 setStyle:{objc_msgSend(v21, "style")}];
    v15 = [(NTKZeusAnalogFaceView *)self palette];
    v16 = [v15 pigmentEditOption];
    v17 = [v16 identifier];
    if ([v17 isEqual:ntk_zeus_blanc])
    {
      v18 = [(NTKZeusAnalogFaceView *)self editing];

      if (v18)
      {
        v19 = [(NTKZeusAnalogFaceView *)self palette];
        [v14 blancEditModeApplyPalette:v19];
LABEL_13:

LABEL_14:
        goto LABEL_15;
      }
    }

    else
    {
    }

    v19 = [(NTKZeusAnalogFaceView *)self palette];
    [v14 applyPalette:v19];
    goto LABEL_13;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (BOOL)_fadesComplicationSlot:(id)a3 inEditMode:(int64_t)a4
{
  v6 = a4 == 13 || a4 == 11;
  if ([a3 isEqualToString:NTKComplicationSlotTop] && a4 == 1)
  {
    return 1;
  }

  return v6;
}

- (void)_updateDateComplicationPositionIfNecessary
{
  [(NTKZeusAnalogFaceView *)self _loadLayoutRules];
  v3 = [(NTKZeusAnalogFaceView *)self delegate];
  [v3 faceViewWantsComplicationKeylineFramesReloaded];
}

+ (id)_supportedComplicationSlots
{
  v4[0] = NTKComplicationSlotBottom;
  v4[1] = NTKComplicationSlotTop;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (CGRect)_frameForComplicationDisplayWrapper:(id)a3 inSlot:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:NTKComplicationSlotTop] && (p_upperComplicationOverrideFrame = &self->_upperComplicationOverrideFrame, !CGRectIsNull(self->_upperComplicationOverrideFrame)) || objc_msgSend(v7, "isEqualToString:", NTKComplicationSlotBottom) && (p_upperComplicationOverrideFrame = &self->_lowerComplicationOverrideFrame, !CGRectIsNull(self->_lowerComplicationOverrideFrame)))
  {
    x = p_upperComplicationOverrideFrame->origin.x;
    y = p_upperComplicationOverrideFrame->origin.y;
    width = p_upperComplicationOverrideFrame->size.width;
    height = p_upperComplicationOverrideFrame->size.height;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = NTKZeusAnalogFaceView;
    [(NTKZeusAnalogFaceView *)&v21 _frameForComplicationDisplayWrapper:v6 inSlot:v7];
    x = v9;
    y = v11;
    width = v13;
    height = v15;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v65.receiver = self;
  v65.super_class = NTKZeusAnalogFaceView;
  [(NTKZeusAnalogFaceView *)&v65 _applyOption:v8 forCustomEditMode:a4 slot:a5];
  v9 = [(NTKZeusAnalogFaceView *)self timeView];
  switch(a4)
  {
    case 10:
      v25 = [(NTKZeusAnalogFaceView *)self palette];
      [(NTKZeusAnalogFaceView *)self _applyPaletteToNumerals:v25];

      logoUpperView = self->_logoUpperView;
      v27 = [(NTKZeusAnalogFaceView *)self palette];
      v28 = [v27 bottomComplication];
      [(UIImageView *)logoUpperView setTintColor:v28];

      logoLowerView = self->_logoLowerView;
      v30 = [(NTKZeusAnalogFaceView *)self palette];
      v31 = [v30 bottomComplication];
      [(UIImageView *)logoLowerView setTintColor:v31];

      v32 = [(NTKZeusAnalogFaceView *)self palette];
      -[NTKZeusAnalogFaceView _setStatusBarIconShadowNeeded:](self, "_setStatusBarIconShadowNeeded:", [v32 wantsStatusBarIconShadow]);

      backgroundView = self->_backgroundView;
      v34 = [(NTKZeusAnalogFaceView *)self palette];
      [(NTKZeusAnalogBackgroundView *)backgroundView applyPalette:v34];

      v35 = [v9 secondHandView];
      v36 = [(NTKZeusAnalogFaceView *)self palette];
      v37 = [v36 secondHand];
      [v35 setColor:v37];

      density = self->_density;
      v39 = [v9 secondHandView];
      [(NTKZeusAnalogFaceView *)self _secondHandAlphaForDensity:density isEditing:0];
      v41 = v40;
      v42 = [(NTKZeusAnalogFaceView *)self palette];
      v43 = [v42 secondHandAlpha];
      [v43 floatValue];
      [v39 setAlpha:v41 * v44];

      v45 = [v9 hourHandView];
      v46 = [(NTKZeusAnalogFaceView *)self palette];
      v47 = [v46 hourHand];
      [v45 setColor:v47];

      v48 = [v9 minuteHandView];
      v49 = [(NTKZeusAnalogFaceView *)self palette];
      v50 = [v49 minuteHand];
      [v48 setColor:v50];

      v51 = [(NTKZeusAnalogFaceView *)self palette];
      v52 = [v51 handInlay];
      [v9 setInlayColor:v52];

      if (self->_isHandsVisibleInColorEditing && [(NTKZeusAnalogFaceView *)self fromEditMode]== &dword_8 + 2)
      {
        [v9 setAlpha:1.0];
      }

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v53 = +[NTKZeusAnalogFaceView _supportedComplicationSlots];
      v54 = [v53 countByEnumeratingWithState:&v61 objects:v66 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = *v62;
        do
        {
          v57 = 0;
          do
          {
            if (*v62 != v56)
            {
              objc_enumerationMutation(v53);
            }

            v58 = [(NTKZeusAnalogFaceView *)self normalComplicationDisplayWrapperForSlot:*(*(&v61 + 1) + 8 * v57)];
            v59 = [v58 display];
            v60 = [(NTKZeusAnalogFaceView *)self palette];
            [v59 applyPalette:v60];

            v57 = v57 + 1;
          }

          while (v55 != v57);
          v55 = [v53 countByEnumeratingWithState:&v61 objects:v66 count:16];
        }

        while (v55);
      }

      break;
    case 11:
      self->_density = [v8 density];
      v15 = [v9 secondHandView];
      [(NTKZeusAnalogFaceView *)self _secondHandAlphaForDensity:self->_density isEditing:self->_isEditing];
      v17 = v16;
      v18 = [(NTKZeusAnalogFaceView *)self palette];
      v19 = [v18 secondHandAlpha];
      [v19 floatValue];
      [v15 setAlpha:v17 * v20];

      v21 = self->_density;
      v22 = [(NTKZeusAnalogFaceView *)self palette];
      [v22 setDensity:v21];

      v23 = [(NTKZeusAnalogFaceView *)self palette];
      v24 = [v23 handInlay];
      [v9 setInlayColor:v24];

      [(NTKZeusAnalogNumeralsView *)self->_numeralsView setDensity:self->_density];
      break;
    case 13:
      v10 = [v8 style];
      self->_style = v10;
      v11 = [(NTKZeusAnalogFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBottom];
      v12 = [v11 display];
      [v12 setStyle:v10];

      origin = CGRectNull.origin;
      size = CGRectNull.size;
      self->_upperComplicationOverrideFrame.origin = CGRectNull.origin;
      self->_upperComplicationOverrideFrame.size = size;
      self->_lowerComplicationOverrideFrame.origin = origin;
      self->_lowerComplicationOverrideFrame.size = size;
      [(NTKZeusAnalogFaceView *)self invalidateComplicationLayout];
      [(NTKZeusAnalogNumeralsView *)self->_numeralsView setStyle:self->_style];
      break;
  }
}

- (void)_configureForEditMode:(int64_t)a3
{
  v13.receiver = self;
  v13.super_class = NTKZeusAnalogFaceView;
  [(NTKZeusAnalogFaceView *)&v13 _configureForEditMode:?];
  self->_isEditing = a3 != 0;
  if (!a3)
  {
    density = self->_density;
    v6 = [(NTKZeusAnalogFaceView *)self timeView];
    v7 = [v6 secondHandView];
    [(NTKZeusAnalogFaceView *)self _secondHandAlphaForDensity:density isEditing:self->_isEditing];
    v9 = v8;
    v10 = [(NTKZeusAnalogFaceView *)self palette];
    v11 = [v10 secondHandAlpha];
    [v11 floatValue];
    [v7 setAlpha:v9 * v12];
  }
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v52.receiver = self;
  v52.super_class = NTKZeusAnalogFaceView;
  [NTKZeusAnalogFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  density = self->_density;
  [(NTKZeusAnalogFaceView *)self _secondHandAlphaForDensity:density isEditing:a4 != 0];
  [(NTKZeusAnalogFaceView *)self _secondHandAlphaForDensity:density isEditing:a5 != 0];
  [(NTKZeusAnalogFaceView *)self _handAlphaForEditing:a4 != 0];
  [(NTKZeusAnalogFaceView *)self _handAlphaForEditing:a5 != 0];
  [(NTKZeusAnalogFaceView *)self _handAlphaForEditing:a4 != 0];
  [(NTKZeusAnalogFaceView *)self _handAlphaForEditing:a5 != 0];
  v10 = [(NTKZeusAnalogFaceView *)self palette];
  [v10 isNoir];

  v11 = [(NTKZeusAnalogFaceView *)self timeView];
  [(NTKZeusAnalogFaceView *)self _secondHandAlphaForDensity:density isEditing:0];
  v13 = v12;
  v14 = [v11 secondHandView];
  CLKInterpolateBetweenFloatsClipped();
  v16 = v13 * v15;
  v17 = [(NTKZeusAnalogFaceView *)self palette];
  v18 = [v17 secondHandAlpha];
  [v18 floatValue];
  [v14 setAlpha:v16 * v19];

  CLKInterpolateBetweenFloatsClipped();
  [v11 setAlpha:?];
  numeralsView = self->_numeralsView;
  CLKInterpolateBetweenFloatsClipped();
  [(NTKZeusAnalogNumeralsView *)numeralsView setAlpha:?];
  v21 = [(NTKZeusAnalogFaceView *)self palette];
  v22 = [v21 pigmentEditOption];
  v23 = [v22 identifier];
  v24 = [v23 isEqual:ntk_zeus_blanc];

  if (v24)
  {
    v25 = self->_numeralsView;
    v26 = [(NTKZeusAnalogFaceView *)self _blancNumeralsColorForEditMode:a4];
    v27 = [(NTKZeusAnalogFaceView *)self _blancNumeralsColorForEditMode:a5];
    v28 = NTKInterpolateBetweenColors();
    [(NTKZeusAnalogNumeralsView *)v25 setTintColor:v28];

    logoUpperView = self->_logoUpperView;
    v30 = [(NTKZeusAnalogFaceView *)self _blancNumeralsColorForEditMode:a4];
    v31 = [(NTKZeusAnalogFaceView *)self _blancNumeralsColorForEditMode:a5];
    v32 = NTKInterpolateBetweenColors();
    [(UIImageView *)logoUpperView setTintColor:v32];

    logoLowerView = self->_logoLowerView;
    v34 = [(NTKZeusAnalogFaceView *)self _blancNumeralsColorForEditMode:a4];
    v35 = [(NTKZeusAnalogFaceView *)self _blancNumeralsColorForEditMode:a5];
    v36 = NTKInterpolateBetweenColors();
    [(UIImageView *)logoLowerView setTintColor:v36];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v37 = +[NTKZeusAnalogFaceView _supportedComplicationSlots];
    v38 = [v37 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v49;
      do
      {
        for (i = 0; i != v39; i = i + 1)
        {
          if (*v49 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = [(NTKZeusAnalogFaceView *)self normalComplicationDisplayWrapperForSlot:*(*(&v48 + 1) + 8 * i)];
          v43 = [v42 display];

          [v43 applyTransitionFraction:a4 fromMode:a5 toMode:a3];
        }

        v39 = [v37 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v39);
    }
  }

  v44 = [(NTKZeusAnalogFaceView *)self contentView];
  [(NTKZeusAnalogFaceView *)self _numbersAlphaForEditMode:a4];
  [(NTKZeusAnalogFaceView *)self _numbersAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v44 setAlpha:?];

  backgroundView = self->_backgroundView;
  [(NTKZeusAnalogFaceView *)self _backgroundAlphaForEditMode:a4];
  [(NTKZeusAnalogFaceView *)self _backgroundAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKZeusAnalogBackgroundView *)backgroundView setAlpha:?];
  if (a3 > 0.5)
  {
    origin = CGRectNull.origin;
    size = CGRectNull.size;
    self->_upperComplicationOverrideFrame.origin = CGRectNull.origin;
    self->_upperComplicationOverrideFrame.size = size;
    self->_lowerComplicationOverrideFrame.origin = origin;
    self->_lowerComplicationOverrideFrame.size = size;
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v118.receiver = self;
  v118.super_class = NTKZeusAnalogFaceView;
  [(NTKZeusAnalogFaceView *)&v118 _applyTransitionFraction:v12 fromOption:v13 toOption:a6 forCustomEditMode:a7 slot:a3];
  switch(a6)
  {
    case 10:
      v31 = [(NTKZeusAnalogFaceView *)self palette];
      v32 = [v31 copy];

      v112 = v12;
      v33 = [v12 pigmentEditOption];
      [v32 setPigmentEditOption:v33];

      v34 = [(NTKZeusAnalogFaceView *)self palette];
      v35 = [v34 copy];

      v111 = v13;
      v36 = [v13 pigmentEditOption];
      [v35 setPigmentEditOption:v36];

      -[NTKZeusAnalogFaceView _setStatusBarIconShadowNeeded:](self, "_setStatusBarIconShadowNeeded:", ([v35 wantsStatusBarIconShadow] | objc_msgSend(v32, "wantsStatusBarIconShadow")) & 1);
      [(NTKZeusAnalogBackgroundView *)self->_backgroundView applyTransitionFraction:v32 fromPalette:v35 toPalette:a3];
      [(NTKZeusAnalogFaceView *)self _numeralsPaletteTransitionFraction:v32 fromPalette:v35 toPalette:a3];
      logoUpperView = self->_logoUpperView;
      v38 = [v32 bottomComplication];
      v39 = [v35 bottomComplication];
      v40 = NTKInterpolateBetweenColors();
      [(UIImageView *)logoUpperView setTintColor:v40];

      logoLowerView = self->_logoLowerView;
      v42 = [v32 bottomComplication];
      v43 = [v35 bottomComplication];
      v44 = NTKInterpolateBetweenColors();
      [(UIImageView *)logoLowerView setTintColor:v44];

      [v32 isNoir];
      [v35 isNoir];
      v45 = NTKEditModeDimmedAlpha;
      CLKInterpolateBetweenFloatsClipped();
      if (v45 <= v46)
      {
        v46 = pow((v46 - v45) / 0.8, 3.0) * 0.8 + 0.2;
      }

      [(NTKZeusAnalogNumeralsView *)self->_numeralsView setAlpha:v46];
      v47 = [(NTKZeusAnalogFaceView *)self timeView];
      v48 = [v47 secondHandView];
      v49 = [v32 secondHand];
      v50 = [v35 secondHand];
      v51 = NTKInterpolateBetweenColors();
      [v48 setColor:v51];

      [(NTKZeusAnalogFaceView *)self _secondHandAlphaForDensity:self->_density isEditing:0];
      v53 = v52;
      v54 = [v47 secondHandView];
      v55 = [v32 secondHandAlpha];
      [v55 floatValue];
      v56 = [v35 secondHandAlpha];
      [v56 floatValue];
      CLKInterpolateBetweenFloatsClipped();
      [v54 setAlpha:v53 * v57];

      v58 = [v47 hourHandView];
      v59 = [v32 hourHand];
      v60 = [v35 hourHand];
      v61 = NTKInterpolateBetweenColors();
      [v58 setColor:v61];

      v62 = [v47 minuteHandView];
      v63 = [v32 minuteHand];
      v64 = [v35 minuteHand];
      v65 = NTKInterpolateBetweenColors();
      [v62 setColor:v65];

      v66 = [v32 handInlay];
      v67 = [v35 handInlay];
      v68 = NTKInterpolateBetweenColors();

      v110 = v47;
      [v47 setInlayColor:v68];
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v69 = +[NTKZeusAnalogFaceView _supportedComplicationSlots];
      v70 = [v69 countByEnumeratingWithState:&v113 objects:v119 count:16];
      if (v70)
      {
        v71 = v70;
        v72 = *v114;
        do
        {
          for (i = 0; i != v71; i = i + 1)
          {
            if (*v114 != v72)
            {
              objc_enumerationMutation(v69);
            }

            v74 = [(NTKZeusAnalogFaceView *)self normalComplicationDisplayWrapperForSlot:*(*(&v113 + 1) + 8 * i)];
            v75 = [v74 display];

            [v75 applyTransitionFraction:v32 fromPalette:v35 toPalette:a3];
          }

          v71 = [v69 countByEnumeratingWithState:&v113 objects:v119 count:16];
        }

        while (v71);
      }

      v13 = v111;
      v12 = v112;
      break;
    case 11:
      v23 = [v12 density];
      v24 = [v13 density];
      if (a3 >= 0.5)
      {
        v76 = (1.0 - (a3 * 2.0 + -1.0)) * -0.1 + 1.0;
        p_numeralsView = &self->_numeralsView;
        [(NTKZeusAnalogNumeralsView *)self->_numeralsView setAlpha:?];
        numeralsView = self->_numeralsView;
        CGAffineTransformMakeScale(&v117, v76, v76);
        [(NTKZeusAnalogNumeralsView *)numeralsView setTransform:&v117];
        [(NTKZeusAnalogNumeralsView *)self->_numeralsView setDensity:v24];
        v78 = [(NTKZeusAnalogFaceView *)self palette];
        v79 = [v78 pigmentEditOption];
        v80 = [v79 identifier];
        v81 = [v80 isEqual:ntk_zeus_blanc];

        if (!v81)
        {
LABEL_22:
          v85 = [(NTKZeusAnalogFaceView *)self timeView];
          v86 = [(NTKZeusAnalogFaceView *)self palette];
          v87 = [v86 handInlayForDensity:v23];
          v88 = [(NTKZeusAnalogFaceView *)self palette];
          v89 = [v88 handInlayForDensity:v24];
          v90 = NTKInterpolateBetweenColors();

          [v85 setInlayColor:v90];
          break;
        }
      }

      else
      {
        p_numeralsView = &self->_numeralsView;
        [(NTKZeusAnalogNumeralsView *)self->_numeralsView setAlpha:1.0 - (a3 + a3)];
        v26 = self->_numeralsView;
        CGAffineTransformMakeScale(&v117, (a3 + a3) * -0.1 + 1.0, (a3 + a3) * -0.1 + 1.0);
        [(NTKZeusAnalogNumeralsView *)v26 setTransform:&v117];
        [(NTKZeusAnalogNumeralsView *)self->_numeralsView setDensity:v23];
        v27 = [(NTKZeusAnalogFaceView *)self palette];
        v28 = [v27 pigmentEditOption];
        v29 = [v28 identifier];
        v30 = [v29 isEqual:ntk_zeus_blanc];

        if ((v30 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v82 = *p_numeralsView;
      v83 = [(NTKZeusAnalogFaceView *)self palette];
      v84 = [v83 editMode];
      [(NTKZeusAnalogNumeralsView *)v82 setTintColor:v84];

      goto LABEL_22;
    case 13:
      v14 = [v12 style];
      v15 = [v13 style];
      if (a3 >= 0.5)
      {
        v91 = (1.0 - (a3 * 2.0 + -1.0)) * -0.1 + 1.0;
        v16 = &self->_numeralsView;
        [(NTKZeusAnalogNumeralsView *)self->_numeralsView setAlpha:?];
        v92 = self->_numeralsView;
        CGAffineTransformMakeScale(&v117, v91, v91);
        [(NTKZeusAnalogNumeralsView *)v92 setTransform:&v117];
        [(NTKZeusAnalogNumeralsView *)self->_numeralsView setStyle:v15];
        v93 = [(NTKZeusAnalogFaceView *)self palette];
        v94 = [v93 pigmentEditOption];
        v95 = [v94 identifier];
        v96 = [v95 isEqual:ntk_zeus_blanc];

        v22 = v15;
        if (!v96)
        {
LABEL_25:
          v100 = [(NTKZeusAnalogFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBottom];
          v101 = [v100 display];
          [v101 setStyle:v22];

          [(NTKZeusAnalogFaceView *)self _upperComplicationFrameForStyle:v14];
          [(NTKZeusAnalogFaceView *)self _upperComplicationFrameForStyle:v15];
          CLKInterpolateBetweenRects();
          self->_upperComplicationOverrideFrame.origin.x = v102;
          self->_upperComplicationOverrideFrame.origin.y = v103;
          self->_upperComplicationOverrideFrame.size.width = v104;
          self->_upperComplicationOverrideFrame.size.height = v105;
          [(NTKZeusAnalogFaceView *)self _lowerComplicationFrameForStyle:v14, *&a3];
          [(NTKZeusAnalogFaceView *)self _lowerComplicationFrameForStyle:v15];
          CLKInterpolateBetweenRects();
          self->_lowerComplicationOverrideFrame.origin.x = v106;
          self->_lowerComplicationOverrideFrame.origin.y = v107;
          self->_lowerComplicationOverrideFrame.size.width = v108;
          self->_lowerComplicationOverrideFrame.size.height = v109;
          [(NTKZeusAnalogFaceView *)self layoutComplicationViews];
          break;
        }
      }

      else
      {
        v16 = &self->_numeralsView;
        [(NTKZeusAnalogNumeralsView *)self->_numeralsView setAlpha:1.0 - (a3 + a3)];
        v17 = self->_numeralsView;
        CGAffineTransformMakeScale(&v117, (a3 + a3) * -0.1 + 1.0, (a3 + a3) * -0.1 + 1.0);
        [(NTKZeusAnalogNumeralsView *)v17 setTransform:&v117];
        [(NTKZeusAnalogNumeralsView *)self->_numeralsView setStyle:v14];
        v18 = [(NTKZeusAnalogFaceView *)self palette];
        v19 = [v18 pigmentEditOption];
        v20 = [v19 identifier];
        v21 = [v20 isEqual:ntk_zeus_blanc];

        v22 = v14;
        if ((v21 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v97 = *v16;
      v98 = [(NTKZeusAnalogFaceView *)self palette];
      v99 = [v98 editMode];
      [(NTKZeusAnalogNumeralsView *)v97 setTintColor:v99];

      goto LABEL_25;
  }
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v14.receiver = self;
  v14.super_class = NTKZeusAnalogFaceView;
  [(NTKZeusAnalogFaceView *)&v14 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 13 || a4 == 11)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v13, 0, sizeof(v13));
    CGAffineTransformMakeScale(&v13, v7, v7);
    v8 = [(NTKZeusAnalogFaceView *)self contentView];
    v12 = v13;
    [v8 setTransform:&v12];

    cornerView = self->_cornerView;
    v12 = v13;
    [(UIView *)cornerView setTransform:&v12];
  }

  if (self->_isHandsVisibleInColorEditing && [(NTKZeusAnalogFaceView *)self fromEditMode]== &dword_8 + 2)
  {
    v10 = [(NTKZeusAnalogFaceView *)self palette];
    v11 = [v10 isNoir];

    if ((v11 & 1) == 0)
    {
      [(NTKZeusAnalogNumeralsView *)self->_numeralsView setAlpha:NTKEditModeDimmedAlpha];
    }
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v16.receiver = self;
  v16.super_class = NTKZeusAnalogFaceView;
  [(NTKZeusAnalogFaceView *)&v16 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 != 1)
  {
    NTKScaleForRubberBandingFraction();
    memset(&v15, 0, sizeof(v15));
    CGAffineTransformMakeScale(&v15, v7, v7);
    NTKAlphaForRubberBandingFraction();
    v9 = v8;
    v10 = [(NTKZeusAnalogFaceView *)self contentView];
    [v10 setAlpha:v9];

    v11 = [(NTKZeusAnalogFaceView *)self contentView];
    v14 = v15;
    [v11 setTransform:&v14];

    cornerView = self->_cornerView;
    v14 = v15;
    [(UIView *)cornerView setTransform:&v14];
    if (a4 == 10 && self->_isHandsVisibleInColorEditing)
    {
      v13 = [(NTKZeusAnalogFaceView *)self timeView];
      v14 = v15;
      [v13 setTransform:&v14];
      [v13 setAlpha:v9];
    }
  }
}

- (double)_secondHandAlphaForDensity:(unint64_t)a3 isEditing:(BOOL)a4
{
  result = 0.0;
  if (a3 == 3)
  {
    return 1.0;
  }

  return result;
}

- (double)_handAlphaForEditing:(BOOL)a3
{
  result = NTKEditModeDimmedAlpha;
  if (!a3)
  {
    return 1.0;
  }

  return result;
}

- (double)_numbersAlphaForEditMode:(int64_t)a3
{
  result = 0.95;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (id)_blancNumeralsColorForEditMode:(int64_t)a3
{
  if (a3 <= 0xD && ((1 << a3) & 0x2802) != 0)
  {
    v4 = [(NTKZeusAnalogFaceView *)self palette];
    v5 = [v4 editMode];
  }

  else
  {
    v4 = [(NTKZeusAnalogFaceView *)self palette];
    v5 = [v4 dial];
  }

  v6 = v5;
  v7 = v5;
  if (a3 > 0xD || ((1 << a3) & 0x2802) == 0)
  {

LABEL_11:
    return v6;
  }

  if (((1 << a3) & 0x2802) != 0)
  {
    goto LABEL_11;
  }

  return v6;
}

- (id)complicationColorForBlancEditMode:(int64_t)a3
{
  v4 = [(NTKZeusAnalogFaceView *)self palette];
  v5 = v4;
  if (a3 == 1)
  {
    [v4 editMode];
  }

  else
  {
    [v4 bottomComplication];
  }
  v6 = ;

  return v6;
}

- (double)_backgroundAlphaForEditMode:(int64_t)a3
{
  v4 = a3 == 11 || a3 == 13 || a3 == 1;
  result = NTKEditModeDimmedAlpha;
  if (!v4)
  {
    return 1.0;
  }

  return result;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  v4 = &off_47F80;
  if (a3 != 13)
  {
    v4 = 0;
  }

  if (a3 == 11)
  {
    return &off_47F68;
  }

  else
  {
    return v4;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!qword_58860)
  {
    v10 = objc_opt_new();
    v11 = qword_58860;
    qword_58860 = v10;
  }

  v12 = [v9 objectForKeyedSubscript:&off_47568];
  v13 = [(NTKZeusAnalogFaceView *)self palette];
  v14 = [(NTKZeusAnalogFaceView *)self palette];
  v15 = [v12 pigmentEditOption];
  [v14 setPigmentEditOption:v15];

  if (a4 == 13)
  {
    v39 = v8;
    v40 = [v13 configuration];
    v41 = [v40 uniqueId];
    v42 = [NSString stringWithFormat:@"%@-%@", v39, v41];

    v21 = [qword_58860 objectForKey:v42];
    if (!v21)
    {
      v21 = [v13 typefaceSwatchImageForStyle:{objc_msgSend(v39, "style")}];
      [qword_58860 setObject:v21 forKey:v42];
    }
  }

  else if (a4 == 11)
  {
    v44 = v8;
    v16 = v8;
    v17 = [v9 objectForKeyedSubscript:&off_47550];
    v18 = [v13 configuration];
    v19 = [v18 uniqueId];
    v20 = [NSString stringWithFormat:@"%@-%@-%@", v16, v17, v19];

    v21 = [qword_58860 objectForKey:v20];
    if (!v21)
    {
      v22 = [NTKZeusAnalogFaceView alloc];
      v23 = [(NTKZeusAnalogFaceView *)self device];
      v24 = [(NTKZeusAnalogFaceView *)v22 initWithFaceStyle:14 forDevice:v23 clientIdentifier:0];

      v25 = [(NTKZeusAnalogFaceView *)self device];
      [v25 screenBounds];
      [(NTKZeusAnalogFaceView *)v24 setFrame:?];

      [(NTKZeusAnalogFaceView *)v24 _loadSnapshotContentViews];
      [(NTKZeusAnalogFaceView *)v24 setOption:v16 forCustomEditMode:11 slot:0];
      [(NTKZeusAnalogFaceView *)v24 setOption:v17 forCustomEditMode:13 slot:0];
      [(NTKZeusAnalogFaceView *)v24 setOption:v12 forCustomEditMode:10 slot:0];
      v26 = NTKIdealizedDate();
      [(NTKZeusAnalogFaceView *)v24 setOverrideDate:v26 duration:0.0];

      v27 = [NTKZeusComplicationView viewForComplicationType:11];
      [v27 applyPalette:v13];
      [v27 setPhaseNumber:90 hemisphere:0];
      [(NTKZeusAnalogFaceView *)v24 addSubview:v27];
      v28 = [(NTKZeusAnalogFaceView *)self device];
      sub_14DA4(v28, v49);
      v29 = v50;

      [(NTKZeusAnalogFaceView *)self bounds];
      v31 = v30 * 0.5;
      [(NTKZeusAnalogFaceView *)self bounds];
      [v27 setCenter:{v31, v29 + v32 * 0.5}];
      v33 = [UIGraphicsImageRenderer alloc];
      [(NTKZeusAnalogFaceView *)v24 bounds];
      v36 = [v33 initWithSize:{v34, v35}];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_14868;
      v46[3] = &unk_45050;
      v47 = v24;
      v48 = v27;
      v37 = v27;
      v38 = v24;
      v21 = [v36 imageWithActions:v46];
      [qword_58860 setObject:v21 forKey:v20];
    }

    v8 = v44;
  }

  else
  {
    v45.receiver = self;
    v45.super_class = NTKZeusAnalogFaceView;
    v21 = [(NTKZeusAnalogFaceView *)&v45 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
  }

  return v21;
}

- (double)_verticalPaddingForStatusBar
{
  v2 = [(NTKZeusAnalogFaceView *)self device];
  CLKValueForDeviceMetrics();
  v4 = v3;

  return v4;
}

- (void)_setStatusBarIconShadowNeeded:(BOOL)a3
{
  if (self->_isStatusBarIconShadowNeeded != a3)
  {
    v7[3] = v3;
    v7[4] = v4;
    self->_isStatusBarIconShadowNeeded = a3;
    objc_initWeak(v7, self);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_14A28;
    v5[3] = &unk_44D80;
    objc_copyWeak(&v6, v7);
    dispatch_async(&_dispatch_main_q, v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(v7);
  }
}

- (void)nominalAnimationStart:(id)a3 forHandView:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(NTKZeusAnalogFaceView *)self timeView];
  v8 = [v7 minuteHandView];

  if (v8 == v6)
  {
    backgroundView = self->_backgroundView;
    [v6 zRotation];
    [(NTKZeusAnalogBackgroundView *)backgroundView applyRotation:?];
    [(NTKZeusAnalogBackgroundView *)self->_backgroundView applyAnimation:v10];
  }
}

- (void)nominalAnimationEndForHandView:(id)a3
{
  v4 = a3;
  v5 = [(NTKZeusAnalogFaceView *)self timeView];
  v6 = [v5 minuteHandView];

  if (v6 == v4)
  {
    backgroundView = self->_backgroundView;

    [(NTKZeusAnalogBackgroundView *)backgroundView cancelAnimation];
  }
}

- (void)overrideZRotation:(double)a3 forHandView:(id)a4
{
  v6 = a4;
  v7 = [(NTKZeusAnalogFaceView *)self timeView];
  v8 = [v7 minuteHandView];

  if (v8 == v6)
  {
    backgroundView = self->_backgroundView;

    [(NTKZeusAnalogBackgroundView *)backgroundView applyRotation:a3];
  }
}

- (void)overrideAnimationApplier:(double)a3 zRotation:(double)a4 forHandView:(id)a5
{
  v7 = a5;
  v8 = [(NTKZeusAnalogFaceView *)self timeView];
  v9 = [v8 minuteHandView];

  if (v9 == v7)
  {
    backgroundView = self->_backgroundView;

    [(NTKZeusAnalogBackgroundView *)backgroundView applyRotation:a4];
  }
}

@end