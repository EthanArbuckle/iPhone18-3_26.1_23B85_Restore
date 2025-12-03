@interface NTKZeusAnalogFaceView
+ (id)_supportedComplicationSlots;
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (BOOL)_fadesComplicationSlot:(id)slot inEditMode:(int64_t)mode;
- (CGRect)_frameForComplicationDisplayWrapper:(id)wrapper inSlot:(id)slot;
- (CGRect)_lowerComplicationFrameForStyle:(unint64_t)style;
- (CGRect)_upperComplicationFrameForStyle:(unint64_t)style;
- (NTKZeusAnalogFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_backgroundAlphaForEditMode:(int64_t)mode;
- (double)_handAlphaForEditing:(BOOL)editing;
- (double)_lowerComplicationVerticalOffsetForStyle:(unint64_t)style;
- (double)_numbersAlphaForEditMode:(int64_t)mode;
- (double)_secondHandAlphaForDensity:(unint64_t)density isEditing:(BOOL)editing;
- (double)_verticalPaddingForStatusBar;
- (id)_blancNumeralsColorForEditMode:(int64_t)mode;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_numeralsCompositingFilterForPalette:(id)palette;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)complicationColorForBlancEditMode:(int64_t)mode;
- (id)createFaceColorPalette;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyPaletteToNumerals:(id)numerals;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_numeralsPaletteTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette;
- (void)_setStatusBarIconShadowNeeded:(BOOL)needed;
- (void)_unloadSnapshotContentViews;
- (void)_updateDateComplicationPositionIfNecessary;
- (void)nominalAnimationEndForHandView:(id)view;
- (void)nominalAnimationStart:(id)start forHandView:(id)view;
- (void)overrideAnimationApplier:(double)applier zRotation:(double)rotation forHandView:(id)view;
- (void)overrideZRotation:(double)rotation forHandView:(id)view;
@end

@implementation NTKZeusAnalogFaceView

- (NTKZeusAnalogFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v14.receiver = self;
  v14.super_class = NTKZeusAnalogFaceView;
  v5 = [(NTKZeusAnalogFaceView *)&v14 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
  v6 = v5;
  if (v5)
  {
    device = [(NTKZeusAnalogFaceView *)v5 device];
    deviceCategory = [device deviceCategory];

    device2 = [(NTKZeusAnalogFaceView *)v6 device];
    isExplorer = [device2 isExplorer];

    if ((isExplorer & 1) != 0 || deviceCategory != &dword_0 + 1)
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
    device = [(NTKZeusAnalogFaceView *)self device];
    v6 = [(NTKZeusAnalogBackgroundView *)v4 initWithDevice:device];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v6;

    contentView = [(NTKZeusAnalogFaceView *)self contentView];
    [contentView insertSubview:self->_backgroundView atIndex:0];
  }

  if (!self->_numeralsView)
  {
    [(NTKZeusAnalogFaceView *)self bounds];
    [(NTKZeusAnalogFaceView *)self bounds];
    v9 = [NTKZeusAnalogNumeralsView alloc];
    device2 = [(NTKZeusAnalogFaceView *)self device];
    palette = [(NTKZeusAnalogFaceView *)self palette];
    v12 = [(NTKZeusAnalogNumeralsView *)v9 initWithDevice:device2 palette:palette style:self->_style density:self->_density];
    numeralsView = self->_numeralsView;
    self->_numeralsView = v12;

    v14 = sub_11BC0();
    layer = [(NTKZeusAnalogNumeralsView *)self->_numeralsView layer];
    [layer setActions:v14];

    contentView2 = [(NTKZeusAnalogFaceView *)self contentView];
    [contentView2 addSubview:self->_numeralsView];

    v17 = [NTKZeusAnalogNumeralsView alloc];
    device3 = [(NTKZeusAnalogFaceView *)self device];
    palette2 = [(NTKZeusAnalogFaceView *)self palette];
    v20 = [(NTKZeusAnalogNumeralsView *)v17 initWithDevice:device3 palette:palette2 style:self->_style density:self->_density];
    numeralsTransitionView = self->_numeralsTransitionView;
    self->_numeralsTransitionView = v20;

    v22 = sub_11BC0();
    layer2 = [(NTKZeusAnalogNumeralsView *)self->_numeralsTransitionView layer];
    [layer2 setActions:v22];

    [(NTKZeusAnalogNumeralsView *)self->_numeralsTransitionView setAlpha:0.0];
    contentView3 = [(NTKZeusAnalogFaceView *)self contentView];
    [contentView3 addSubview:self->_numeralsTransitionView];
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
    contentView4 = [(NTKZeusAnalogFaceView *)self contentView];
    [contentView4 addSubview:self->_logoUpperView];
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
    contentView5 = [(NTKZeusAnalogFaceView *)self contentView];
    [contentView5 addSubview:self->_logoLowerView];
  }

  if (!self->_cornerView)
  {
    v40 = [NTKRoundedCornerOverlayView alloc];
    [(NTKZeusAnalogFaceView *)self bounds];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    device4 = [(NTKZeusAnalogFaceView *)self device];
    v50 = [v40 initWithFrame:device4 forDeviceCornerRadius:{v42, v44, v46, v48}];
    cornerView = self->_cornerView;
    self->_cornerView = v50;

    v52 = self->_cornerView;
    contentView6 = [(NTKZeusAnalogFaceView *)self contentView];
    [(NTKZeusAnalogFaceView *)self insertSubview:v52 aboveSubview:contentView6];
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

- (id)_numeralsCompositingFilterForPalette:(id)palette
{
  if (([palette bleed] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v3 = kCAFilterMultiplyBlendMode;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_applyPaletteToNumerals:(id)numerals
{
  numeralsCopy = numerals;
  v5 = [(NTKZeusAnalogFaceView *)self _numeralsCompositingFilterForPalette:numeralsCopy];
  numeralsView = self->_numeralsView;
  v7 = *&CGAffineTransformIdentity.c;
  v9[0] = *&CGAffineTransformIdentity.a;
  v9[1] = v7;
  v9[2] = *&CGAffineTransformIdentity.tx;
  [(NTKZeusAnalogNumeralsView *)numeralsView setTransform:v9];
  layer = [(NTKZeusAnalogNumeralsView *)self->_numeralsView layer];
  [layer setCompositingFilter:v5];

  [(NTKZeusAnalogNumeralsView *)self->_numeralsView setAlpha:1.0];
  [(NTKZeusAnalogNumeralsView *)self->_numeralsView setPalette:numeralsCopy];

  [(NTKZeusAnalogNumeralsView *)self->_numeralsView setDensity:self->_density];
  [(NTKZeusAnalogNumeralsView *)self->_numeralsView setStyle:self->_style];
  [(NTKZeusAnalogNumeralsView *)self->_numeralsView setStatusIndicatorVisible:self->_showingStatus];
  [(NTKZeusAnalogNumeralsView *)self->_numeralsTransitionView setAlpha:0.0];
}

- (void)_numeralsPaletteTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette
{
  toPaletteCopy = toPalette;
  paletteCopy = palette;
  v10 = [(NTKZeusAnalogFaceView *)self _numeralsCompositingFilterForPalette:paletteCopy];
  v11 = [(NTKZeusAnalogFaceView *)self _numeralsCompositingFilterForPalette:toPaletteCopy];
  if (fraction >= 0.5)
  {
    v12 = toPaletteCopy;
  }

  else
  {
    v12 = paletteCopy;
  }

  if (fraction >= 0.5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  [(NTKZeusAnalogNumeralsView *)self->_numeralsView setPalette:v12];

  layer = [(NTKZeusAnalogNumeralsView *)self->_numeralsView layer];
  [layer setCompositingFilter:v13];

  CLKMapFractionIntoRange();
  v16 = v15;
  CLKCompressFraction();
  if (fraction >= 0.5)
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

- (double)_lowerComplicationVerticalOffsetForStyle:(unint64_t)style
{
  device = [(NTKZeusAnalogFaceView *)self device];
  sub_14DA4(device, v7);
  v5 = *&v7[style + 9];

  return v5;
}

- (CGRect)_lowerComplicationFrameForStyle:(unint64_t)style
{
  [(NTKZeusAnalogFaceView *)self _lowerComplicationVerticalOffsetForStyle:style];
  v5 = v4;
  [(NTKZeusAnalogFaceView *)self bounds];
  v7 = v6 * 0.5;
  [(NTKZeusAnalogFaceView *)self bounds];
  v9 = v5 + v8 * 0.5;
  device = [(NTKZeusAnalogFaceView *)self device];
  sub_14DA4(device, v17);
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

- (CGRect)_upperComplicationFrameForStyle:(unint64_t)style
{
  device = [(NTKZeusAnalogFaceView *)self device];
  [(NTKZeusAnalogFaceView *)self bounds];
  device2 = [(NTKZeusAnalogFaceView *)self device];
  sub_14DA4(device2, v18);

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
  device = [(NTKZeusAnalogFaceView *)self device];
  v4 = [(NTKZeusAnalogFaceView *)self optionForCustomEditMode:13 slot:0];
  -[NTKZeusAnalogFaceView _lowerComplicationFrameForStyle:](self, "_lowerComplicationFrameForStyle:", [v4 style]);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  -[NTKZeusAnalogFaceView _upperComplicationFrameForStyle:](self, "_upperComplicationFrameForStyle:", [v4 style]);
  v13 = [NTKComplicationLayoutRule layoutRuleForDevice:device withReferenceFrame:1 horizontalLayout:1 verticalLayout:?];
  v14 = [NTKComplicationLayoutRule layoutRuleForDevice:device withReferenceFrame:3 horizontalLayout:3 verticalLayout:v6, v8, v10, v12];
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

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  complicationCopy = complication;
  slotCopy = slot;
  v9 = NTKComplicationSlotBottom;
  if (([slotCopy isEqualToString:NTKComplicationSlotBottom] & 1) != 0 || objc_msgSend(slotCopy, "isEqualToString:", NTKComplicationSlotTop))
  {
    if ([slotCopy isEqualToString:v9])
    {
      v10 = [NTKZeusComplicationBackgroundView alloc];
      device = [(NTKZeusAnalogFaceView *)self device];
      v12 = [(NTKZeusComplicationBackgroundView *)v10 initWithDevice:device];
    }

    else
    {
      v12 = 0;
    }

    v13 = +[NTKZeusComplicationView viewForComplicationType:backgroundView:](NTKZeusComplicationView, "viewForComplicationType:backgroundView:", [complicationCopy complicationType], v12);
    if (![v13 conformsToProtocol:&OBJC_PROTOCOL___NTKZeudleComplicationDisplay])
    {
      goto LABEL_14;
    }

    v14 = v13;
    v21 = [(NTKZeusAnalogFaceView *)self optionForCustomEditMode:13 slot:0];
    [v14 setStyle:{objc_msgSend(v21, "style")}];
    palette = [(NTKZeusAnalogFaceView *)self palette];
    pigmentEditOption = [palette pigmentEditOption];
    identifier = [pigmentEditOption identifier];
    if ([identifier isEqual:ntk_zeus_blanc])
    {
      editing = [(NTKZeusAnalogFaceView *)self editing];

      if (editing)
      {
        palette2 = [(NTKZeusAnalogFaceView *)self palette];
        [v14 blancEditModeApplyPalette:palette2];
LABEL_13:

LABEL_14:
        goto LABEL_15;
      }
    }

    else
    {
    }

    palette2 = [(NTKZeusAnalogFaceView *)self palette];
    [v14 applyPalette:palette2];
    goto LABEL_13;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (BOOL)_fadesComplicationSlot:(id)slot inEditMode:(int64_t)mode
{
  v6 = mode == 13 || mode == 11;
  if ([slot isEqualToString:NTKComplicationSlotTop] && mode == 1)
  {
    return 1;
  }

  return v6;
}

- (void)_updateDateComplicationPositionIfNecessary
{
  [(NTKZeusAnalogFaceView *)self _loadLayoutRules];
  delegate = [(NTKZeusAnalogFaceView *)self delegate];
  [delegate faceViewWantsComplicationKeylineFramesReloaded];
}

+ (id)_supportedComplicationSlots
{
  v4[0] = NTKComplicationSlotBottom;
  v4[1] = NTKComplicationSlotTop;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (CGRect)_frameForComplicationDisplayWrapper:(id)wrapper inSlot:(id)slot
{
  wrapperCopy = wrapper;
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotTop] && (p_upperComplicationOverrideFrame = &self->_upperComplicationOverrideFrame, !CGRectIsNull(self->_upperComplicationOverrideFrame)) || objc_msgSend(slotCopy, "isEqualToString:", NTKComplicationSlotBottom) && (p_upperComplicationOverrideFrame = &self->_lowerComplicationOverrideFrame, !CGRectIsNull(self->_lowerComplicationOverrideFrame)))
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
    [(NTKZeusAnalogFaceView *)&v21 _frameForComplicationDisplayWrapper:wrapperCopy inSlot:slotCopy];
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

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v65.receiver = self;
  v65.super_class = NTKZeusAnalogFaceView;
  [(NTKZeusAnalogFaceView *)&v65 _applyOption:optionCopy forCustomEditMode:mode slot:slot];
  timeView = [(NTKZeusAnalogFaceView *)self timeView];
  switch(mode)
  {
    case 10:
      palette = [(NTKZeusAnalogFaceView *)self palette];
      [(NTKZeusAnalogFaceView *)self _applyPaletteToNumerals:palette];

      logoUpperView = self->_logoUpperView;
      palette2 = [(NTKZeusAnalogFaceView *)self palette];
      bottomComplication = [palette2 bottomComplication];
      [(UIImageView *)logoUpperView setTintColor:bottomComplication];

      logoLowerView = self->_logoLowerView;
      palette3 = [(NTKZeusAnalogFaceView *)self palette];
      bottomComplication2 = [palette3 bottomComplication];
      [(UIImageView *)logoLowerView setTintColor:bottomComplication2];

      palette4 = [(NTKZeusAnalogFaceView *)self palette];
      -[NTKZeusAnalogFaceView _setStatusBarIconShadowNeeded:](self, "_setStatusBarIconShadowNeeded:", [palette4 wantsStatusBarIconShadow]);

      backgroundView = self->_backgroundView;
      palette5 = [(NTKZeusAnalogFaceView *)self palette];
      [(NTKZeusAnalogBackgroundView *)backgroundView applyPalette:palette5];

      secondHandView = [timeView secondHandView];
      palette6 = [(NTKZeusAnalogFaceView *)self palette];
      secondHand = [palette6 secondHand];
      [secondHandView setColor:secondHand];

      density = self->_density;
      secondHandView2 = [timeView secondHandView];
      [(NTKZeusAnalogFaceView *)self _secondHandAlphaForDensity:density isEditing:0];
      v41 = v40;
      palette7 = [(NTKZeusAnalogFaceView *)self palette];
      secondHandAlpha = [palette7 secondHandAlpha];
      [secondHandAlpha floatValue];
      [secondHandView2 setAlpha:v41 * v44];

      hourHandView = [timeView hourHandView];
      palette8 = [(NTKZeusAnalogFaceView *)self palette];
      hourHand = [palette8 hourHand];
      [hourHandView setColor:hourHand];

      minuteHandView = [timeView minuteHandView];
      palette9 = [(NTKZeusAnalogFaceView *)self palette];
      minuteHand = [palette9 minuteHand];
      [minuteHandView setColor:minuteHand];

      palette10 = [(NTKZeusAnalogFaceView *)self palette];
      handInlay = [palette10 handInlay];
      [timeView setInlayColor:handInlay];

      if (self->_isHandsVisibleInColorEditing && [(NTKZeusAnalogFaceView *)self fromEditMode]== &dword_8 + 2)
      {
        [timeView setAlpha:1.0];
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
            display = [v58 display];
            palette11 = [(NTKZeusAnalogFaceView *)self palette];
            [display applyPalette:palette11];

            v57 = v57 + 1;
          }

          while (v55 != v57);
          v55 = [v53 countByEnumeratingWithState:&v61 objects:v66 count:16];
        }

        while (v55);
      }

      break;
    case 11:
      self->_density = [optionCopy density];
      secondHandView3 = [timeView secondHandView];
      [(NTKZeusAnalogFaceView *)self _secondHandAlphaForDensity:self->_density isEditing:self->_isEditing];
      v17 = v16;
      palette12 = [(NTKZeusAnalogFaceView *)self palette];
      secondHandAlpha2 = [palette12 secondHandAlpha];
      [secondHandAlpha2 floatValue];
      [secondHandView3 setAlpha:v17 * v20];

      v21 = self->_density;
      palette13 = [(NTKZeusAnalogFaceView *)self palette];
      [palette13 setDensity:v21];

      palette14 = [(NTKZeusAnalogFaceView *)self palette];
      handInlay2 = [palette14 handInlay];
      [timeView setInlayColor:handInlay2];

      [(NTKZeusAnalogNumeralsView *)self->_numeralsView setDensity:self->_density];
      break;
    case 13:
      style = [optionCopy style];
      self->_style = style;
      v11 = [(NTKZeusAnalogFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBottom];
      display2 = [v11 display];
      [display2 setStyle:style];

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

- (void)_configureForEditMode:(int64_t)mode
{
  v13.receiver = self;
  v13.super_class = NTKZeusAnalogFaceView;
  [(NTKZeusAnalogFaceView *)&v13 _configureForEditMode:?];
  self->_isEditing = mode != 0;
  if (!mode)
  {
    density = self->_density;
    timeView = [(NTKZeusAnalogFaceView *)self timeView];
    secondHandView = [timeView secondHandView];
    [(NTKZeusAnalogFaceView *)self _secondHandAlphaForDensity:density isEditing:self->_isEditing];
    v9 = v8;
    palette = [(NTKZeusAnalogFaceView *)self palette];
    secondHandAlpha = [palette secondHandAlpha];
    [secondHandAlpha floatValue];
    [secondHandView setAlpha:v9 * v12];
  }
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v52.receiver = self;
  v52.super_class = NTKZeusAnalogFaceView;
  [NTKZeusAnalogFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  density = self->_density;
  [(NTKZeusAnalogFaceView *)self _secondHandAlphaForDensity:density isEditing:mode != 0];
  [(NTKZeusAnalogFaceView *)self _secondHandAlphaForDensity:density isEditing:editMode != 0];
  [(NTKZeusAnalogFaceView *)self _handAlphaForEditing:mode != 0];
  [(NTKZeusAnalogFaceView *)self _handAlphaForEditing:editMode != 0];
  [(NTKZeusAnalogFaceView *)self _handAlphaForEditing:mode != 0];
  [(NTKZeusAnalogFaceView *)self _handAlphaForEditing:editMode != 0];
  palette = [(NTKZeusAnalogFaceView *)self palette];
  [palette isNoir];

  timeView = [(NTKZeusAnalogFaceView *)self timeView];
  [(NTKZeusAnalogFaceView *)self _secondHandAlphaForDensity:density isEditing:0];
  v13 = v12;
  secondHandView = [timeView secondHandView];
  CLKInterpolateBetweenFloatsClipped();
  v16 = v13 * v15;
  palette2 = [(NTKZeusAnalogFaceView *)self palette];
  secondHandAlpha = [palette2 secondHandAlpha];
  [secondHandAlpha floatValue];
  [secondHandView setAlpha:v16 * v19];

  CLKInterpolateBetweenFloatsClipped();
  [timeView setAlpha:?];
  numeralsView = self->_numeralsView;
  CLKInterpolateBetweenFloatsClipped();
  [(NTKZeusAnalogNumeralsView *)numeralsView setAlpha:?];
  palette3 = [(NTKZeusAnalogFaceView *)self palette];
  pigmentEditOption = [palette3 pigmentEditOption];
  identifier = [pigmentEditOption identifier];
  v24 = [identifier isEqual:ntk_zeus_blanc];

  if (v24)
  {
    v25 = self->_numeralsView;
    v26 = [(NTKZeusAnalogFaceView *)self _blancNumeralsColorForEditMode:mode];
    v27 = [(NTKZeusAnalogFaceView *)self _blancNumeralsColorForEditMode:editMode];
    v28 = NTKInterpolateBetweenColors();
    [(NTKZeusAnalogNumeralsView *)v25 setTintColor:v28];

    logoUpperView = self->_logoUpperView;
    v30 = [(NTKZeusAnalogFaceView *)self _blancNumeralsColorForEditMode:mode];
    v31 = [(NTKZeusAnalogFaceView *)self _blancNumeralsColorForEditMode:editMode];
    v32 = NTKInterpolateBetweenColors();
    [(UIImageView *)logoUpperView setTintColor:v32];

    logoLowerView = self->_logoLowerView;
    v34 = [(NTKZeusAnalogFaceView *)self _blancNumeralsColorForEditMode:mode];
    v35 = [(NTKZeusAnalogFaceView *)self _blancNumeralsColorForEditMode:editMode];
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
          display = [v42 display];

          [display applyTransitionFraction:mode fromMode:editMode toMode:fraction];
        }

        v39 = [v37 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v39);
    }
  }

  contentView = [(NTKZeusAnalogFaceView *)self contentView];
  [(NTKZeusAnalogFaceView *)self _numbersAlphaForEditMode:mode];
  [(NTKZeusAnalogFaceView *)self _numbersAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [contentView setAlpha:?];

  backgroundView = self->_backgroundView;
  [(NTKZeusAnalogFaceView *)self _backgroundAlphaForEditMode:mode];
  [(NTKZeusAnalogFaceView *)self _backgroundAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKZeusAnalogBackgroundView *)backgroundView setAlpha:?];
  if (fraction > 0.5)
  {
    origin = CGRectNull.origin;
    size = CGRectNull.size;
    self->_upperComplicationOverrideFrame.origin = CGRectNull.origin;
    self->_upperComplicationOverrideFrame.size = size;
    self->_lowerComplicationOverrideFrame.origin = origin;
    self->_lowerComplicationOverrideFrame.size = size;
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  v118.receiver = self;
  v118.super_class = NTKZeusAnalogFaceView;
  [(NTKZeusAnalogFaceView *)&v118 _applyTransitionFraction:optionCopy fromOption:toOptionCopy toOption:mode forCustomEditMode:slot slot:fraction];
  switch(mode)
  {
    case 10:
      palette = [(NTKZeusAnalogFaceView *)self palette];
      v32 = [palette copy];

      v112 = optionCopy;
      pigmentEditOption = [optionCopy pigmentEditOption];
      [v32 setPigmentEditOption:pigmentEditOption];

      palette2 = [(NTKZeusAnalogFaceView *)self palette];
      v35 = [palette2 copy];

      v111 = toOptionCopy;
      pigmentEditOption2 = [toOptionCopy pigmentEditOption];
      [v35 setPigmentEditOption:pigmentEditOption2];

      -[NTKZeusAnalogFaceView _setStatusBarIconShadowNeeded:](self, "_setStatusBarIconShadowNeeded:", ([v35 wantsStatusBarIconShadow] | objc_msgSend(v32, "wantsStatusBarIconShadow")) & 1);
      [(NTKZeusAnalogBackgroundView *)self->_backgroundView applyTransitionFraction:v32 fromPalette:v35 toPalette:fraction];
      [(NTKZeusAnalogFaceView *)self _numeralsPaletteTransitionFraction:v32 fromPalette:v35 toPalette:fraction];
      logoUpperView = self->_logoUpperView;
      bottomComplication = [v32 bottomComplication];
      bottomComplication2 = [v35 bottomComplication];
      v40 = NTKInterpolateBetweenColors();
      [(UIImageView *)logoUpperView setTintColor:v40];

      logoLowerView = self->_logoLowerView;
      bottomComplication3 = [v32 bottomComplication];
      bottomComplication4 = [v35 bottomComplication];
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
      timeView = [(NTKZeusAnalogFaceView *)self timeView];
      secondHandView = [timeView secondHandView];
      secondHand = [v32 secondHand];
      secondHand2 = [v35 secondHand];
      v51 = NTKInterpolateBetweenColors();
      [secondHandView setColor:v51];

      [(NTKZeusAnalogFaceView *)self _secondHandAlphaForDensity:self->_density isEditing:0];
      v53 = v52;
      secondHandView2 = [timeView secondHandView];
      secondHandAlpha = [v32 secondHandAlpha];
      [secondHandAlpha floatValue];
      secondHandAlpha2 = [v35 secondHandAlpha];
      [secondHandAlpha2 floatValue];
      CLKInterpolateBetweenFloatsClipped();
      [secondHandView2 setAlpha:v53 * v57];

      hourHandView = [timeView hourHandView];
      hourHand = [v32 hourHand];
      hourHand2 = [v35 hourHand];
      v61 = NTKInterpolateBetweenColors();
      [hourHandView setColor:v61];

      minuteHandView = [timeView minuteHandView];
      minuteHand = [v32 minuteHand];
      minuteHand2 = [v35 minuteHand];
      v65 = NTKInterpolateBetweenColors();
      [minuteHandView setColor:v65];

      handInlay = [v32 handInlay];
      handInlay2 = [v35 handInlay];
      v68 = NTKInterpolateBetweenColors();

      v110 = timeView;
      [timeView setInlayColor:v68];
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
            display = [v74 display];

            [display applyTransitionFraction:v32 fromPalette:v35 toPalette:fraction];
          }

          v71 = [v69 countByEnumeratingWithState:&v113 objects:v119 count:16];
        }

        while (v71);
      }

      toOptionCopy = v111;
      optionCopy = v112;
      break;
    case 11:
      density = [optionCopy density];
      density2 = [toOptionCopy density];
      if (fraction >= 0.5)
      {
        v76 = (1.0 - (fraction * 2.0 + -1.0)) * -0.1 + 1.0;
        p_numeralsView = &self->_numeralsView;
        [(NTKZeusAnalogNumeralsView *)self->_numeralsView setAlpha:?];
        numeralsView = self->_numeralsView;
        CGAffineTransformMakeScale(&v117, v76, v76);
        [(NTKZeusAnalogNumeralsView *)numeralsView setTransform:&v117];
        [(NTKZeusAnalogNumeralsView *)self->_numeralsView setDensity:density2];
        palette3 = [(NTKZeusAnalogFaceView *)self palette];
        pigmentEditOption3 = [palette3 pigmentEditOption];
        identifier = [pigmentEditOption3 identifier];
        v81 = [identifier isEqual:ntk_zeus_blanc];

        if (!v81)
        {
LABEL_22:
          timeView2 = [(NTKZeusAnalogFaceView *)self timeView];
          palette4 = [(NTKZeusAnalogFaceView *)self palette];
          v87 = [palette4 handInlayForDensity:density];
          palette5 = [(NTKZeusAnalogFaceView *)self palette];
          v89 = [palette5 handInlayForDensity:density2];
          v90 = NTKInterpolateBetweenColors();

          [timeView2 setInlayColor:v90];
          break;
        }
      }

      else
      {
        p_numeralsView = &self->_numeralsView;
        [(NTKZeusAnalogNumeralsView *)self->_numeralsView setAlpha:1.0 - (fraction + fraction)];
        v26 = self->_numeralsView;
        CGAffineTransformMakeScale(&v117, (fraction + fraction) * -0.1 + 1.0, (fraction + fraction) * -0.1 + 1.0);
        [(NTKZeusAnalogNumeralsView *)v26 setTransform:&v117];
        [(NTKZeusAnalogNumeralsView *)self->_numeralsView setDensity:density];
        palette6 = [(NTKZeusAnalogFaceView *)self palette];
        pigmentEditOption4 = [palette6 pigmentEditOption];
        identifier2 = [pigmentEditOption4 identifier];
        v30 = [identifier2 isEqual:ntk_zeus_blanc];

        if ((v30 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v82 = *p_numeralsView;
      palette7 = [(NTKZeusAnalogFaceView *)self palette];
      editMode = [palette7 editMode];
      [(NTKZeusAnalogNumeralsView *)v82 setTintColor:editMode];

      goto LABEL_22;
    case 13:
      style = [optionCopy style];
      style2 = [toOptionCopy style];
      if (fraction >= 0.5)
      {
        v91 = (1.0 - (fraction * 2.0 + -1.0)) * -0.1 + 1.0;
        v16 = &self->_numeralsView;
        [(NTKZeusAnalogNumeralsView *)self->_numeralsView setAlpha:?];
        v92 = self->_numeralsView;
        CGAffineTransformMakeScale(&v117, v91, v91);
        [(NTKZeusAnalogNumeralsView *)v92 setTransform:&v117];
        [(NTKZeusAnalogNumeralsView *)self->_numeralsView setStyle:style2];
        palette8 = [(NTKZeusAnalogFaceView *)self palette];
        pigmentEditOption5 = [palette8 pigmentEditOption];
        identifier3 = [pigmentEditOption5 identifier];
        v96 = [identifier3 isEqual:ntk_zeus_blanc];

        v22 = style2;
        if (!v96)
        {
LABEL_25:
          v100 = [(NTKZeusAnalogFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBottom];
          display2 = [v100 display];
          [display2 setStyle:v22];

          [(NTKZeusAnalogFaceView *)self _upperComplicationFrameForStyle:style];
          [(NTKZeusAnalogFaceView *)self _upperComplicationFrameForStyle:style2];
          CLKInterpolateBetweenRects();
          self->_upperComplicationOverrideFrame.origin.x = v102;
          self->_upperComplicationOverrideFrame.origin.y = v103;
          self->_upperComplicationOverrideFrame.size.width = v104;
          self->_upperComplicationOverrideFrame.size.height = v105;
          [(NTKZeusAnalogFaceView *)self _lowerComplicationFrameForStyle:style, *&fraction];
          [(NTKZeusAnalogFaceView *)self _lowerComplicationFrameForStyle:style2];
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
        [(NTKZeusAnalogNumeralsView *)self->_numeralsView setAlpha:1.0 - (fraction + fraction)];
        v17 = self->_numeralsView;
        CGAffineTransformMakeScale(&v117, (fraction + fraction) * -0.1 + 1.0, (fraction + fraction) * -0.1 + 1.0);
        [(NTKZeusAnalogNumeralsView *)v17 setTransform:&v117];
        [(NTKZeusAnalogNumeralsView *)self->_numeralsView setStyle:style];
        palette9 = [(NTKZeusAnalogFaceView *)self palette];
        pigmentEditOption6 = [palette9 pigmentEditOption];
        identifier4 = [pigmentEditOption6 identifier];
        v21 = [identifier4 isEqual:ntk_zeus_blanc];

        v22 = style;
        if ((v21 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v97 = *v16;
      palette10 = [(NTKZeusAnalogFaceView *)self palette];
      editMode2 = [palette10 editMode];
      [(NTKZeusAnalogNumeralsView *)v97 setTintColor:editMode2];

      goto LABEL_25;
  }
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v14.receiver = self;
  v14.super_class = NTKZeusAnalogFaceView;
  [(NTKZeusAnalogFaceView *)&v14 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 13 || mode == 11)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v13, 0, sizeof(v13));
    CGAffineTransformMakeScale(&v13, v7, v7);
    contentView = [(NTKZeusAnalogFaceView *)self contentView];
    v12 = v13;
    [contentView setTransform:&v12];

    cornerView = self->_cornerView;
    v12 = v13;
    [(UIView *)cornerView setTransform:&v12];
  }

  if (self->_isHandsVisibleInColorEditing && [(NTKZeusAnalogFaceView *)self fromEditMode]== &dword_8 + 2)
  {
    palette = [(NTKZeusAnalogFaceView *)self palette];
    isNoir = [palette isNoir];

    if ((isNoir & 1) == 0)
    {
      [(NTKZeusAnalogNumeralsView *)self->_numeralsView setAlpha:NTKEditModeDimmedAlpha];
    }
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v16.receiver = self;
  v16.super_class = NTKZeusAnalogFaceView;
  [(NTKZeusAnalogFaceView *)&v16 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode != 1)
  {
    NTKScaleForRubberBandingFraction();
    memset(&v15, 0, sizeof(v15));
    CGAffineTransformMakeScale(&v15, v7, v7);
    NTKAlphaForRubberBandingFraction();
    v9 = v8;
    contentView = [(NTKZeusAnalogFaceView *)self contentView];
    [contentView setAlpha:v9];

    contentView2 = [(NTKZeusAnalogFaceView *)self contentView];
    v14 = v15;
    [contentView2 setTransform:&v14];

    cornerView = self->_cornerView;
    v14 = v15;
    [(UIView *)cornerView setTransform:&v14];
    if (mode == 10 && self->_isHandsVisibleInColorEditing)
    {
      timeView = [(NTKZeusAnalogFaceView *)self timeView];
      v14 = v15;
      [timeView setTransform:&v14];
      [timeView setAlpha:v9];
    }
  }
}

- (double)_secondHandAlphaForDensity:(unint64_t)density isEditing:(BOOL)editing
{
  result = 0.0;
  if (density == 3)
  {
    return 1.0;
  }

  return result;
}

- (double)_handAlphaForEditing:(BOOL)editing
{
  result = NTKEditModeDimmedAlpha;
  if (!editing)
  {
    return 1.0;
  }

  return result;
}

- (double)_numbersAlphaForEditMode:(int64_t)mode
{
  result = 0.95;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (id)_blancNumeralsColorForEditMode:(int64_t)mode
{
  if (mode <= 0xD && ((1 << mode) & 0x2802) != 0)
  {
    palette = [(NTKZeusAnalogFaceView *)self palette];
    editMode = [palette editMode];
  }

  else
  {
    palette = [(NTKZeusAnalogFaceView *)self palette];
    editMode = [palette dial];
  }

  v6 = editMode;
  v7 = editMode;
  if (mode > 0xD || ((1 << mode) & 0x2802) == 0)
  {

LABEL_11:
    return v6;
  }

  if (((1 << mode) & 0x2802) != 0)
  {
    goto LABEL_11;
  }

  return v6;
}

- (id)complicationColorForBlancEditMode:(int64_t)mode
{
  palette = [(NTKZeusAnalogFaceView *)self palette];
  v5 = palette;
  if (mode == 1)
  {
    [palette editMode];
  }

  else
  {
    [palette bottomComplication];
  }
  v6 = ;

  return v6;
}

- (double)_backgroundAlphaForEditMode:(int64_t)mode
{
  v4 = mode == 11 || mode == 13 || mode == 1;
  result = NTKEditModeDimmedAlpha;
  if (!v4)
  {
    return 1.0;
  }

  return result;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  v4 = &off_47F80;
  if (options != 13)
  {
    v4 = 0;
  }

  if (options == 11)
  {
    return &off_47F68;
  }

  else
  {
    return v4;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  if (!qword_58860)
  {
    v10 = objc_opt_new();
    v11 = qword_58860;
    qword_58860 = v10;
  }

  v12 = [optionsCopy objectForKeyedSubscript:&off_47568];
  palette = [(NTKZeusAnalogFaceView *)self palette];
  palette2 = [(NTKZeusAnalogFaceView *)self palette];
  pigmentEditOption = [v12 pigmentEditOption];
  [palette2 setPigmentEditOption:pigmentEditOption];

  if (mode == 13)
  {
    v39 = optionCopy;
    configuration = [palette configuration];
    uniqueId = [configuration uniqueId];
    v42 = [NSString stringWithFormat:@"%@-%@", v39, uniqueId];

    v21 = [qword_58860 objectForKey:v42];
    if (!v21)
    {
      v21 = [palette typefaceSwatchImageForStyle:{objc_msgSend(v39, "style")}];
      [qword_58860 setObject:v21 forKey:v42];
    }
  }

  else if (mode == 11)
  {
    v44 = optionCopy;
    v16 = optionCopy;
    v17 = [optionsCopy objectForKeyedSubscript:&off_47550];
    configuration2 = [palette configuration];
    uniqueId2 = [configuration2 uniqueId];
    v20 = [NSString stringWithFormat:@"%@-%@-%@", v16, v17, uniqueId2];

    v21 = [qword_58860 objectForKey:v20];
    if (!v21)
    {
      v22 = [NTKZeusAnalogFaceView alloc];
      device = [(NTKZeusAnalogFaceView *)self device];
      v24 = [(NTKZeusAnalogFaceView *)v22 initWithFaceStyle:14 forDevice:device clientIdentifier:0];

      device2 = [(NTKZeusAnalogFaceView *)self device];
      [device2 screenBounds];
      [(NTKZeusAnalogFaceView *)v24 setFrame:?];

      [(NTKZeusAnalogFaceView *)v24 _loadSnapshotContentViews];
      [(NTKZeusAnalogFaceView *)v24 setOption:v16 forCustomEditMode:11 slot:0];
      [(NTKZeusAnalogFaceView *)v24 setOption:v17 forCustomEditMode:13 slot:0];
      [(NTKZeusAnalogFaceView *)v24 setOption:v12 forCustomEditMode:10 slot:0];
      v26 = NTKIdealizedDate();
      [(NTKZeusAnalogFaceView *)v24 setOverrideDate:v26 duration:0.0];

      v27 = [NTKZeusComplicationView viewForComplicationType:11];
      [v27 applyPalette:palette];
      [v27 setPhaseNumber:90 hemisphere:0];
      [(NTKZeusAnalogFaceView *)v24 addSubview:v27];
      device3 = [(NTKZeusAnalogFaceView *)self device];
      sub_14DA4(device3, v49);
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

    optionCopy = v44;
  }

  else
  {
    v45.receiver = self;
    v45.super_class = NTKZeusAnalogFaceView;
    v21 = [(NTKZeusAnalogFaceView *)&v45 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
  }

  return v21;
}

- (double)_verticalPaddingForStatusBar
{
  device = [(NTKZeusAnalogFaceView *)self device];
  CLKValueForDeviceMetrics();
  v4 = v3;

  return v4;
}

- (void)_setStatusBarIconShadowNeeded:(BOOL)needed
{
  if (self->_isStatusBarIconShadowNeeded != needed)
  {
    v7[3] = v3;
    v7[4] = v4;
    self->_isStatusBarIconShadowNeeded = needed;
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

- (void)nominalAnimationStart:(id)start forHandView:(id)view
{
  startCopy = start;
  viewCopy = view;
  timeView = [(NTKZeusAnalogFaceView *)self timeView];
  minuteHandView = [timeView minuteHandView];

  if (minuteHandView == viewCopy)
  {
    backgroundView = self->_backgroundView;
    [viewCopy zRotation];
    [(NTKZeusAnalogBackgroundView *)backgroundView applyRotation:?];
    [(NTKZeusAnalogBackgroundView *)self->_backgroundView applyAnimation:startCopy];
  }
}

- (void)nominalAnimationEndForHandView:(id)view
{
  viewCopy = view;
  timeView = [(NTKZeusAnalogFaceView *)self timeView];
  minuteHandView = [timeView minuteHandView];

  if (minuteHandView == viewCopy)
  {
    backgroundView = self->_backgroundView;

    [(NTKZeusAnalogBackgroundView *)backgroundView cancelAnimation];
  }
}

- (void)overrideZRotation:(double)rotation forHandView:(id)view
{
  viewCopy = view;
  timeView = [(NTKZeusAnalogFaceView *)self timeView];
  minuteHandView = [timeView minuteHandView];

  if (minuteHandView == viewCopy)
  {
    backgroundView = self->_backgroundView;

    [(NTKZeusAnalogBackgroundView *)backgroundView applyRotation:rotation];
  }
}

- (void)overrideAnimationApplier:(double)applier zRotation:(double)rotation forHandView:(id)view
{
  viewCopy = view;
  timeView = [(NTKZeusAnalogFaceView *)self timeView];
  minuteHandView = [timeView minuteHandView];

  if (minuteHandView == viewCopy)
  {
    backgroundView = self->_backgroundView;

    [(NTKZeusAnalogBackgroundView *)backgroundView applyRotation:rotation];
  }
}

@end